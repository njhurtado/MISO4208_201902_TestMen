const Tool = require('../models/tool.model.js');

// Create and Save a new Tool
exports.create = (req, res) => {
    // Validate request
    if(!req.body.name) {
        return res.status(400).send({
            message: "Tool name can not be empty"
        });
    }

    // Create a Tool
    const tool = new Tool({
    name : req.body.name || "Untitled Tool",
    version:req.body.version,
    test_id: req.body.test_id
    });

    // Save Tool in the database
    tool.save()
    .then(data => {
        res.send(data);
        /*res.json({
            message: 'New Tool created.',
            data: data
        })*/
    }).catch(err => {
        res.status(500).send({
            message: err.message || "Some error occurred while creating the Tool."
        });
    });

};

// Retrieve and return all Tools from the database.
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

    Tool.countDocuments(query,function(err, c) {
                if (err) {
                    console.log('Error');
                }else{
                count=c;
              
                }
           });
    Tool.find(query,null,skip).sort(sort)
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

// Find a single Tool with a ToolId
exports.findOne = (req, res) => {
    Tool.findById(req.params.toolId)
    .then(tool => {
        if(!tool) {
            return res.status(404).send({
                message: "Tool not found with id " + req.params.toolId
            });            
        }
        res.send(tool);
    }).catch(err => {
        if(err.kind === 'ObjectId') {
            return res.status(404).send({
                message: "Tool not found with id " + req.params.toolId
            });                
        }
        return res.status(500).send({
            message: "Error retrieving tool with id " + req.params.toolId
        });
    });
};

// Update a Tool identified by the ToolId in the request
exports.update = (req, res) => {
    // Validate Request
    if(!req.body.name) {
        return res.status(400).send({
            message: "Tool name can not be empty"
        });
    }

    // Find tool and update it with the request body
    Tool.findByIdAndUpdate(req.params.toolId, {
        name : req.body.name || "Untitled Tool",
		version:req.body.version,
		test_id: req.body.test_id
    }, {new: true})
    .then(tool => {
        if(!tool) {
            return res.status(404).send({
                message: "Tool not found with id " + req.params.toolId
            });
        }
        res.send(tool);
    }).catch(err => {
        if(err.kind === 'ObjectId') {
            return res.status(404).send({
                message: "Tool not found with id " + req.params.toolId
            });                
        }
        return res.status(500).send({
            message: "Error updating tool with id " + req.params.toolId
        });
    });

};

// Delete a Tool with the specified ToolId in the request
exports.delete = (req, res) => {
    console.log();
    Tool.findByIdAndRemove(req.params.toolId)
    .then(tool => {
        if(!tool) {
            return res.status(404).send({
                message: "Tool not found with id " + req.params.toolId
            });
        }
        res.send({message: "Tool deleted successfully!"});
    }).catch(err => {
        if(err.kind === 'ObjectId' || err.name === 'NotFound') {
            return res.status(404).send({
                message: "Tool not found with id " + req.params.toolId
            });                
        }
        return res.status(500).send({
            message: "Could not delete tool with id " + req.params.toolId
        });
    });
};