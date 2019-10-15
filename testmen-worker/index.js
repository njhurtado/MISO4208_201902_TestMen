const fs = require("fs");
let shell = require("shelljs");
const { exec } = require('child_process');
const cron = require("node-cron");
const express = require("express");
//let nodemailer = require("nodemailer");
const dbConfig = require('./config/database.config.js');
const mongoose = require('mongoose');
const srvS3=require('./s3manager');


Execution = require('./models/execution.model.js');
Test = require('./models/test.model.js');
File = require('./models/file.model.js');
Result = require('./models/result.model.js');
const STATE_REGISTER='REGISTER';
const STATE_EXECUTED='EXECUTED';
const STATE_PENDING='PENDING';

app = express();

/*var task = cron.schedule('* * * * *', () => {
	console.log('Printing this line every minute in the terminal');
});*/
// To backup a database
var task=cron.schedule("*/3 * * * * *", function() {
  console.log("---------WORKER 001------------");


//busca execuciones en estado Register
    Execution.findOneAndUpdate(    
        { state:STATE_REGISTER }, //Register     Executed
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
            pathSript="./cypress/integration/"+exec1.test_id+".spec.js";
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

          console.log("The file "+exec1.test_id+".spec.js was saved!");

          console.log("Running Cypress");

          var pathTest='node cypress_runner.js --h false --n '+exec1.test_id;
          exec(pathTest, (err, stdout, stderr) => {
            if (err) {
              // node couldn't execute the command
              Execution.updateOne({ _id: exec1._id }, { state: STATE_REGISTER }).then(u=>{
                console.log("Execution id:" +exec1._id+".spec.js Failed.");
              });
              return;
            }

            //se genera reporte en s3
            srvS3.uploadFile('./cypress/reports/'+exec1.test_id+'.html','reports/'+exec1.test_id+'.html');
     
            shell.echo("S3 complete"); 
          
         
            shell.echo("Cypress complete");            
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


