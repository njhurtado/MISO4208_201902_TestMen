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

app = express();

/*var task = cron.schedule('* * * * *', () => {
	console.log('Printing this line every minute in the terminal');
});*/
// To backup a database
var task=cron.schedule("* * * * *", function() {
  console.log("---------WORKER 001------------");

  // 'Pending'
  //state
  /*Execution.find({state:'Register'},null, {skip:0, limit: 1}).then(execs => {
        console.log("-execs-"+execs);
        
      }).catch(err => {
        console.log("---------WORKER ERROR------------")+err;
      });*/


//busca execuciones en estado Registrado
    Execution.findOneAndUpdate(    
        { state:'Register' }, //Register     Executed
        { $set: { state: 'Pending' } },      
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
            var contentFileBody=test.tests[0].script.replace(new RegExp('\\\\r\\\\n', 'g'),'\n');
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

     /*     --reporter mochawesome --reporter-options \"mochaFile=cypress/results/my-test-output.xml,html=true\"*/
          //var report=" --reporter mochawesome --reporter-options \"mochaFile=cypress/results/"+exec.test_id+".html,html=true\"";
          //var pathTest="./node_modules/.bin/cypress run --spec \"./cypress/integration/"+exec1.test_id+".spec.js\"";//+report;
          var pathTest='node cypress_runner.js --h false --n '+exec1.test_id;
          exec(pathTest, (err, stdout, stderr) => {
            if (err) {
              // node couldn't execute the command
              Execution.updateOne({ _id: exec._id }, { state: 'Register' }).then(u=>{
                console.log("Execution id:" +exec._id+".spec.js Failed.");
              });
              return;
            }
           // try {
                  srvS3.uploadFile('./cypress/reports/'+exec1.test_id+'.html','reports/'+exec1.test_id+'.html');
             /* }catch(err) {
                if(exec1.test_id )
                Execution.updateOne({ _id: exec1.test_id }, { state: 'Register' }).exec();      
                console.log("---------WORKER ERROR S3------------")+err;
              };*/
            shell.echo("S3 complete"); 
          
            // the *entire* stdout and stderr (buffered)
           // console.log(`stdout: ${stdout}`);
            //console.log(`stderr: ${stderr}`);
            shell.echo("Cypress complete");            
            Execution.updateOne({ _id: exec._id }, { state: 'Executed' }).then(u=>{
              console.log("Execution id:" +exec._id+" Executed.");
            });
          });
        /* if (shell.exec(pathTest).code !== 0) { 
           //./node_modules/.bin/cypress run --spec "cypress/integration/examples/window.spec.js" --record
            shell.exit(1);

            Execution.updateOne({ _id: exec._id }, { state: 'Register' }).then(u=>{
              console.log("Execution id:" +exec._id+".spec.js Failed.");
            });

          } else {
           
          
            shell.echo("Cypress complete");

            
            Execution.updateOne({ _id: exec._id }, { state: 'Executed' }).then(u=>{
              console.log("Execution id:" +exec._id+" Executed.");
            });
          }*/

          });
      }else{
        console.log("-----NO HAY PRUEBAS POR EJECUTAR------");
      }
      }).catch(err => {
        if(exec1.test_id )
        Execution.updateOne({ _id: exec1.test_id }, { state: 'Register' }).exec();

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


