// Import model
Test = require('../models/test.model.js');
const Version = require('../models/version.model.js');
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
    
   await  Test.countDocuments(query,function(err, c) {
                if (err) {
                    console.log('Error');
                }else{
                count=c;
              
                }
           });

   await Test.find(query,null,skip).sort(sort).populate({ path: 'app', select: 'name type' })
    .then(tests => {
        console.log('Count is ' + count);
        res.set('x-total-count',count)
        var data=tests.map(function(m) {
            //console.log(m.toObject()); 
            //console.log(m.toJSON()); 
            return m.toJSON();});
        res.send(data);
    }).catch(err => {
        res.status(500).send({
            message: err.message || "Some error occurred while retrieving tests."
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
                    res.json(tests.toJSON());
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
                aplication_id:ver.aplication_id,
                //state:req.body.state,
                mutation:req.body.mutation,
                mutation_value:req.body.mutation_value

            }, {new: true})
            .then(test => {
                if(!test) {
                    return res.status(404).send({
                        message: "Test not found with id " + req.params.test_id
                    });
                }
                res.json(test.toJSON());
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
            data: test.toJSON()
        });
    });
};




exports.findOne = (req, res) => {
    console.log("findOne");
    Test.findById(req.params.test_id)
    .then(test => {
        if(!test) {
            return res.status(404).send({
                message: "Test not found with id " + req.params.test_id
            });            
        }
        res.send(test.toJSON());
    }).catch(err => {
        if(err.kind === 'ObjectId') {
            return res.status(404).send({
                message: "Test not found with id " + req.params.test_id
            });                
        }
        return res.status(500).send({
            message: "Error retrieving Test with id " + req.params.test_id
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