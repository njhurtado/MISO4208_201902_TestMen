const mongoose = require('mongoose');
const Application = require('../models/application.model.js');
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
    VersionSchema.virtual('id').get(function () {
        return this._id;
      });
  /*  VersionSchema.virtual('app').get( async function () {
          var retorno={};
      var query=  Application.findById(this.aplication_id);

     await query.then(function (app) {
        retorno=app;
        console.log(retorno);
      })
        return retorno;
       
        //console.log(retorno);
      });*/
      VersionSchema.set('toJSON', { getters: true, virtuals: true });
      VersionSchema.set('toObject', { getters: true })
module.exports = mongoose.model('Version', VersionSchema);