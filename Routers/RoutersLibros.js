const express = require('express');
const routerLibros = express.Router();
const conexion = require('../DDBB/ddbb.js');

routerLibros.use(express.json());


/* ================================================================
   GET todos los libros
   GET /api/cosmere/libros
================================================================ */
routerLibros.get('/', (req, res) => {
    conexion.query('SELECT * FROM libros')
        .then(rows => {
            res.send(rows);
        })
        .catch(err => {
           console.error('Error detallado:', err); 
            res.status(500).send('Error en la base de datos');
        });
});


/* ================================================================
    GET libros por id
  // GET /api/cosmere/libros/:id
================================================================ */

routerLibros.get('/:id', (req, res) => {
    const { id } = req.params;

    const queryLibro = `
        SELECT l.*, m.nombre AS nombre_mundo
        FROM libros l
        LEFT JOIN mundos m ON l.id_mundo = m.id_mundo
        WHERE l.id_libro = ?
    `;

    const queryPersonajes = `
        SELECT p.id_personaje, p.nombre, p.imagen_url, p.importancia, p.rol
        FROM personajes p
        INNER JOIN libros_personajes lp ON p.id_personaje = lp.id_personaje
        WHERE lp.id_libro = ? AND p.importancia = 'protagonista'
        ORDER BY p.nombre ASC
    `;

    Promise.all([
        conexion.query(queryLibro, [id]),
        conexion.query(queryPersonajes, [id])
    ])
    .then(([libroRows, personajesRows]) => {
        if (libroRows.length === 0) {
            return res.status(404).send('Libro no encontrado');
        }
        const libro = libroRows[0];
        libro.personajes = personajesRows;
        res.send(libro);
    })
    .catch(err => {
        console.error('Error detalle libro:', err);
        res.status(500).send('Error en la base de datos');
    });
});


module.exports = routerLibros;