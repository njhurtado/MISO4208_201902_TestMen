const mongoose = require('mongoose');

const VersionSchema = mongoose.Schema({
    version: {
        type: String,
        required: true
    },
    aplication_id: {
        type: String,
        required: true
    },
	url_repo: String,
    url_app: String
    },
    //Mongoose uses this option to automatically add two new fields - createdAt and updatedAt to the schema.
    {
        timestamps: true
    });

module.exports = mongoose.model('Version', VersionSchema);