// Import model
const Execution = require('../models/execution.model.js');
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
    
   await  Execution.countDocuments(query,function(err, c) {
                if (err) {
                    console.log('Error');
                }else{
                count=c;
              
                }
           });

   await Execution.find(query,null,skip).sort(sort)
    .then(execution => {
        console.log('Count is ' + count);
        res.set('x-total-count',count)
        var data=execution.map(function(m) {
            //console.log(m.toObject()); 
            //console.log(m.toJSON()); 
            return m.toJSON();});
        res.send(data);
    }).catch(err => {
        res.status(500).send({
            message: err.message || "Some error occurred while retrieving execution."
        });
    });
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
                            data: execution.toJSON()
                        });
                    });
                });
        });
};
// Handle view execution info
exports.view = function (req, res) {
    console.log("findOne");
    Execution.findById(req.params.execution_id)
    .then(execution => {
        if(!execution) {
            return res.status(404).send({
                message: "Execution not found with id " + req.params.execution_id
            });            
        }
        res.send(execution.toJSON());
    }).catch(err => {
        if(err.kind === 'ObjectId') {
            return res.status(404).send({
                message: "Execution not found with id " + req.params.execution_id
            });                
        }
        return res.status(500).send({
            message: "Error retrieving Execution with id " + req.params.execution_id
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
                data: execution.toJSON()
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