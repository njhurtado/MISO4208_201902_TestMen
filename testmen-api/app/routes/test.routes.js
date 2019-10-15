module.exports = (app) => {
	const testController = require('../controllers/test.controller.js');
	//Retrieve test index
	app.get('/tests', testController.index)
	//Create a new test
	app.post('/tests', testController.new)
	//Retrieve a single test
	app.get('/tests/:test_id', testController.view)
	//Delete a single test
	app.delete('/tests/:test_id', testController.delete)
}