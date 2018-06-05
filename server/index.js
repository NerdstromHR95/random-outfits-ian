const express = require('express');
const bodyParser = require('body-parser');
const db = require('../db');
const axios = require('axios');

const app = express();
const PORT = 8888;

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));


app.use(express.static(__dirname + '/../public/dist'));

app.listen(8888);