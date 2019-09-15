module.exports = (app) => {
	const testController = require('../controllers/test.controller.js');
	//Retrieve test index
	app.get('/test', testController.index)
	//Create a new test
	app.post('/test', testController.new)
	//Retrieve a single test
	app.get('/test/:test_id', testController.view)
	//Delete a single test
	app.delete('/test/:test_id', testController.delete)
}