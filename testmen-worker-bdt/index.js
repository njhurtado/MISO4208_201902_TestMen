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

Execution = require('./models/execution.model.js');
Test = require('./models/test.model.js');
Param = require('./models/param.model.js');
File = require('./models/file.model.js');
Result = require('./models/result.model.js');
const STATE_REGISTER='REGISTER';
const STATE_EXECUTED='EXECUTED';
const STATE_PENDING='PENDING';
const NOMBRE_ARCHIVO = "./tercer.csv";
const NOMBRE_ARCHIVO_ORIGEN = "./features/createThirdParty.feature";
const NOMBRE_ARCHIVO_MODIFICADO = "./createThirdParty.feature";

var nombre, email, direccion, alias, zip, pueblo, telefono, contenidoArchivo = "";

app = express();


exec('curl "https://api.mockaroo.com/api/95e33690?count=1&key=1483a6f0" > "./tercer.csv"', (err, stdout, stderr) => {
  if (err) {
    // node couldn't execute the command
    console.log("Fails data generation");
    return;
  }
  console.log("Download data");
});
   
 
      
  let lector = readline.createInterface({
    input: fs.createReadStream(NOMBRE_ARCHIVO)
    });
     
  lector.on("line", lin => {
      console.log("Tenemos una línea:", lin);
      var arreglo = lin.split(",");
      console.log("Tamaño del arrego:"  + arreglo.length);
      nombre = arreglo[0];
      email = arreglo[1];
      direccion = arreglo[2];
      telefono = arreglo[3];
      alias = arreglo[4];
      zip = arreglo[5];
      pueblo = arreglo[6];   
  });
  
  let lector2 = readline.createInterface({
    input: fs.createReadStream(NOMBRE_ARCHIVO_ORIGEN)
    });
    
  lector2.on("line", linea => {
      console.log("Tenemos una línea para modificar:", linea);
      var modificada;
      if(linea.indexOf("{nombre}") >= 0) {
          modificada = linea.replace("{nombre}", nombre);
      }
  
      if(linea.indexOf("{email}") >= 0) {
          modificada = linea.replace("{email}", email);
      }
  
      if(linea.indexOf("{direccion}") >= 0) {
          modificada = linea.replace("{direccion}", direccion);
      } 
  
      if(linea.indexOf("{alias}") >= 0) {
          modificada = linea.replace("{alias}", alias);
      } 
  
      if(linea.indexOf("{zip}") >= 0) {
          modificada = linea.replace("{zip}", zip);
      } 
  
      if(linea.indexOf("{pueblo}") >= 0) {
          modificada = linea.replace("{pueblo}", pueblo);
      } 
  
      if(linea.indexOf("{telefono}") >= 0) {
          modificada = linea.replace("{telefono}", telefono);
      }  
  
      if(!modificada) {
          modificada = linea;
      }
  
      console.log("Línea modificada:"  + modificada);
      contenidoArchivo += modificada +"\n";
      fs.writeFile(NOMBRE_ARCHIVO_MODIFICADO, contenidoArchivo, function(err) {
          // If an error occurred, show it and return
          if(err) return console.error(err);
          // Successfully wrote to the file!
        }); 
  });

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
        fs.writeFile(pathSript,contentFileBody, function(err) {
           if(err) {
              return console.log(err);
            }
        //  console.log(contentFileBody);
        }); 

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
            fs.writeFile(pathSript,contentFileBody, function(err) {
              if(err) {
                  return console.log(err);
                }
            //  console.log(contentFileBody);
            }); 
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
app.listen("3128");

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


