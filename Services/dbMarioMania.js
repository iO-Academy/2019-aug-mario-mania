var mysql = require('mysql');

var connection = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: 'password',
    database: 'mario-mania'
})

module.exports = connection
