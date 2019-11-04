const fs = require("fs");
const fsExtra = require('fs-extra');
let shell = require("shelljs");
const { exec,execSync } = require('child_process');
const cron = require("node-cron");
const express = require("express");
//let nodemailer = require("nodemailer");
const dbConfig = require('./config/database.config.js');
const mongoose = require('mongoose');
const srvS3=require('./s3manager');
var isExecution=false;
const rm = require('rimraf')
var _pathAPK="/org.gnucash.android_2018-06-27.apk";
var _pkgAPK="org.gnucash.android";
var _numMut=5;
var _sdkAndroidHome='/home/eanunezt/Android/Sdk';
var _EmulatorAvd='@Nexus_5X_PLAY_64';
var _pathMutApk='./mutants/'+_pkgAPK+'-mutant5';
var _dir=__dirname;
var _pathSript="features";



Execution = require('./models/execution.model.js');
Test = require('./models/test.model.js');

app = express();
var _execution;
var _test;
async function  getExecution() {
  let execution= await Execution.findOneAndUpdate({ state:'REGISTER', test_type:'BDT',mutation:'S',app_type: 'MOVIL' },{ $set: { state: 'PENDING' } }, {returnNewDocument: true});
    return (execution);
}


var task=cron.schedule("*/6 * * * * *", async function() {
  console.log("---------WORKER mut apk------------");
  if(!isExecution){
  await   getExecution().then( execution=>{
      _execution= new Promise(resolve=>{
        resolve(execution)
    });
      
      if(execution){

        Test.findById(execution.test_id, function (err, test) {
          if(err) {
            return console.log(err);
        }
        _test=test;
        isExecution=true;
        
       
      });

        
      } else {
        _execution=null;
      }
    }

    );
  if(_execution){
    _execution.then(async exec1=>{
      console.log("------------>>"+exec1);
      await process.chdir(_dir);
      await rmMutFiles();
      isExecution=true;
      return;
      }  
      )
    .then( func=>{
     
      var pathAPK='java -jar MutAPK-0.0.1.jar '+ _pathAPK+' '+_pkgAPK+' mutants/ extra/ . true '+ _numMut;
       //java -jar MutAPK-0.0.1.jar org.gnucash.android_2018-06-27.apk org.gnucash.android ./mutants/ ./extra ./ true 5?
       console.log("create mutations"+pathAPK); 
     return  createMutAPK(pathAPK);
     //return;
     })
     .then( func=>{
      
      //if(!isExecution)
      ///home/eanunezt/Android/Sdk/tools/emulator -avd Nexus_5X_PLAY_64 -port 5556
       
      return openEmulator(_sdkAndroidHome+'/tools/emulator '+_EmulatorAvd+' -port 5556 -no-boot-anim');
     })
     .then( func=>{
     
      return checkEmulatorRun();
     })
     .then(  func=>{

     return copyFolder('./features/', _pathMutApk+'/features/');;
    // return;
     })
     .then( async func=>{
     await  process.chdir(_pathMutApk);   
      console.log("execShellCommand--->"+_pathMutApk);
      return execShellCommand('calabash-android resign *-aligned-debugSigned.apk'); 
     })
     .then( async func=>{
      await sleep(9000)
      console.log("execShellCommand 2--->"+func);
      //return ;
      return execShellCommand('calabash-android run *-aligned-debugSigned.apk'); 
     })
     .then( async func=>{
      console.log("execShellCommand 3--->"+func);
      await sleep(5000)
      return execShellCommand(_sdkAndroidHome+'/platform-tools/adb -s emulator-5556 emu kill');
        
  
     })
     .then(async func=>{
      await sleep(3000)
      isExecution=false;
      _execution=null;
      console.log("okkkkk"); 
     })
  
     .catch(err => {
     
      console.log('Could not close process. Exiting now...', err);
      process.exit();
  });
  }else {
    console.log('not process to run now...');
  }

 
  }
});
task.start();
app.listen("3127");

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

async function  removeFiles(pathFiles){

  await rm(pathFiles, (error) => {
    if (error) {
    console.error(`Error while removing existing files: ${error}`)
    process.exit(1)
    }
    console.log('Removing all existing files on '+pathFiles)
    })
}


async function  rmMutFiles(){

  await removeFiles('mutants/*');
  await removeFiles('temp/*');
  await removeFiles('features/*.feature');
  await removeFiles('*.png');
 
 }
 
async function  createMutAPK(pathAPK){

 return await execShellCommand(pathAPK);

}

 async function  openEmulator(emulatorPath){
    await exec(_sdkAndroidHome+'/platform-tools/adb -s emulator-5556 emu kill',(error, stdout, stderr) => {
    if (error) {
     console.warn("openEmulator:emulator-5556 not running");
    }
    //console.info(stdout);
   // return;
    //resolve(stdout? stdout : stderr);
   });

   execShellCommand(emulatorPath);  
 
 }
 
 async function checkEmulatorRun(){
  return new Promise((resolve, reject) => { 
    bootChecker = setInterval(function(){
    exec(_sdkAndroidHome+'/platform-tools/adb shell getprop init.svc.bootanim', function(error, stdout, stderr){

      if (stdout.toString().indexOf("stopped")>-1){
  
          clearInterval(bootChecker);
          console.log('emulator load ok');
          resolve(stdout? stdout : stderr);
          //return;
      } else {
          console.log('we are still loading');
      }
  })
  },1000);
});
 }


/**
 * Executes a shell command and return it as a Promise.
 * @param cmd {string}
 * @return {Promise<string>}
 */
function execShellCommand(cmd) {
  const exec = require('child_process').exec;
  return new Promise((resolve, reject) => {
   exec(cmd, (error, stdout, stderr) => {
    if (error) {
     console.warn(error);
    }
    console.info(stdout);
    resolve(stdout? stdout : stderr);
   });
  });
 }
//copyFolder('./features/', _pathMutApk+'/features/');
function copyFolder(source, target) {  

  
  return new Promise((resolve, reject) => {

    _pathSript="./features/"+_test._id+".feature";

  var contentFileBody=unescape(_test.script).replace(new RegExp('\\\\r\\\\n', 'g'),'\n');
  contentFileBody=contentFileBody.replace(new RegExp('\\\\\\n', 'g'),'\n');
  contentFileBody=contentFileBody.replace(new RegExp('\\\\', 'g'),'');
  fs.writeFile(_pathSript,contentFileBody, function(err) {
     if(err) {
        return console.log(err);
      }
    console.log('writed:'+_pathSript);
  }); 


    fsExtra.copy(source, target, (err) => {
      if (err) 
      throw err;
      console.log('features was copied to mutant'+_numMut);
      resolve('OK REMOVE FOLDERS');
    });
   });
  
}

function sleep(ms){
  return new Promise(resolve=>{
      setTimeout(resolve,ms)
  })
}