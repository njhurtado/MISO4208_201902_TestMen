const fs = require("fs");
let shell = require("shelljs");
const { exec } = require('child_process');
const cron = require("node-cron");
const express = require("express");
//let nodemailer = require("nodemailer");
const dbConfig = require('./config/database.config.js');
const mongoose = require('mongoose');
const srvS3=require('./s3manager');
const readline = require("readline");
const fct = require('./lectorpromesa.js');
const vrt = require('./manejador-vrt.js');
//https://www.npmjs.com/package/convert-csv-to-json
let csvToJson = require('convert-csv-to-json');


Execution = require('./models/execution.model.js');
Test = require('./models/test.model.js');
Param = require('./models/param.model.js');
File = require('./models/file.model.js');
Result = require('./models/result.model.js');
const STATE_REGISTER='REGISTER';
const STATE_EXECUTED='EXECUTED';
const STATE_PENDING='PENDING';

var config;

var configVrt = [
  { "before": "before1.png", "after": "after1.png", "result": "result1.png" },
  { "before": "before2.png", "after": "after2.png", "result": "result2.png" },
  { "before": "before3.png", "after": "after3.png", "result": "result3.png" }
]

app = express();


function descargarDatos(filename, cantidad) {
  let promise = fct.generardatos(filename, cantidad);
  return promise.then(result => {
      console.log(result);
      return result
  });
}

function reemplazarDatos(filename, valores) {
  let promise = fct.reemplazarValores(filename, valores);
  return promise.then(result => {
      console.log(result);
      return result
  });
}

function completarDatos(filename, valores, cantidad) {
  let promise = fct.completarValores(filename, valores, cantidad);
  return promise.then(result => {
      console.log(result);
      return result
  });
}

function consultarConfguracion(){
  let jsonconf = csvToJson.fieldDelimiter(',').getJsonFromCsv("./config.csv");
  var congig;
  for(let i=0; i<jsonconf.length;i++){
      config = jsonconf[i];
  }
  return config;
}


/*var task = cron.schedule('* * * * *', () => {
	console.log('Printing this line every minute in the terminal');
});*/
// To backup a database
var task=cron.schedule("*/2 * * * * *", function() {

  console.log(' worker bdt');
  Execution.findOneAndUpdate(    
    { state:STATE_REGISTER, 
      test_type: "BDT",
      test_mode: "HEADLESS",
      app_type: "WEB"}, //Register     Executed
    { $set: { state: STATE_PENDING } },      
    {
       returnNewDocument: true
    }   
  ).then(exec1 => {
    var pathSript;
    if(exec1){
      console.log("-execs-"+exec1);
      
      config = consultarConfguracion();
      console.log("nuevo ->" + config.nuevo);
      if(config.nuevo == 'true') {
          console.log("multiple ->" + config.multiple);
          if(config.multiple == 'true') {
            console.log("por multiple ");
              descargarDatos("./datos.csv", config.cantidad).then(function (resp) { 
                  console.log("resultado descargarDatos ->"+resp);
                  completarDatos("./plantillaThirdPartyTuplas.feature", resp, config.cantidad).then(function (textoFinal){
                      fs.writeFile("./features/thirdParty.feature", textoFinal, function(err) {
                          // If an error occurred, show it and return
                          if(err) return console.error(err);
                          // Successfully wrote to the file!
                      }); 
                  });
                  }
              ).catch( error => console.error(error));  
          } else {
            console.log("individual");
              descargarDatos("./datos.csv", 1).then(function (resp) { 
                  console.log("resultado descargarDatos ->"+resp);
                  reemplazarDatos("./plantillaThirdParty.feature", resp).then(function (textoFinal){
                      fs.writeFile("./features/thirdParty.feature", textoFinal, function(err) {
                          // If an error occurred, show it and return
                          if(err) return console.error(err);
                          // Successfully wrote to the file!
                      }); 
                  });
                  }
              ).catch( error => console.error(error));   
          }     
      } else {

      }

      //consulta el test para obtener el script
      Test.findById(exec1.test_id, function (err, test) {
          if(err) {
            return console.log(err);
        }
        //pathSript="./cypress/integration/"+exec1.test_id+".spec.js";
        pathSript="./features/createThirdParty.feature"
        //console.log("-------------------------------------------------------------------------");
        var contentFileBody=unescape(test.script).replace(new RegExp('\\\\r\\\\n', 'g'),'\n');
        contentFileBody=contentFileBody.replace(new RegExp('\\\\\\n', 'g'),'\n');
        contentFileBody=contentFileBody.replace(new RegExp('\\\\', 'g'),'');
        
        //var contentFile=unescape(addScrenErro);
        //console.log(contentFile);
        if(!config) {
          //Si no existe configuración sobreescribe el archivo local con el que se encuentr en base de datos
          fs.writeFile(pathSript,contentFileBody, function(err) {
            if(err) {
                return console.log(err);
              }
          //  console.log(contentFileBody);
          }); 
        }

      console.log("The file createThirdParty.feature was saved!");
      Param.findOneAndUpdate(
        { test_id:exec1.test_id, 
        param: "STEP_DEF"}, 
        { $set: { param: "STEP_DEF" } },      
        {
         returnNewDocument: true
        }).then(exec2 => {
          console.log("Running Cucumber");
          if(exec2) {
            pathSript="./features/step-definitions/index.js"
            contentFileBody=unescape(exec2.value).replace(new RegExp('\\\\r\\\\n', 'g'),'\n');
            contentFileBody=contentFileBody.replace(new RegExp('\\\\\\n', 'g'),'\n');
            contentFileBody=contentFileBody.replace(new RegExp('\\\\', 'g'),'');
            
            //var contentFile=unescape(addScrenErro);
            //console.log(contentFile);
            //fs.writeFile(pathSript,contentFileBody, function(err) {
            //  if(err) {
            //      return console.log(err);
            //    }
            //  console.log(contentFileBody);
            //}); 
            console.log("The file index.js was saved!");
          var pathTest='npm test';
          exec(pathTest, (err, stdout, stderr) => {
            if (err) {
              // node couldn't execute the command
              console.log("Fails execution of Cucumber");
              Execution.updateOne({ _id: exec1._id }, { state: STATE_REGISTER }).then(u=>{
                console.log("Execution id:" +exec1._id+".spec.js Failed.");
              });
              return;
            }
            //genera el reporte de VRT
            let rutaReportes = "./reports/vrt/";
            vrt.generarReporteVrt(configVrt, rutaReportes, rutaReportes, stderr);
            console.log("Genera reporte VRT:" );
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
          
        
            shell.echo("Cucumber complete");            
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
        }
      
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


