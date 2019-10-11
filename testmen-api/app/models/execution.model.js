var mongoose = require('mongoose');

var ExecutionSchema = mongoose.Schema({
    test_id: {
        type: String,
        required: true
    },
    result_id: {
        type: String
    },
    state: {
        type: String,
        required: true,
        enum: ['REGISTER', 'EXECUTED','PENDING']
    },
    schedule: {
        type: Date,
        default: Date.now
    }
}
//Mongoose uses this option to automatically add two new fields - createdAt and updatedAt to the schema.
{
	timestamps: true
}
);

var Execution = module.exports = mongoose.model('Execution', ExecutionSchema);

module.exports.get = function (callback, limit) {
    Execution.find(callback).limit(limit);
}