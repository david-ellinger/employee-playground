const express = require('express');
const bodyParser = require('body-parser');
const mysql = require('mysql');
const path = require('path');
const app = express();
const port = 5000;
const {getHomePage} = require('./routes/index');
const db = mysql.createConnection({
    host:'localhost',
    user: 'user',
    password: 'password',
    database: 'db'
});

db.connect(err => {
    if(err) {
        throw err;
    }
    console.log("Connected to database");
})
global.db = db; // Refactor later.

app.set('port', process.env.port || port); // set express to use this port
app.set('views', __dirname + '/views'); // set express to look in this folder to render our view
app.set('view engine', 'ejs'); // configure template engine
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json()); // parse form data client
app.use(express.static(path.join(__dirname, 'public'))); // configure express to use public folder

app.listen(port, () => {
    console.log(`Server running on port: ${port}`);
});

app.get('/', getHomePage);