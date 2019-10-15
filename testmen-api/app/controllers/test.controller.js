// Import model
Test = require('../models/test.model.js');
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