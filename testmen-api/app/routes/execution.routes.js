module.exports = (app) => {
    const Executions = require('../controllers/execution.controller.js');
	
	//Retrieve all executions
	app.get('/execution', Executions.index);
	//Create a new execution
	app.post('/execution', Executions.new);
	//View one execution
	app.get('/execution/:execution_id', Executions.view);
    //Update one execution
	app.patch('/execution/:execution_id', Executions.update)
	//Update one execution
	app.put('/execution/:execution_id', Executions.update)
	//Delete execution
	app.delete('/execution/:execution_id', Executions.delete);
}