module.exports = (app) => {
	const resultController = require('../controllers/result.controller.js');
	//Retrieve result index
	app.get('/test', resultController.index)
	//Create a new result
	app.post('/result', resultController.new)
	//Retrieve a single result
	app.get('/result/:result_id', resultController.view)
	//Delete a single test
	app.delete('/result/:result_id', resultController.delete)
}
