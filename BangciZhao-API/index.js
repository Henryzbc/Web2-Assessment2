import mysql from "./crowdfunding_db.js";

mysql.connect((err) => {
    if (err) {
        throw err;
    }
});

import { createRequire } from 'module';
const require = createRequire(import.meta.url);
const express = require('express');

const app = express();

app.get('/Home', (req, res) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    mysql.query('SELECT * FROM fundraiser', (queryErr, queryResult) => {
        if (queryErr) {
            console.log(queryErr);
        } else {
            res.end(JSON.stringify(queryResult));
        }
    });
});

app.get('/SearchFundraisers', (req, res) => {
    const value = req.query.data;
    res.setHeader('Access-Control-Allow-Origin', '*');
    mysql.query(`SELECT * FROM fundraiser WHERE ORGANIZER like "${value}" or CAPTION like "${value}" or CITY like "${value}"`, (queryErr, queryResult) => {
        if (queryErr) {
            console.log(queryErr);
        } else {
            res.end(JSON.stringify(queryResult));
        }
    });
});

// search active Fundraisers
app.get('/SearchActiveFundraisers', (req, res) => {
    const value = req.query.data;
    res.setHeader('Access-Control-Allow-Origin', '*');
    mysql.query(`SELECT * FROM fundraiser WHERE ACTIVE like "${value}"`, (queryErr, queryResult) => {
        if (queryErr) {
            console.log(queryErr);
        } else {
            res.end(JSON.stringify(queryResult));
        }
    });
});

app.get('/Fundraiser', (req, res) => {
    const id = req.query.id;
    res.setHeader('Access-Control-Allow-Origin', '*');
    mysql.query('SELECT * FROM fundraiser WHERE FUNDRAISER_ID = '+id, (queryErr, queryResult) => {
        if (queryErr) {
            console.log(queryErr);
        } else {
            res.end(JSON.stringify(queryResult));
        }
    });
});

//query all category
app.get('/category', (req, res) => {
    res.setHeader('Access-Control-Allow-Origin', '*');
    mysql.query('SELECT * FROM category', (queryErr, queryResult) => {
        if (queryErr) {
            console.log(queryErr);
        } else {
            res.end(JSON.stringify(queryResult));
        }
    });
});

app.listen(4000, () => {
    console.log('Server is running on port 4000.');
});