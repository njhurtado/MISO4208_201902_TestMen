const express = require('express');
const bodyParser = require('body-parser');
const dbConfig = require('./config/database.config.js');
const mongoose = require('mongoose');
//var cors = require('cors');

// create express app
const app = express();

// parse requests of content-type - application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }));

// parse requests of content-type - application/json
app.use(bodyParser.json());
app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "http://localhost:8000"); // update to match the domain you will make the request from
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    res.header("Access-Control-Expose-Headers", "X-Total-Count");
    
    next();
  });

// Require Notes routes
require('./app/routes/application.routes.js')(app);
require('./app/routes/execution.routes.js')(app);
require('./app/routes/test.routes.js')(app);
require('./app/routes/file.routes.js')(app);
require('./app/routes/param.routes.js')(app);
require('./app/routes/result.routes.js')(app);
require('./app/routes/tool.routes.js')(app);
require('./app/routes/version.routes.js')(app);

// define a simple route
app.get('/', (req, res) => {

    res.json({"message": "Welcome to EasyNotes application. Take notes quickly. Organize and keep track of all your notes."});
});

//app.use(cors({origin: '*'}));
// listen for requests
app.listen(3000, () => {
    console.log("Server is listening on port 3000");
});


mongoose.Promise = global.Promise;

// Connecting to the database
mongoose.connect(dbConfig.url, {
    useNewUrlParser: true,
    useFindAndModify: false 
}).then(() => {
    console.log("Successfully connected to the database"); 
}).catch(err => {
   
    console.log('Could not connect to the database. Exiting now...', err);
    process.exit();
});
