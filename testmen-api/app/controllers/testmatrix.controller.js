// Import model
const TestMatrix= require('../models/testmatrix.model.js');
const mapEntityMatrixModel= require('../models/testmatrix.model.js');
const Application = require('../models/application.model.js');
const Execution = require('../models/execution.model');
const Test = require('../models/test.model.js');
const Version = require('../models/version.model.js');
const Tool = require('../models/tool.model.js');

const Executions = require('../controllers/execution.controller.js');
// Handle index actions

//SQS configuration
var aws      = require('aws-sdk');
var queueE2E = "https://sqs.us-east-1.amazonaws.com/610795545904/executionQueue";
var queueBDT = "https://sqs.us-east-1.amazonaws.com/610795545904/DBT-queue";
var queueRandom = "https://sqs.us-east-1.amazonaws.com/610795545904/random-queue";
var queueMT = "https://sqs.us-east-1.amazonaws.com/610795545904/mutant-queue";
var queueFull = "https://sqs.us-east-1.amazonaws.com/610795545904/HeadfullE2E_queue";

aws.config.update({
    region: 'us-east-1',
	accessKeyId: process.env.AWS_ACCESS_KEY,
    secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY
});
var sqs = new aws.SQS();

exports.index = async (req, res) => {
    console.log("findAll-matrix");
    
    var sort={};
    if(req.query._sort){
        var arr=[JSON.parse(JSON.stringify(req.query._sort))];
        arr=arr.map(function(m) {
            if('id'===m){
                return '_id';
            }
            return m;})
            var order=req.query._order?req.query._order:null;
            if(order)
            arr.push(order)
        sort=[arr];
        console.log(sort);
    }
    var skip={};
    if(req.query._start && req.query._end){
        skip={skip:parseInt(req.query._start), limit: parseInt(req.query._end)}
        console.log(skip);
    }
    var query={};
    if(req.query._filter){
        console.log("---->"+"[{"+req.query._filter.toString()+"}]");
       let  result=JSON.parse("[{"+req.query._filter.toString()+"}]");
        for(let i of result){
            var value=Object.keys(i).map(key => i[key]);
            if(value)
            query[Object.keys(i)]=new RegExp(value);
        }
       // console.log(query);
    }
    var count=0;
    
   await  TestMatrix.countDocuments(query,function(err, c) {
                if (err) {
                    console.log('Error');
                }else{
                count=c;
              
                }
           });

   await TestMatrix.find(query,null,skip).sort(sort)
    .then(TestMatrix => {
        console.log('Count is ' + count);
        res.set('x-total-count',count)
        var data=TestMatrix.map(function(m) {
            //console.log(m.toObject()); 
            //console.log(m.toJSON()); 
            return m.toJSON();});
        res.send(data);
    }).catch(err => {
        console.log('500 is ' + err);
        res.status(500).send({
            message: err.message || "Some error occurred while retrieving TestMatrix."
        });
    });
};
// Handle create exceution actions
exports.new = function (req, res) { 
    console.log('req.body: ' + req.body);
    //console.log(res);
    var testMatrix = new TestMatrix(mapEntityMatrixModel(req.body));
  
   testMatrix.save()
   .then( data => {
   var testArray=req.body.tests_list;   
        for(let testId of testArray){
            var execution=new Execution({test_id:testId,
                state:'REGISTER',
            test_type:req.body.test_type,
            test_mode:req.body.test_mode,
            mutation:req.body.mutation,
            mutation_value:req.body.mutation_value,
            app_type:req.body.app_type
			});

			console.log(execution);

			execution.save(function (err) {
				if (err)
				return;
				else{
					console.log("execok");
				}
				
			});
			//console.log(exec);
			console.log(execution.toJSON());
			//Send to queue execution.toJSON()
			var queueUrl = '';
			if(execution.mutation == 'S')
			{
				console.log('envio a cola mutantes');
				queueUrl = queueMT;
				var params = {
					MessageBody: JSON.stringify(execution.toJSON()),
					QueueUrl: queueUrl,
					DelaySeconds: 0
				};
				
				console.log('params: ' + params);
				sqs.sendMessage(params, function(err, data) {
					if(err) {
						//res.send(err);
						console.log(err);
					} 
					else {
						//res.send(data);
						console.log(data);
					} 
				});
			}
			
			switch(execution.test_type)
			{
				case 'E2E':
					switch(execution.test_mode)
					{
						case 'HEADLESS':
							queueUrl = queueE2E;
							break;
						case 'HEADFULL':
							queueUrl = queueFull;
							break;
						default:
							queueUrl = queueE2E;
					}
					break;
				case 'RANDOM':
					queueUrl = queueRandom;
					break;
				case 'BDT':
					queueUrl = queueBDT;
					break;
				default:
					queueUrl = queueE2E;
					console.log('no encontro match para la cola');
			}
			console.log('queueUrl: ' + queueUrl);
			var params = {
				MessageBody: JSON.stringify(execution.toJSON()),
				QueueUrl: queueUrl,
				DelaySeconds: 0
			};
			
			sqs.sendMessage(params, function(err, data) {
				if(err) {
					//res.send(err);
					console.log(err);
				} 
				else {
					//res.send(data);
					console.log(data);
				} 
			});
			
        }
       res.send(data);
   }).catch(err => {
       res.status(500).send({
           message: err.message || "Some error occurred while creating the TestMatrix."
       });
   });

   /* Test.findById(TestMatrix.test_id, function (err, test) {
        if (err)
        res.json(err);
            TestMatrix.test_type=test.type;
            TestMatrix.test_mode=test.mode;
            TestMatrix.mutation=test.mutation;
            TestMatrix.mutation_value=test.mutation_value;
            console.log(test.aplication_id);

            Application.findById(test.aplication_id, function (err, app) {
                if (err)
                res.json(err);

                TestMatrix.app_type=app.type; 

                     // save the app and check for errors
                    TestMatrix.save(function (err) {
                        if (err)
                            res.json(err);
                        res.json(TestMatrix.toJSON());
                    });
                });
        });*/
};
// Handle view TestMatrix info
exports.view = function (req, res) {
    console.log("findOne");
        TestMatrix.findById(req.params.testmatrix_id)
        .then(testMatrix => {
            if(!testMatrix) {
                return res.status(404).send({
                    message: "testMatrix not found with id " + req.params.testmatrix_id
                });            
            }
            res.send(testMatrix.toJSON());
        }).catch(err => {
            if(err.kind === 'ObjectId') {
                return res.status(404).send({
                    message: "TestMatrix not found with id " + req.params.testmatrix_id
                });                
            }
            return res.status(500).send({
                message: "Error retrieving TestMatrix with id " + req.params.testmatrix_id
            });
        });
};
// Handle update TestMatrix info
exports.update = function (req, res) {
    TestMatrix.findById(req.params.TestMatrix_id, function (err, TestMatrix) {
        if (err)
            res.send(err);
		TestMatrix.test_id = req.body.test_id;
		TestMatrix.aplication_id = req.body.aplication_id;
		TestMatrix.version_id = req.body.version_id;
        TestMatrix.tool_id = req.body.tool_id;
        TestMatrix.app_type = req.body.app_type;
        TestMatrix.test_type = req.body.test_type;
        TestMatrix.test_mode = req.body.test_mode;
        TestMatrix.mutation = req.body.mutation;
        TestMatrix.mutation_value = req.body.mutation_value;
        TestMatrix.tool_size = req.body.tool_size;
        TestMatrix.tool_version = req.body.tool_version;
        // save the TestMatrix and check for errors
        TestMatrix.save(function (err) {
            if (err)
                res.json(err);
            res.json(TestMatrix.toJSON());
        });
    });
};

// Handle TestMatrix app
exports.delete = function (req, res) {
    TestMatrix.remove({
        _id: req.params.TestMatrix_id
    }, function (err, TestMatrix) {
        if (err)
            res.send(err);
        res.json({
            status: "success",
            message: 'TestMatrix deleted'
        });
    });
};


exports.getDataForm = async function (req, res) {
    console.log("getDataForm");
    var dataSet={
        app_type_choices:[{ id: 'WEB', name: 'WEB' },
        { id: 'MOVIL', name: 'MOVIL' }],
        applications:[],
        versions:[] ,
        tools:[], 
        tests:[] 
    }

  await   Application.find()
  .then(async apps => {
    console.log("Application");
    var data=apps.map(function(m) {
        return m.toJSON();});
    dataSet.applications=data;
   
        }).catch(err => {
    console.log("Error::"+err);
  })
  .then(async res1=>{
    console.log("Version");
   await Version.find()
    .then(vers => {
      var data=vers.map(function(m) {
          return m.toJSON();});
      dataSet.versions=data;
      //console.log(dataSet);
     return;
          }).catch(err => {
      console.log("Error::"+err);
    })
  })
  .then(async res2=>{
    console.log("Tools");
   await Tool.find()
    .then(vers => {
      var data=vers.map(function(m) {
          return m.toJSON();});
      dataSet.tools=data;
      //console.log(dataSet);
     return;
          }).catch(err => {
      console.log("Error::"+err);
    })
  })
  .then(async res3=>{
    console.log("Tests");
   await Test.find({}, { id:1,version_id:1,mode:1,type:1,description: 1})
    .then(data => {
      var _data=data.map(function(row) {
          return row.toJSON();});
      dataSet.tests=_data;
      //console.log(dataSet);
     return;
          }).catch(err => {
      console.log("Error::"+err);
    })
  })
  
  .then(async resN=>{
    //console.log(dataSet);
    res.send(
        /* {app_type_choices:[{ id: 'WEB', name: 'WEB2' },
     { id: 'MOVIL', name: 'MOVIL2' }]}*/
     dataSet
     
     
     
     )
 
 
     } );


   

};