const cypress = require('cypress')
const yargs = require('yargs')
const { merge } = require('mochawesome-merge')
const marge = require('mochawesome-report-generator')
const rm = require('rimraf')
const cypressConfig = require('./cypress')
const ls = require('ls')

const argv = yargs.options({
    'browser': {
        alias: 'b',
        describe: 'choose browser that you wanna run tests on',
        default: 'chrome',
        choices: ['chrome', 'electron']
    },
    'spec': {
        alias: 's',
        describe: 'run test with specific spec file',
        default: 'cypress/integration/*.spec.js'
    },
    'headless': {
        alias: 'h',
        describe: 'run test with mode headless',
        default: false
    },
    'name': {
        alias: 'n',
        describe: 'name report file',
        default: 'cypresReport'
    }
}).help()
  .argv

const reportDir = cypressConfig.reporterOptions.reportDir
const reportFiles = `${reportDir}/*.json`
const reportFilesHtml = `${reportDir}/*.html`
// list all of existing report files
ls(reportFiles, { recurse: true }, file => console.log(`removing ${file.full}`))

// delete all existing report files
removeFiles(reportFiles);
removeFiles(reportFilesHtml);
const imageFilesRemove=`${reportDir}/assets/*.spec.js`;
removeFiles(imageFilesRemove);


cypress.run(getOptions(argv)).then((results) => {
    const reporterOptions = {
        reportDir: results.config.reporterOptions.reportDir,
        reportFilename: argv.name,
        screenshotOnRunFailure:true,
        screenshotsFolder:results.config.screenshotsFolder
    }
    generateReport(reporterOptions)
}).catch((error) => {
    console.error('errors: ', error)
    process.exit(1)
})

function generateReport(options) {
    return merge(options).then((report) => {
        marge.create(report, options)
    })
}

function getOptions(argv) {
  
let mode=argv.headless;
    if(mode == 'true'){
        console.log("mode headless");
        return { 
            spec: argv.spec };
    } else {
        console.log("mode No headless");
   return {    
        browser: argv.browser,
        spec: argv.spec };
   }
}

function  removeFiles(pathFiles){

    rm(pathFiles, (error) => {
      if (error) {
      console.error(`Error while removing existing files: ${error}`)
      process.exit(1)
      }
      console.log('Removing all existing files successfully!')
      })
  }
