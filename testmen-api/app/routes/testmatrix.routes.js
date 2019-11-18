module.exports = (app) => {
    const TestMatrix = require('../controllers/testmatrix.controller.js');
	
	//Retrieve all testmatrixs
	app.get('/testmatrix', TestMatrix.index);
	//Create a new testmatrix
	app.post('/testmatrix', TestMatrix.new);
	//View one testmatrix
	app.get('/testmatrix/:testmatrix_id', TestMatrix.view);
	app.get('/matrixdataform', TestMatrix.getDataForm);
    //Update one testmatrix
	app.patch('/testmatrix/:testmatrix_id', TestMatrix.update)
	//Update one testmatrix
	app.put('/testmatrix/:testmatrix_id', TestMatrix.update)
	//Delete testmatrix
	app.delete('/testmatrix/:testmatrix_id', TestMatrix.delete);
}