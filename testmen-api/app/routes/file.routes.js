module.exports = (app) => {
    const Files = require('../controllers/file.controller.js');

    // Create a new File
    app.post('/files', Files.create); 
	
    // Update a File with FileId
    app.put('/files/:fileId', Files.update);

    // Delete a File with FileId
    app.delete('/files/:fileId', Files.delete);

    // Retrieve a single File with FileId
    app.get('/files/:FileId', Files.findOne);
    
	// Retrieve all Files
    app.get('/files', Files.findAll);
}