module.exports = (app) => {
    const Executions = require('../controllers/execution.controller.js');

    // Create a new Application
    app.post('/executions', Executions.create); 
    // Update a Application with AplicationId
    app.put('/executions/:applicationId', Executions.update);

    // Delete a Application with AplicationId
    app.delete('/executions/:applicationId', Executions.delete);

     // Retrieve a single Application with AplicationId
     app.get('/executions/:applicationId', Executions.findOne);
    // Retrieve all Aplications
    app.get('/executions', Executions.findAll);
}