const fs = require("fs");
const fsExtra = require('fs-extra');
let shell = require("shelljs");
const { exec} = require('child_process');
const cron = require("node-cron");
const express = require("express");
//let nodemailer = require("nodemailer");
const dbConfig = require('./config/database.config.js');
const mongoose = require('mongoose');
const srvS3=require('./s3manager');
var isExecution=false;
const rm = require('rimraf')
var _appGlobal={
  _pathAPK:"org.gnucash.android_2018-06-27.apk",
  _pkgAPK:"org.gnucash.android"
}
var _appGnuCash={
  _pathAPK:"org.gnucash.android_2018-06-27.apk",
  _pkgAPK:"org.gnucash.android"
};
var _appCarReport={
  _pathAPK:"Car_Report_v3.25.0_apkpure.com.apk",
  _pkgAPK:"me.kuehle.carreport"
};

var _numMut=5;
var _sdkAndroidHome='/home/eanunezt/Android/Sdk';
var _EmulatorAvd='@Nexus_5X_PLAY_64';
var _dir=__dirname;
var _pathSript="features";
var _nomReport='result';
var _ExcecID='-1';
var _ExecGlobal={};
const STATE_REGISTER='REGISTER';
const STATE_EXECUTED='EXECUTED';
const STATE_PENDING='PENDING';



Execution = require('./models/execution.model.js');
Test = require('./models/test.model.js');
File = require('./models/file.model.js');
Result = require('./models/result.model.js');
TestMatrix= require('./models/testmatrix.model.js');

app = express();
var _execution;
var _test;
async function  getExecution() {
  let execution= await Execution.findOneAndUpdate({ state:STATE_REGISTER, test_type:'RANDOM',app_type: 'MOVIL' },{ $set: { state: STATE_PENDING} }, {returnNewDocument: true});
    return (execution);
}


var task=cron.schedule("*/6 * * * * *", async function() {
  console.log("---------WORKER RANDOM MOKEY ANDROID------------");
  if(!isExecution){
  await   getExecution().then( execution=>{
    _ExecGlobal=execution;
      _execution= new Promise(resolve=>{
        resolve(execution)
    });
      
      if(execution){
        Test.findById(execution.test_id, function (err, test) {
          if(err) {
            return console.log(err);
        }
        _test=test;

        //Por ahora solo soportamos gnucash y carreport
        _appGlobal=_appGnuCash;
        if("5dbb800763447150bc13ac8c"===_test.version_id){
          _appGlobal=_appCarReport;
        }

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
      _ExecGlobal=exec1;
      _nomReport=exec1.test_id;
      console.log("---------<<>>"+_dir);
      await process.chdir(_dir);
      await removeFiles();
      isExecution=true;
      return;
      }  
      )
    .then( func=>{      
      //if(!isExecution)
      ///home/eanunezt/Android/Sdk/tools/emulator -avd Nexus_5X_PLAY_64 -port 5556
       
      return openEmulator(_sdkAndroidHome+'/tools/emulator '+_EmulatorAvd+' -port 5556 -no-boot-anim');
     })
     .then( func=>{
     
      return checkEmulatorRun();
     })
     .then( async func=>{
      console.log("execShellCommand 1--->"+func);
    // await  process.chdir(_dir);   
      console.log("execShellCommand--->"+_sdkAndroidHome+'/platform-tools/adb -s emulator-5556 install -r '+_appGlobal._pathAPK);
      return execShellCommand(_sdkAndroidHome+'/platform-tools/adb -s emulator-5556 install -r '+_appGlobal._pathAPK); 
     })
     .then( async func=>{
      await sleep(9000)
      console.log("execShellCommand 2--->"+func);
     var events="500";
   var seed="1234";
    if(_ExecGlobal.matrix_id) {   
        await  TestMatrix.find(
                { _id : { $eq : _ExecGlobal.matrix_id} }
              ).then(matrix=>{
                console.log("matrix ::::::::::::");
                var mat=matrix[0];
                console.log(mat);

                if(mat.random_events)
                events=mat.random_events;

                if(mat.random_seed )
                seed=mat.random_seed;

               
              })
         }

         
      return execShellCommand(_sdkAndroidHome+'/platform-tools/adb shell monkey -p '+_appGlobal._pkgAPK+' -v '+events+' -s '+seed+' > '+_nomReport+'-logs.txt'); 
     })
     .then( async func=>{
      console.log("execShellCommand 3--->"+func);
      await sleep(5000)
      return execShellCommand(_sdkAndroidHome+'/platform-tools/adb -s emulator-5556 emu kill');
        
  
     })
     .then(async func=>{
      await sleep(3000)
      console.log("************************************************>>"+_ExecGlobal._id);

      let _exec={}
      await Execution.findOneAndUpdate({ _id: _ExecGlobal._id },{ $set: { state: STATE_EXECUTED} }, {returnNewDocument: true}).then(e=>{
        _exec=e;
        console.log("Execution updated:"+e._id +"  state:"+e.state);
      });
      return new Promise(resolve=>{
        resolve(_exec)
    });
     
    })
    .then(async exec1=>{
     
      console.log(exec1);
      var result = new Result({
        execution_id:_ExecGlobal._id
      }
      );
      // save the app and check for errors
    await  result.save(function (err) {
          if (err)
          console.log("Error registrando Resultado :" +err);     
          else
          console.log("Result id:" +result._id+" saved.");          
      });

      var file = new File({
        result_id:result._id,
        name: _ExecGlobal.test_id,
        url:"https://tsmen.s3-us-west-1.amazonaws.com/reports/randomandroid/view.html?file="+_nomReport +'.txt'
      }
      );

    await  file.save(function (err) {
        if (err)
        console.log("Error registrando Archivo :" +err);   
        else
        console.log("File id:" +file._id+" saved.");              
    });

    if (fs.existsSync(_nomReport+'-logs.txt')) {
      //se genera reporte en s3
      srvS3.uploadFile(_nomReport+'-logs.txt','reports/randomandroid/'+_nomReport +'.txt');
    shell.echo("S3 complete"); 

    }
    isExecution=false;

    })
     .catch(err => {

      console.log('Could not close process. Exiting now...', err);
      Execution.updateOne({ _id: _ExcecID }, { state: STATE_REGISTER }).then(u=>{
        console.log("Execution id:" +_ExcecID+" Failed.");
        isExecution=false;   
      }); 
      process.exit();
  });
  }else {
    console.log('not process to run now...');
  }

 
  }
});
task.start();
app.listen("3121");

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

 async function  removeFilesPath(pathFiles){

  await rm(pathFiles, (error) => {
    if (error) {
    console.error(`Error while removing existing files: ${error}`)
    process.exit(1)
    }
    console.log('Removing all existing files on '+pathFiles)
    })
}


 async function  removeFiles(){
 console.log('Removing removeFiles')
await  removeFilesPath('*.txt');
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