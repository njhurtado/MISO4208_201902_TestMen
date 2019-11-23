const fs = require("fs");
let shell = require("shelljs");
const { exec } = require('child_process');
const cron = require("node-cron");
const express = require("express");
//let nodemailer = require("nodemailer");
const dbConfig = require('./config/database.config.js');
const mongoose = require('mongoose');
const srvS3=require('./s3manager');
const fct = require('./lectorpromesa.js');
const consParam = require('./leerParametros.js');
//https://www.npmjs.com/package/convert-csv-to-json


Execution = require('./models/execution.model.js');
Test = require('./models/test.model.js');
Param = require('./models/param.model.js');
File = require('./models/file.model.js');
Result = require('./models/result.model.js');
const STATE_REGISTER='REGISTER';
const STATE_EXECUTED='EXECUTED';
const STATE_PENDING='PENDING';
const PARAM_SEMILLA='SEMILLA';
const PARAM_TIEMPO_EJECCION='TIEMPO_EJECCION';

app = express();


function reemplazarDatos(filename, valor1, valor2) {
  let promise = fct.reemplazarValores(filename, valor1, valor2);
  return promise.then(result => {
      console.log(result);
      return result
  });
}

/*var task = cron.schedule('* * * * *', () => {
	console.log('Printing this line every minute in the terminal');
});*/
// To backup a database
var task=cron.schedule("*/2 * * * * *", function() {

  console.log(' worker RANDOM');
  Execution.findOneAndUpdate(    
    { state:STATE_REGISTER, 
      test_type: "RANDOM",
      //test_mode: "HEADLESS",
      app_type: "MOVIL"}, //Register     Executed
    { $set: { state: STATE_PENDING } },      
    {
       returnNewDocument: true
    }   
  ).then(exec1 => {
    var pathSript;
    if(exec1){
      console.log("-execs-"+exec1);
      //Leer valores para tiempo de ejecución y semilla
      var tiempoEjecucion = 60000;
      var semilla = 1234;
      var reemplazar = false;
      let sem = consParam.consultarValorParametro(exec1.test_id, PARAM_SEMILLA);
      let tEjec = consParam.consultarValorParametro(exec1.test_id, PARAM_TIEMPO_EJECCION);
      console.log("semilla ->"+sem);
      console.log("semilla ->"+sem);
      if(sem) {
        semilla = sem;
      } 
      if(tEjec) {
        tiempoEjecucion = tEjec;
      }       
      reemplazarDatos("./plantilla-gremlins-test.js", semilla, tiempoEjecucion).then(function (textoFinal){
        fs.writeFile("./test/gremlins-test.js", textoFinal, function(err) {
            // If an error occurred, show it and return
            if(err) return console.error(err);
            // Successfully wrote to the file!
        }); 
      });
      
      
      //consulta el test para obtener el script
      Test.findById(exec1.test_id, function (err, test) {
          if(err) {
            return console.log(err);
        }
        //pathSript="./cypress/integration/"+exec1.test_id+".spec.js";
        pathSript="./test/gremlins-test.js"
        //console.log("-------------------------------------------------------------------------");
        var contentFileBody=unescape(test.script).replace(new RegExp('\\\\r\\\\n', 'g'),'\n');
        contentFileBody=contentFileBody.replace(new RegExp('\\\\\\n', 'g'),'\n');
        contentFileBody=contentFileBody.replace(new RegExp('\\\\', 'g'),'');
        
        //var contentFile=unescape(addScrenErro);
        //console.log(contentFile);
        if(reemplazar) {
          //Si no existe configuración sobreescribe el archivo local con el que se encuentr en base de datos
          fs.writeFile(pathSript,contentFileBody, function(err) {
            if(err) {
                return console.log(err);
              }
          //  console.log(contentFileBody);
          }); 
        }

        console.log("The file ./test/gremlins-test.js was saved!");
      
        var pathTest='npm test';
        exec(pathTest, (err, stdout, stderr) => {
          if (err) {
            // node couldn't execute the command
            console.log("Fails execution of Random");
            Execution.updateOne({ _id: exec1._id }, { state: STATE_REGISTER }).then(u=>{
              console.log("Execution id:" +exec1._id+".spec.js Failed.");
            });
            return;
          }

          //Se comprime el archivo allure report
          pathTest="zip -r " + exec1.test_id + "_reporte.zip . -i /allure-reports/allure/*";
        exec(pathTest, (err, stdout, stderr) => {
          if (err) {
            // node couldn't execute the command
            console.log("Fails to zip report files");
            return;
          }
          //se genera reporte en s3
          //srvS3.uploadFile('./cypress/reports/'+exec1.test_id+'.html','reports/'+exec1.test_id+'.html');
  
          shell.echo("S3 complete"); 
        
      
          shell.echo("Random complete");            
          Execution.updateOne({ _id: exec1._id }, { state: STATE_EXECUTED }).then(u=>{
            console.log("Execution id:" +exec1._id+" Executed.");
            
            var result = new Result({
              execution_id:exec1._id 
            }
            );
            // save the app and check for errors
            result.save(function (err) {
                if (err)
                console.log("Error registrando Resultado :" +err);     
                else
                console.log("Result id:" +result._id+" saved.");          
            });

            var file = new File({
              result_id:result._id,
              name: exec1.test_id,
              url:"https://tsmen.s3-us-west-1.amazonaws.com/reports/"+exec1.test_id+'.html'
            }
            );

            file.save(function (err) {
              if (err)
              console.log("Error registrando Archivo :" +err);   
              else
              console.log("File id:" +file._id+" saved.");              
          });
          });
          });
        });
      });
  }else{
    console.log("-----NO HAY PRUEBAS POR EJECUTAR------");
  }
  }).catch(err => {
    if(exec1.test_id )
    Execution.updateOne({ _id: exec1.test_id }, { state: STATE_REGISTER }).exec();

    console.log("---------WORKER ERROR------------")+err;
  });
});

task.start();
app.listen("3129");

mongoose.Promise = global.Promise;
// Connecting to the database
mongoose.connect(dbConfig.url, {
    useNewUrlParser: true,
    useFindAndModify: false,
    useUnifiedTopology: true 
}).then(() => {
    console.log("Successfully connected to the database"); 
}).catch(err => {
   
    console.log('Could not connect to the database. Exiting now...', err);
    process.exit();
});

//const addScrenErro='\r\n const addContext = require(\'mochawesome\/addContext\')\r\nCypress.on(\'test:after:run\', (test, runnable) => {\r\n    if (test.state === \'failed\') {\r\n    const screenshotFileName = `${runnable.parent.title} -- ${test.title} (failed).png`\r\n    addContext({ test }, `assets\/${Cypress.spec.name}\/${screenshotFileName}`)\r\n  }\r\n})';


