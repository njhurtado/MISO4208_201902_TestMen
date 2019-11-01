// Import model
const Result = require('../models/result.model.js');
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
    
   await  Result.countDocuments(query,function(err, c) {
                if (err) {
                    console.log('Error');
                }else{
                count=c;
              
                }
           });

   await Result.find(query,null,skip).sort(sort)
    .then(results => {
        console.log('Count is ' + count);
        res.set('x-total-count',count)
        var data=results.map(function(m) {
            //console.log(m.toObject()); 
            //console.log(m.toJSON()); 
            return m.toJSON();});
        res.send(data);
    }).catch(err => {
        res.status(500).send({
            message: err.message || "Some error occurred while retrieving results."
        });
    });
};
// Handle create result actions
exports.new = function (req, res) {
    var result = new Result(req.body);
    // save the app and check for errors
    result.save(function (err) {
        if (err)
             res.json(err);
        res.json({
            message: 'New result was created!',
            data: result.toJSON()
        });
    });
};
// Handle view result info
exports.view = function (req, res) {
    Result.findById(req.params.execution_id, function (err, result) {
        if (err)
            res.send(err);
        res.json({
            message: 'Details of result..',
            data: result.toJSON()
        });
    });
};
// Handle update result info
exports.update = function (req, res) {
    Result.findById(req.params.result_id, function (err, result) {
        if (err)
            res.send(err);
        result.execution_id = req.body.execution_id;
        result.file_id = req.body.file_id;
        result.run_date = req.body.run_date;
        
        // save the app and check for errors
        result.save(function (err) {
            if (err)
                res.json(err);
            res.json({
                message: 'Result updated',
                data: result.toJSON()
            });
        });
    });
};

// Handle delete result
exports.delete = function (req, res) {
    Result.remove({
        _id: req.params.result_id
    }, function (err, result) {
        if (err)
            res.send(err);
        res.json({
            status: "success",
            message: 'Result deleted'
        });
    });
};
