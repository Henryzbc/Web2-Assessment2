import { createRequire } from 'module'; 
const require = createRequire(import.meta.url);
const mysql = require('mysql')
const db = mysql.createConnection({
    user: 'root',
    password: '123456',
    host: 'localhost',
    database: 'crowdfunding_db'
})

export default db