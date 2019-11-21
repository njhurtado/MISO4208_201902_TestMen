const fs = require("fs");
let shell = require("shelljs");
const { exec } = require('child_process');
const cron = require("node-cron");
const express = require("express");
//let nodemailer = require("nodemailer");
const dbConfig = require('./config/database.config.js');
const mongoose = require('mongoose');
const srvS3=require('./s3manager');
const rm = require('rimraf');
const ls = require('ls');
const vrt = require('./manejador-vrt.js');


Execution = require('./models/execution.model.js');
Test = require('./models/test.model.js');
File = require('./models/file.model.js');
Result = require('./models/result.model.js');
Matrix = require('./models/testmatrix.model.js');
Version = require('./models/version.model.js');
const STATE_REGISTER='REGISTER';
const STATE_EXECUTED='EXECUTED';
const STATE_PENDING='PENDING';
var isExecution=false;

var configVrt = [
  { "before": "before1.png", "after": "after1.png", "result": "result1.png" },
  { "before": "before2.png", "after": "after2.png", "result": "result2.png" },
  { "before": "before3.png", "after": "after3.png", "result": "result3.png" }
]


app = express();

/*var task = cron.schedule('* * * * *', () => {
	console.log('Printing this line every minute in the terminal');
});*/
// To backup a database
var task=cron.schedule("*/3 * * * * *", function() {
  console.log("---------WORKER E2E 001------------");

  if(!isExecution){
   
    var pathScirptRemove="./cypress/integration/*.spec.js";     
    // delete all existing report files
    removeFiles(pathScirptRemove);

//busca execuciones en estado Register
    Execution.findOneAndUpdate(    
        { state:STATE_REGISTER, 
          test_type: "E2E",
          //test_mode: "HEADLESS",
          app_type: "WEB"}, //Register     Executed
        { $set: { state: STATE_PENDING } },      
        {
           returnNewDocument: true
        })
        .then(exec1 => {
        var pathSript;
        if(exec1){
          console.log("-execs-"+exec1);
          isExecution=true;
         
          //consulta el test para obtener el script
          Test.findById(exec1.test_id, function (err, test) {
            if(err) {
                return console.log(err);
            }
            Version.findById(test.version_id, function (err, version) {
              if(err) {
                  return console.log(err);
              }
              //Se consulta la versión para saber si corresponde con la que se ecuentra localmente instalada
              var dollibarVersion = process.env.DOLIBARR_VERSION || '9.0';
              console.log('Dolibarr local version -> ' + dollibarVersion);
              console.log('Dolibarr test version -> ' + version.version);
              if(version.version != dollibarVersion){
                //Si no es la versión local se deje en el mismo estado en que estaba la ejecución
                Execution.updateOne({ _id: exec1._id }, { state: STATE_REGISTER }).exec();
                console.log('Version de Dolibarr no compatible');
                isExecution = false;                
              } else {
                pathSript="./cypress/integration/"+exec1.test_id+".spec.js";

                //console.log("-------------------------------------------------------------------------");
                var contentFileBody=unescape(test.script).replace(new RegExp('\\\\r\\\\n', 'g'),'\n');
                contentFileBody=contentFileBody.replace(new RegExp('\\\\\\n', 'g'),'\n');
                contentFileBody=contentFileBody.replace(new RegExp('\\\\', 'g'),'');
                
                contentFileBody=contentFileBody+' '+unescape(addScrenErro);
                //console.log(contentFile);
                //fs.writeFile(pathSript,contentFileBody, function(err) {
                //  if(err) {
                //      return console.log(err);
                //    }
                //  console.log(contentFileBody);
                //}); 

                ls("./cypress/integration/*.spec.js", { recurse: true }, file => console.log(`script created ${file.full}`));

              console.log("The file "+exec1.test_id+".spec.js was saved!");

              console.log("Running Cypress");
              var headless = false;
              var modo_vrt = false;
              if(exec1.test_mode == 'HEADLESS'){
                headless = true;
              } else if(exec1.test_mode == 'VRT'){
                modo_vrt = true;
                console.log("Modo VRT");
              } 

              var pathTest='node cypress_runner.js --h ' + headless + ' --n '+exec1.test_id+".spec.js" ;

              exec(pathTest, async (err, stdout, stderr) => {
                if (err) {
                  // node couldn't execute the command
                  Execution.updateOne({ _id: exec1._id }, { state: STATE_REGISTER }).then(u=>{
                    console.log("Execution id:" +exec1._id+".spec.js Failed.");
                    isExecution=false;   
                  });             
                  return;
                }
                console.log("Executing ..." +pathTest);
                if (fs.existsSync('./cypress/reports/'+exec1.test_id+'.html')) {
                //se genera reporte en s3
                srvS3.uploadFile('./cypress/reports/'+exec1.test_id+'.html','reports/'+exec1.test_id+'.html');
              //var bPathImg='reports/assets/'+exec1.test_id+'.spec.js/Fill a ticket succesfull (failed).png'
              // srvS3.uploadFile('./cypress/'+bPathImg,bPathImg);
              shell.echo("S3 complete"); 
        
              }
              
              if(modo_vrt) {
                //genera el reporte de VRT
                let rutaReportes = "./reports/vrt/";
                vrt.generarReporteVrt(configVrt, rutaReportes, rutaReportes, stderr);
                console.log("Genera reporte VRT:" );
                  //Pendiente subir el reporte a S3
              }
            
                shell.echo("Cypress complete");  
                isExecution=false;          
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
                    url:"https://tsmen.s3-us-west-1.amazonaws.com/reports/"+exec1._id +'.html'
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
        isExecution=false;
      });
    }

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

const addScrenErro='%0A%2F%2F%20add%20screen%20error%0Aconst%20addContext%20%3D%20require(%27mochawesome%2FaddContext%27)%0ACypress.on(%27test%3Aafter%3Arun%27%2C%20(test%2C%20runnable)%20%3D%3E%20%7B%0A%20%20%20%20if%20(test.state%20%3D%3D%3D%20%27failed%27)%20%7B%0A%20%20%20%20%20%20%20%20const%20screenshotFileName%20%3D%20%60%24%7Brunnable.parent.title.trim()%7D%20--%20%24%7Btest.title%7D%20(failed).png%60%0A%20%20%20%20%20%20%20%20addContext(%7B%20test%20%7D%2C%20%60assets%2F%24%7BCypress.spec.name%7D%2F%24%7BscreenshotFileName%7D%60)%0A%20%20%20%20%7D%0A%7D)%0A';

function  removeFiles(pathFiles){

  rm(pathFiles, (error) => {
    if (error) {
    console.error(`Error while removing existing files: ${error}`)
    process.exit(1)
    }
    console.log('Removing all existing files successfully!')
    })
}
