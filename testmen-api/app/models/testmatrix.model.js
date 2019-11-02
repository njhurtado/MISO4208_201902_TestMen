var mongoose = require('mongoose');

var TestMatrixSchema = mongoose.Schema({    
    test_id: {
        type: String,
        required: true
    },
    aplication_id: {
        type: String,
        required: true
    },
    version_id: {
        type: String,
        required: true
    },
	tool_id: {
        type: String,
        required: true
    },   
    app_type: {
        type: String
    },
    test_type: {
        type: String
    },
    test_mode: {
        type: String
    },
    mutation: {
        type: String
    },
    mutation_value: {
        type: String
    },
    tool_type: {
        type: String
    },
    tool_size: {
        type: String
    },
    tool_version: {
        type: String
    }
},
//Mongoose uses this option to automatically add two new fields - createdAt and updatedAt to the schema.
{
	timestamps: true
});
    TestMatrixSchema.virtual('id').get(function () {
    return this._id;
  });
  TestMatrixSchema.set('toJSON', { getters: true, virtuals: true });
  TestMatrixSchema.set('toObject', { getters: true });
var TestMatrix = module.exports = mongoose.model('TestMatrix', TestMatrixSchema);

module.exports.get = function (callback, limit) {
    TestMatrix.find(callback).limit(limit);
}