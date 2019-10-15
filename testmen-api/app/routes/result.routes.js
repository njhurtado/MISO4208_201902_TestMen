module.exports = (app) => {
	const resultController = require('../controllers/result.controller.js');
	//Retrieve result index
	app.get('/results', resultController.index)
	//Create a new result
	app.post('/results', resultController.new)
	//Retrieve a single result
	app.get('/results/:result_id', resultController.view)
	//Delete a single test
	app.delete('/results/:result_id', resultController.delete)
}
