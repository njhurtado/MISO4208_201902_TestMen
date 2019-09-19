const fs = require("fs");
let shell = require("shelljs");
const cron = require("node-cron");
const express = require("express");
let nodemailer = require("nodemailer");
const dbConfig = require('./config/database.config.js');
const mongoose = require('mongoose');
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
      ).then(exec => {
        var pathSript;
        if(exec){
          console.log("-execs-"+exec);
          //consulta el test para obtener el script
          Test.findById(exec.test_id, function (err, test) {
              if(err) {
                return console.log(err);
            }
            pathSript="./cypress/integration/"+exec.test_id+".js";
            fs.writeFile(pathSript, test.tests[0].script, function(err) {
              
              if(err) {
                  return console.log(err);
              }
          
          }); 


          console.log("The file "+exec.test_id+" was saved!");

          console.log("Running Cypress");

     /*     --reporter mochawesome --reporter-options \"mochaFile=cypress/results/my-test-output.xml,html=true\"*/
          //var report=" --reporter mochawesome --reporter-options \"mochaFile=cypress/results/"+exec.test_id+".html,html=true\"";
          var pathTest="./node_modules/.bin/cypress run --spec \"./cypress/integration/"+exec.test_id+".js\"";//+report;
         if (shell.exec(pathTest).code !== 0) { //./node_modules/.bin/cypress run --spec "cypress/integration/examples/window.spec.js" --record
            shell.exit(1);
            Execution.updateOne({ _id: exec._id }, { state: 'Register' }).then(u=>{
              console.log("Execution id:" +exec._id+" Failed.");
            });
          } else {
           
          
            shell.echo("Cypress complete");

            Execution.updateOne({ _id: exec._id }, { state: 'Executed' }).then(u=>{
              console.log("Execution id:" +exec._id+" Executed.");
            });
          }

          });
      }else{
        console.log("-----NO HAY PRUEBAS POR EJECUTAR------");
      }
      }).catch(err => {
        if(exec.test_id )
        Execution.updateOne({ _id: exec.test_id }, { state: 'Register' }).exec();

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


