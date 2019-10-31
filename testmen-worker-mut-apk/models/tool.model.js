const mongoose = require('mongoose');

const ToolSchema = mongoose.Schema({
    name: {
        type: String,
        required: true
    },
    version: String,
	test_id: {
        type: String
    },
},
//Mongoose uses this option to automatically add two new fields - createdAt and updatedAt to the schema.
{
	timestamps: true
});

module.exports = mongoose.model('Tool', ToolSchema);