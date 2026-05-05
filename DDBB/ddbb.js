const mariadb = require('mariadb');

const conexion = mariadb.createPool({
  host: 'localhost',
  user: 'root',
  password: 'root',
  database: 'cosmere_db',
  connectionLimit: 5
});

module.exports = conexion;