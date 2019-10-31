// Import model
const Execution = require('../models/execution.model.js');
const Application = require('../models/application.model.js');
const Test = require('../models/test.model.js');
// Handle index actions
exports.index = (req, res) => {
    if(req.query && req.query.state){
        Execution.find({state:req.query.state}, function (err, executions) {
            if (err){
                res.json({
                    status: "error",
                    message: err,
                });
            }
            res.json({
                status: "success",
                message: "Executions by state",
                data: executions
            });
        });
    }else{
        Execution.get(function (err, executions) {
            if (err) {
                res.json({
                    status: "error",
                    message: err,
                });
            }
            res.json({
                status: "success",
                message: "Collection of executions",
                data: executions
            });
        });
    }
};
// Handle create exceution actions
exports.new = function (req, res) {
    var execution = new Execution(req.body);
    execution.state="REGISTER";


    Test.findById(execution.test_id, function (err, test) {
        if (err)
        res.json(err);
            execution.test_type=test.type;
            execution.test_mode=test.mode;
            execution.mutation=test.mutation;
            execution.mutation_value=test.mutation_value;
            console.log(test.aplication_id);

            Application.findById(test.aplication_id, function (err, app) {
                if (err)
                res.json(err);

                execution.app_type=app.type; 

                     // save the app and check for errors
                    execution.save(function (err) {
                        if (err)
                            res.json(err);
                        res.json({
                            message: 'New execution created!',
                            data: execution
                        });
                    });
                });
        });
};
// Handle view execution info
exports.view = function (req, res) {
    Execution.findById(req.params.execution_id, function (err, execution) {
        if (err)
            res.send(err);
        res.json({
            message: 'Execution details..',
            data: execution
        });
    });
};
// Handle update execution info
exports.update = function (req, res) {
    Execution.findById(req.params.execution_id, function (err, execution) {
        if (err)
            res.send(err);
		execution.test_id = req.body.test_id;
		execution.result_id = req.body.aplication_id;
		execution.state = req.body.state;
		execution.schedule = req.body.schedule;
        // save the execution and check for errors
        execution.save(function (err) {
            if (err)
                res.json(err);
            res.json({
                message: 'Execution updated',
                data: execution
            });
        });
    });
};

// Handle execution app
exports.delete = function (req, res) {
    Execution.remove({
        _id: req.params.execution_id
    }, function (err, execution) {
        if (err)
            res.send(err);
        res.json({
            status: "success",
            message: 'Execution deleted'
        });
    });
};