const mysql = require('mysql');
const Config = require('./config.js');

const connection = mysql.createConnection(Config);
