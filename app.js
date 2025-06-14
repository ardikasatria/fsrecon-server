// app.js
const express = require('express');
const morgan = require('morgan');
const cookieParser = require('cookie-parser');
const bodyParser = require('body-parser');

const app = express();

app.use(morgan('dev'));
app.use(cookieParser());
app.use(bodyParser.json());

// Tambahkan route sederhana untuk testing
app.get('/', (req, res) => {
  res.send('API is working');
});

// Ekspor instance `app`
module.exports = app;
