const Version = require('../models/version.model.js');

// Create and Save a new Version
exports.create = (req, res) => {
    // Validate request
    if(!req.body.name) {
        return res.status(400).send({
            message: "Version name can not be empty"
        });
    }

    // Create a Version
    const version = new Version({
    version : req.body.version || "Untitled Version",
    aplication_id :req.body.aplication_id,
    url_repo:req.body.url_repo,
    url_app: req.body.url_app
    });

    // Save Version in the database
    version.save()
    .then(data => {
        res.send(data);
        /*res.json({
            message: 'New Version created.',
            data: data
        })*/
    }).catch(err => {
        res.status(500).send({
            message: err.message || "Some error occurred while creating the Version."
        });
    });

};

// Retrieve and return all Versions from the database.
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

    Version.countDocuments(query,function(err, c) {
                if (err) {
                    console.log('Error');
                }else{
                count=c;
              
                }
           });
    Version.find(query,null,skip).sort(sort)
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

// Find a single Version with a VersionId
exports.findOne = (req, res) => {
    Version.findById(req.params.versionId)
    .then(version => {
        if(!version) {
            return res.status(404).send({
                message: "Version not found with id " + req.params.versionId
            });            
        }
        res.send(version);
    }).catch(err => {
        if(err.kind === 'ObjectId') {
            return res.status(404).send({
                message: "Version not found with id " + req.params.versionId
            });                
        }
        return res.status(500).send({
            message: "Error retrieving version with id " + req.params.versionId
        });
    });
};

// Update a Version identified by the VersionId in the request
exports.update = (req, res) => {
    // Validate Request
    if(!req.body.name) {
        return res.status(400).send({
            message: "Version name can not be empty"
        });
    }

    // Find version and update it with the request body
    Version.findByIdAndUpdate(req.params.versionId, {
        version : req.body.version || "Untitled Version",
		aplication_id :req.body.aplication_id,
		url_repo:req.body.url_repo,
		url_app: req.body.url_app
    }, {new: true})
    .then(version => {
        if(!version) {
            return res.status(404).send({
                message: "Version not found with id " + req.params.versionId
            });
        }
        res.send(version);
    }).catch(err => {
        if(err.kind === 'ObjectId') {
            return res.status(404).send({
                message: "Version not found with id " + req.params.versionId
            });                
        }
        return res.status(500).send({
            message: "Error updating version with id " + req.params.versionId
        });
    });

};

// Delete a Version with the specified VersionId in the request
exports.delete = (req, res) => {
    console.log();
    Version.findByIdAndRemove(req.params.versionId)
    .then(version => {
        if(!version) {
            return res.status(404).send({
                message: "Version not found with id " + req.params.versionId
            });
        }
        res.send({message: "Version deleted successfully!"});
    }).catch(err => {
        if(err.kind === 'ObjectId' || err.name === 'NotFound') {
            return res.status(404).send({
                message: "Version not found with id " + req.params.versionId
            });                
        }
        return res.status(500).send({
            message: "Could not delete version with id " + req.params.versionId
        });
    });
};
