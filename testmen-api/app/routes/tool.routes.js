module.exports = (app) => {
    const Tools = require('../controllers/application.controller.js');

    // Create a new Tool
    app.post('/tools', Tools.create); 
    // Update a Tool with toolId
    app.put('/tools/:toolId', Tools.update);

    // Delete a Tool with toolId
    app.delete('/tools/:toolId', Tools.delete);

     // Retrieve a single Tool with toolId
     app.get('/tools/:toolId', Tools.findOne);
    // Retrieve all Tools
    app.get('/tools', Tools.findAll);
}