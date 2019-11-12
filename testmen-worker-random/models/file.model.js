const mongoose = require('mongoose');

const FileSchema = mongoose.Schema({
    result_id: {
		type: String,
		required: true
	},
	name: {
        type: String,
        required: true
    },
    url: String
},
//Mongoose uses this option to automatically add two new fields - createdAt and updatedAt to the schema.
{
	timestamps: true
}
);

module.exports = mongoose.model('File', FileSchema);