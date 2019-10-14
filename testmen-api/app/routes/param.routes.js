module.exports = (app) => {
    const Params = require('../controllers/param.controller.js');

    // Create a new param
    app.post('/params', Params.create); 
    
	// Update a params with paramId
    app.put('/params/:paramId', Params.update);

    // Delete a param with paramId
    app.delete('/params/:paramId', Params.delete);

    // Retrieve a single param with paramId
    app.get('/params/:paramId', Params.findOne);
 
    // Retrieve all Aplications
    app.get('/params', Params.findAll);
}