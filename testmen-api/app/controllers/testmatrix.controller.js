// Import model
const TestMatrix = require('../models/testmatrix.model.js');
const Application = require('../models/application.model.js');
const Test = require('../models/test.model.js');
// Handle index actions
exports.index = async (req, res) => {
    console.log("findAll");
    
    var sort={};
    if(req.query._sort){
        var arr=[JSON.parse(JSON.stringify(req.query._sort))];
        arr=arr.map(function(m) {
            if('id'===m){
                return '_id';
            }
            return m;})
        sort=[arr];
        console.log(sort);
    }
    var skip={};
    if(req.query._start && req.query._end){
        skip={skip:parseInt(req.query._start), limit: parseInt(req.query._end)}
        console.log(skip);
    }
    var query={};
    if(req.query.filter){
        console.log("---->"+req.query.filter);
       let  result=[JSON.parse(req.query.filter)];
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
        res.status(500).send({
            message: err.message || "Some error occurred while retrieving TestMatrix."
        });
    });
};
// Handle create exceution actions
exports.new = function (req, res) {
    var TestMatrix = new TestMatrix(req.body);
   
    Test.findById(TestMatrix.test_id, function (err, test) {
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
                        res.json({
                            message: 'New TestMatrix created!',
                            data: TestMatrix.toJSON()
                        });
                    });
                });
        });
};
// Handle view TestMatrix info
exports.view = function (req, res) {
    TestMatrix.findById(req.params.TestMatrix_id, function (err, TestMatrix) {
        if (err)
            res.send(err);
        res.json({
            message: 'TestMatrix details..',
            data: TestMatrix.toJSON()
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
            res.json({
                message: 'TestMatrix updated',
                data: TestMatrix.toJSON()
            });
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