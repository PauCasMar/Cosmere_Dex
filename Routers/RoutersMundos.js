const express = require('express');
const routerMundos = express.Router();
const conexion = require('../DDBB/ddbb.js');

routerMundos.use(express.json());

/* ================================================================
   GET /api/cosmere/mundos
================================================================ */
routerMundos.get('/', (req, res) => {
  conexion.query('SELECT * FROM mundos ORDER BY nombre ASC')
    .then(rows => res.send(rows))
    .catch(err => {
      console.error('Error lista mundos:', err);
      res.status(500).send('Error en la base de datos');
    });
});

/* ================================================================
   GET /api/cosmere/mundos/:id
================================================================ */
routerMundos.get('/:id', (req, res) => {
  const { id } = req.params;

  const queryMundo = `SELECT * FROM mundos WHERE id_mundo = ?`;

  const queryLibros = `
    SELECT id_libro, titulo, anio_publicacion, numero_paginas
    FROM libros
    WHERE id_mundo = ?
    ORDER BY anio_publicacion ASC
  `;

  const queryPersonajes = `
    SELECT p.id_personaje, p.nombre, p.imagen_url, p.rol, p.importancia
    FROM personajes p
    INNER JOIN mundos_personajes mp ON mp.id_personaje = p.id_personaje
    WHERE mp.id_mundo = ?
    ORDER BY p.nombre ASC
  `;

  Promise.all([
    conexion.query(queryMundo, [id]),
    conexion.query(queryLibros, [id]),
    conexion.query(queryPersonajes, [id])
  ])
    .then(([mundoRows, libros, personajes]) => {
      if (mundoRows.length === 0) {
        return res.status(404).send('Mundo no encontrado');
      }
      const mundo = mundoRows[0];
      mundo.libros = libros;
      mundo.personajes = personajes;
      res.send(mundo);
    })
    .catch(err => {
      console.error('Error detalle mundo:', err);
      res.status(500).send('Error en la base de datos');
    });
});

module.exports = routerMundos;