const Application = require('../models/application.model.js');

// Create and Save a new Application
exports.create = (req, res) => {
    // Validate request
    if(!req.body.name) {
        return res.status(400).send({
            message: "Application name can not be empty"
        });
    }

    // Create a Application
    const application = new Application({
		name : req.body.name || "Untitled Application",
		type :req.body.type,
		versions:req.body.versions,
    });

    // Save Application in the database
    application.save().then(data => {
        res.send(data);
        /*res.json({
            message: 'New Application created.',
            data: data
        })*/
    }).catch(err => 
	{
        res.status(500).send({
            message: err.message || "Some error occurred while creating the Application."
        });
    });

};

// Retrieve and return all Aplications from the database.
exports.findAll = async (req, res) => {
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
    
   await  Application.countDocuments(query,function(err, c) {
                if (err) {
                    console.log('Error');
                }else{
                count=c;
              
                }
           });

   await Application.find(query,null,skip).sort(sort)
    .then(aplications => {
        console.log('Count is ' + count);
        res.set('x-total-count',count)
        var data=aplications.map(function(m) {
            //console.log(m.toObject()); 
            //console.log(m.toJSON()); 
            return m.toJSON();});
        res.send(data);
    }).catch(err => {
        res.status(500).send({
            message: err.message || "Some error occurred while retrieving aplications."
        });
    });
};

// Find a single Application with a AplicationId
exports.findOne = (req, res) => {
    console.log("findOne");
    Application.findById(req.params.applicationId)
    .then(application => {
        if(!application) {
            return res.status(404).send({
                message: "Application not found with id " + req.params.applicationId
            });            
        }
        res.send(application.toJSON());
    }).catch(err => {
        if(err.kind === 'ObjectId') {
            return res.status(404).send({
                message: "Application not found with id " + req.params.applicationId
            });                
        }
        return res.status(500).send({
            message: "Error retrieving application with id " + req.params.applicationId
        });
    });
};

// Update a Application identified by the AplicationId in the request
exports.update = (req, res) => {
    // Validate Request
    if(!req.body.name) {
        return res.status(400).send({
            message: "Application name can not be empty"
        });
    }

    // Find application and update it with the request body
    Application.findByIdAndUpdate(req.params.applicationId, {
        name :req.body.name || "Untitled Application",
        type : req.body.type,
        versions:req.body.versions,
    }, {new: true})
    .then(application => {
        if(!application) {
            return res.status(404).send({
                message: "Application not found with id " + req.params.applicationId
            });
        }
        res.send(application.toJSON());
    }).catch(err => {
        if(err.kind === 'ObjectId') {
            return res.status(404).send({
                message: "Application not found with id " + req.params.applicationId
            });                
        }
        return res.status(500).send({
            message: "Error updating application with id " + req.params.applicationId
        });
    });

};

// Delete a Application with the specified AplicationId in the request
exports.delete = (req, res) => {
    console.log();
    Application.findByIdAndRemove(req.params.applicationId)
    .then(application => {
        if(!application) {
            return res.status(404).send({
                message: "Application not found with id " + req.params.applicationId
            });
        }
        res.send({message: "Application deleted successfully!"});
    }).catch(err => {
        if(err.kind === 'ObjectId' || err.name === 'NotFound') {
            return res.status(404).send({
                message: "Application not found with id " + req.params.applicationId
            });                
        }
        return res.status(500).send({
            message: "Could not delete application with id " + req.params.applicationId
        });
    });
};
