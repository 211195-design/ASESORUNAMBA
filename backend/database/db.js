const mysql = require("mysql");

const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    password: "",
    database: "asesor_unamba"
});

connection.connect((err) => {
    if (err) throw err;
    console.log("BD conectada");
});

module.exports = connection;
