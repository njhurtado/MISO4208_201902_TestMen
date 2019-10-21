// Import model
Test = require('../models/test.model.js');
const Version = require('../models/version.model.js');
// Handle index actions
exports.index = function (req, res) {
    Test.get(function (err, tests) {
        if (err) {
            res.json({
                status: "error",
                message: err,
            });
        }
        res.json({
            status: "success",
            message: "Tests collection",
            data: tests
        });
    });
};

// Handle create test actions
exports.new = function (req, res) {
    /*console.log(req.body);
    var varTest=req.body;
    varTest.script=unescape(varTest.script)*/
    var tests = new Test(req.body);

    Version.findById(tests.version_id, function (err, ver) {
        if (err){
            res.json({
                status: "error",
                message: err
            });
        };

            tests.aplication_id=ver.aplication_id;

             // console.log(varTest);
            // save the test and check for errors
                tests.save(function (err) {
                    if (err){
                        res.json({
                            status: "error",
                            message: err
                        });
                    }
                    res.json({
                        message: 'New tests registered!',
                        data: tests
                    });
                });
    });


     
};

// Update a Application identified by the AplicationId in the request
exports.update = (req, res) => {
    // Validate Request
    if(!req.params.test_id) {
        return res.status(400).send({
            message: "Test ID can not be empty"
        });
    }
    if(!req.body.version_id) {
        return res.status(400).send({
            message: "Test version_id can not be empty"
        });
    }
    
    Version.findById(req.body.version_id, function (err, ver) {
        if (err){
            res.json({
                status: "error",
                message: err
            });
        };

                // Find application and update it with the request body
                Test.findByIdAndUpdate(req.params.test_id, {
                type: req.body.type,
                mode:req.body.mode,
                script: req.body.script,
                description:req.body.description,
                version_id:req.body.version_id,
                tool_id:req.body.tool_id,
                aplication_id:ver.aplication_id
            }, {new: true})
            .then(test => {
                if(!test) {
                    return res.status(404).send({
                        message: "Test not found with id " + req.params.test_id
                    });
                }
                res.json({
                    message: 'Test updated!',
                    data: test
                });
                //res.send(test);
            }).catch(err => {
                if(err.kind === 'ObjectId') {
                    return res.status(404).send({
                        message: "Test not found with id " + req.params.test_id
                    });                
                }
                return res.status(500).send({
                    message: "Error updating Test with id " + req.params.test_id
                });
            });
    });

    

};
// Handle view test info
exports.view = function (req, res) {
    Test.findById(req.params.test_id, function (err, test) {
        if (err)
            res.send(err);
        res.json({
            message: 'Test information',
            data: test
        });
    });
};
// Handle delete test
exports.delete = function (req, res) {
    Test.remove({
        _id: req.params.test_id
    }, function (err, app) {
        if (err)
            res.send(err);
        res.json({
            status: "success",
            message: 'Test removed'
        });
    });
};