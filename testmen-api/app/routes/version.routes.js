module.exports = (app) => {
    const Versions = require('../controllers/version.controller.js');

    // Create a new Version
    app.post('/versions', Versions.create); 
    // Update a Version with VersionId
    app.put('/versions/:versionId', Versions.update);

    // Delete a Version with VersionId
    app.delete('/versions/:versionId', Versions.delete);

     // Retrieve a single Version with VersionId
     app.get('/versions/:versionId', Versions.findOne);
    // Retrieve all versions
    app.get('/versions', Versions.findAll);
}