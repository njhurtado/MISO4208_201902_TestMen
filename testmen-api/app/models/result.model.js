var mongoose = require('mongoose');
// Setup schema
var resultSchema = mongoose.Schema({
    execution_id: {
        type: String,
        required: true
    },
    test_id:{
        type: String,
        required: true
    },
    name_test:{
        type: String,
        required: true
    },
    type:{
        type: String,
        required: true,
        enum: ['Web','Movil']
    },
    state: {
        type: String,
        required: true,
        enum: ['Executed','Pending']
    },
    url_result:{
        type:String,
        required: false
    },
    create_date: {
        type: Date,
        default: Date.now
    }
});
// Export Prueba model
var Result = module.exports = mongoose.model('result', resultSchema);
module.exports.get = function (callback, limit) {
    Result.find(callback).limit(limit);
}
