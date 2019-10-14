const Param = require('../models/param.model.js');

// Create and Save a new Param
exports.create = (req, res) => {
    // Validate request
    if(!req.body.name) {
        return res.status(400).send({
            message: "Param name can not be empty"
        });
    }

    // Create a Param
    const param = new Param({
    param : req.body.param || "Untitled Param",
    test_id :req.body.test_id
    });

    // Save Param in the database
    param.save()
    .then(data => {
        res.send(data);
        /*res.json({
            message: 'New Param created.',
            data: data
        })*/
    }).catch(err => {
        res.status(500).send({
            message: err.message || "Some error occurred while creating the Param."
        });
    });

};

// Retrieve and return all Params from the database.
exports.findAll = (req, res) => {
    console.log("findAll");
    
    var sort={};
    if(req.query._sort){
        var arr=[JSON.parse(JSON.stringify(req.query._sort))];
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
       let  result=[JSON.parse(req.query.filter)];
        for(let i of result){
            var value=Object.keys(i).map(key => i[key]);
            query[Object.keys(i)]=new RegExp(value);
        }
        console.log(query);
    }
    var count=0;

    Param.countDocuments(query,function(err, c) {
                if (err) {
                    console.log('Error');
                }else{
                count=c;
              
                }
           });
    Param.find(query,null,skip).sort(sort)
    .then(aplications => {
        console.log('Count is ' + count);
        res.set('x-total-count',count)
        res.send(aplications);
    }).catch(err => {
        res.status(500).send({
            message: err.message || "Some error occurred while retrieving aplications."
        });
    });
};

// Find a single Param with a ParamId
exports.findOne = (req, res) => {
    Param.findById(req.params.paramId)
    .then(param => {
        if(!param) {
            return res.status(404).send({
                message: "Param not found with id " + req.params.paramId
            });            
        }
        res.send(param);
    }).catch(err => {
        if(err.kind === 'ObjectId') {
            return res.status(404).send({
                message: "Param not found with id " + req.params.paramId
            });                
        }
        return res.status(500).send({
            message: "Error retrieving param with id " + req.params.paramId
        });
    });
};

// Update a Param identified by the ParamId in the request
exports.update = (req, res) => {
    // Validate Request
    if(!req.body.name) {
        return res.status(400).send({
            message: "Param name can not be empty"
        });
    }

    // Find param and update it with the request body
    Param.findByIdAndUpdate(req.params.paramId, {
        param : req.body.param || "Untitled Param",
		test_id :req.body.test_id
    }, {new: true})
    .then(param => {
        if(!param) {
            return res.status(404).send({
                message: "Param not found with id " + req.params.paramId
            });
        }
        res.send(param);
    }).catch(err => {
        if(err.kind === 'ObjectId') {
            return res.status(404).send({
                message: "Param not found with id " + req.params.paramId
            });                
        }
        return res.status(500).send({
            message: "Error updating param with id " + req.params.paramId
        });
    });

};

// Delete a Param with the specified ParamId in the request
exports.delete = (req, res) => {
    console.log();
    Param.findByIdAndRemove(req.params.paramId)
    .then(param => {
        if(!param) {
            return res.status(404).send({
                message: "Param not found with id " + req.params.paramId
            });
        }
        res.send({message: "Param deleted successfully!"});
    }).catch(err => {
        if(err.kind === 'ObjectId' || err.name === 'NotFound') {
            return res.status(404).send({
                message: "Param not found with id " + req.params.paramId
            });                
        }
        return res.status(500).send({
            message: "Could not delete param with id " + req.params.paramId
        });
    });
};
