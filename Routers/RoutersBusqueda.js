const express = require('express');
const routerBusqueda = express.Router();
const conexion = require('../DDBB/ddbb.js');

routerBusqueda.use(express.json());

// GET /api/cosmere/buscar?q=término
routerBusqueda.get('/', (req, res) => {
  const q = (req.query.q || '').trim();

  if (!q) {
    return res.send({ libros: [], personajes: [], mundos: [] });
  }

  const termino = `%${q}%`;

  const queryLibros = `
    SELECT id_libro, titulo, portada, anio_publicacion
    FROM libros
    WHERE titulo LIKE ?
    ORDER BY titulo ASC
    LIMIT 20
  `;

  const queryPersonajes = `
    SELECT id_personaje, nombre, imagen_url, rol, importancia
    FROM personajes
    WHERE nombre LIKE ?
    ORDER BY nombre ASC
    LIMIT 20
  `;

  const queryMundos = `
    SELECT id_mundo, nombre, imagen_url, descripcion
    FROM mundos
    WHERE nombre LIKE ?
    ORDER BY nombre ASC
    LIMIT 20
  `;

  Promise.all([
    conexion.query(queryLibros, [termino]),
    conexion.query(queryPersonajes, [termino]),
    conexion.query(queryMundos, [termino])
  ])
    .then(([libros, personajes, mundos]) => {
      res.send({ libros, personajes, mundos });
    })
    .catch(err => {
      console.error('Error búsqueda:', err);
      res.status(500).send('Error en la base de datos');
    });
});

module.exports = routerBusqueda;