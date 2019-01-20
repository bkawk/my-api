'use strict'
const express = require('express');
const bodyParser = require('body-parser');
const helmet = require('helmet');


const app = express();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));
app.use(helmet());

app.get('/', (req, res) => res.send('API Home'));
app.listen(3000, () => console.log('API @ http://localhost:3000'));

module.exports = app;
