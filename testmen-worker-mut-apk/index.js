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
var _pathMutApk='./mutants/'+_pkgAPK+'-mutant3';
var _dir=__dirname;



Execution = require('./models/execution.model.js');
Test = require('./models/test.model.js');

app = express();
var _execution;
async function  getExecution() {
  let execution= await Execution.findOneAndUpdate({ state:'EXECUTED' },{ $set: { state: 'EXECUTED' } }, {returnNewDocument: true});
    return (execution);
}


var task=cron.schedule("*/6 * * * * *", function() {
  console.log("---------WORKER mut apk------------");
  if(!isExecution){
  
 getExecution()
  .then(async execution=>{
     // console.log("1. Execution on state Register"+JSON.stringify(execution)); 
     _execution=execution;
    await process.chdir(_dir);
    await rmMutFiles();
    isExecution=true;
    
    }  
    )
  .then(async func=>{
   
    var pathAPK='java -jar MutAPK-0.0.1.jar '+ _pathAPK+' '+_pkgAPK+' mutants/ extra/ . true '+ _numMut;
     //java -jar MutAPK-0.0.1.jar org.gnucash.android_2018-06-27.apk org.gnucash.android ./mutants/ ./extra ./ true 5?
     console.log("create mutations"+pathAPK); 
   return  createMutAPK(pathAPK);
   
   })
   .then(async func=>{
    
    //if(!isExecution)
    ///home/eanunezt/Android/Sdk/tools/emulator -avd Nexus_5X_PLAY_64 -port 5556
    return openEmulator(_sdkAndroidHome+'/tools/emulator '+_EmulatorAvd+' -port 5556 -no-boot-anim');
   })
   .then(async func=>{
   
    return checkEmulatorRun();
   })
   .then( async func=>{
    
    return copyFolder('./features/', _pathMutApk+'/features/');;
   })
   .then(async func=>{
    await process.chdir(_pathMutApk);   
    return execShellCommand('calabash-android resign *-aligned-debugSigned.apk '); 
   })
   .then(async func=>{
    
   // await process.chdir('cd ..');
  //  await process.chdir('cd ..');
    return execShellCommand('calabash-android run *-aligned-debugSigned.apk '); 
   })
   .then(async func=>{
    
    return execShellCommand(_sdkAndroidHome+'/platform-tools/adb -s emulator-5556 emu kill');
      

   })
   .then(async func=>{
    await sleep(3000)
    isExecution=false;
    console.log("okkkkk"); 
   })

   .catch(err => {
   
    console.log('Could not close process. Exiting now...', err);
    process.exit();
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
    fsExtra.copy(source, target, (err) => {
      if (err) 
      throw err;
      console.log('features was copied to mutant5');
      resolve('OK REMOVE FOLDERS');
    });
   });
  
}

function sleep(ms){
  return new Promise(resolve=>{
      setTimeout(resolve,ms)
  })
}