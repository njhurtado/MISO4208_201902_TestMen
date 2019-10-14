const mongoose = require('mongoose');

const ParamSchema = mongoose.Schema({
    param: {
        type: String,
        required: true
    },
    test_id: String,
},
//Mongoose uses this option to automatically add two new fields - createdAt and updatedAt to the schema.
{
	timestamps: true
});

module.exports = mongoose.model('Param', ParamSchema);