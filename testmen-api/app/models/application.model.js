const mongoose = require('mongoose');

const ApplicationSchema = mongoose.Schema({
    name: {
        type: String,
        required: true
    },
    type: {
        type: String,
        required: true,
        enum: ['WEB', 'MOVIL']
    },
    version: String,
    url_test: String,
    url_repo: String,
    url_app: String
    },
    //Mongoose uses this option to automatically add two new fields - createdAt and updatedAt to the schema.
    {
        timestamps: true
    });

module.exports = mongoose.model('Application', ApplicationSchema);