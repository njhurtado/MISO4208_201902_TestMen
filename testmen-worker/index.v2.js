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
var task=cron.schedule("*/6 * * * * *", function() {
  console.log("---------WORKER 001------------");

 /*let exec= Execution.findForUpdate({ state:'Register' }, 
  { $set: { state: 'Pending' } },      
  {returnNewDocument: true
  });

  console.log("1. Execution on state Register"+JSON.stringify(exec)); */
  let execution= Execution.findForUpdate({ state:'Pending' },{ $set: { state: 'Register' } }, {returnNewDocument: true});
  execution.then(execution=>{
    console.log("2. Execution on state Register"+JSON.stringify(execution)); 
  }  
  );
 

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


