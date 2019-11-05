const File = require('../models/file.model.js');

// Create and Save a new File
exports.create = (req, res) => {
    // Validate request
    if(!req.body.name) {
        return res.status(400).send({
            message: "File name can not be empty"
        });
    }

    // Create a File
    const file = new File({
    result_id : req.body.result_id,
    name : req.body.name || "Untitled File",
    url: req.body.url
    });

    // Save File in the database
    file.save()
    .then(data => {
        res.send(data);
        /*res.json({
            message: 'New File created.',
            data: data
        })*/
    }).catch(err => {
        res.status(500).send({
            message: err.message || "Some error occurred while creating the File."
        });
    });

};

// Retrieve and return all Files from the database.
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
    
   await  File.countDocuments(query,function(err, c) {
                if (err) {
                    console.log('Error');
                }else{
                count=c;
              
                }
           });

   await File.find(query,null,skip).sort(sort)
    .then(files => {
        console.log('Count is ' + count);
        res.set('x-total-count',count)
        var data=files.map(function(m) {
            //console.log(m.toObject()); 
            //console.log(m.toJSON()); 
            return m.toJSON();});
        res.send(data);
    }).catch(err => {
        res.status(500).send({
            message: err.message || "Some error occurred while retrieving files."
        });
    });
};

// Find a single File with a FileId
exports.findOne = (req, res) => {
    File.findById(req.params.fileId)
    .then(file => {
        if(!file) {
            return res.status(404).send({
                message: "File not found with id " + req.params.fileId
            });            
        }
        res.send(file.toJSON());
    }).catch(err => {
        if(err.kind === 'ObjectId') {
            return res.status(404).send({
                message: "File not found with id " + req.params.fileId
            });                
        }
        return res.status(500).send({
            message: "Error retrieving file with id " + req.params.fileId
        });
    });
};

// Update a File identified by the FileId in the request
exports.update = (req, res) => {
    // Validate Request
    if(!req.body.name) {
        return res.status(400).send({
            message: "File name can not be empty"
        });
    }

    // Find file and update it with the request body
    File.findByIdAndUpdate(req.params.fileId, {
        result_id : req.body.result_id,
		name : req.body.name || "Untitled File",
		url: req.body.url
    }, {new: true})
    .then(file => {
        if(!file) {
            return res.status(404).send({
                message: "File not found with id " + req.params.fileId
            });
        }
        res.send(file.toJSON());
    }).catch(err => {
        if(err.kind === 'ObjectId') {
            return res.status(404).send({
                message: "File not found with id " + req.params.fileId
            });                
        }
        return res.status(500).send({
            message: "Error updating file with id " + req.params.fileId
        });
    });

};

// Delete a File with the specified FileId in the request
exports.delete = (req, res) => {
    console.log();
    File.findByIdAndRemove(req.params.fileId)
    .then(file => {
        if(!file) {
            return res.status(404).send({
                message: "File not found with id " + req.params.fileId
            });
        }
        res.send({message: "File deleted successfully!"});
    }).catch(err => {
        if(err.kind === 'ObjectId' || err.name === 'NotFound') {
            return res.status(404).send({
                message: "File not found with id " + req.params.fileId
            });                
        }
        return res.status(500).send({
            message: "Could not delete file with id " + req.params.fileId
        });
    });
};
