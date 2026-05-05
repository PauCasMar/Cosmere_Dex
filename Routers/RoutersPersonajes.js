const express = require('express');
const routerPersonajes = express.Router();
const conexion = require('../DDBB/ddbb.js');

routerPersonajes.use(express.json());

/* ================================================================
   GET /api/cosmere/personajes
================================================================ */
routerPersonajes.get('/', (req, res) => {
  const sql = `
    SELECT
      p.id_personaje,
      p.nombre,
      p.id_libro,
      p.genero,
      p.imagen_url,
      p.importancia,
      p.rol,
      l.titulo AS libro_titulo
    FROM personajes p
    LEFT JOIN libros l ON l.id_libro = p.id_libro
    ORDER BY p.nombre ASC
  `;
  conexion.query(sql)
    .then(rows => res.send(rows))
    .catch(err => {
      console.error('Error lista personajes:', err);
      res.status(500).send('Error en la base de datos');
    });
});

/* ================================================================
   GET /api/cosmere/personajes/:id
================================================================ */
routerPersonajes.get('/:id', (req, res) => {
  const { id } = req.params;
  const queryPersonaje = `
    SELECT
      p.id_personaje,
      p.nombre,
      p.id_libro,
      p.genero,
      p.imagen_url,
      p.importancia,
      p.rol,
      l.titulo AS libro_principal_titulo
    FROM personajes p
    LEFT JOIN libros l ON l.id_libro = p.id_libro
    WHERE p.id_personaje = ?
  `;

  const queryHabilidades = `
    SELECT h.id_habilidad, h.nombre, h.descripcion, h.tipo
    FROM habilidades h
    INNER JOIN personajes_habilidades ph ON ph.id_habilidad = h.id_habilidad
    WHERE ph.id_personaje = ?
    ORDER BY h.tipo, h.nombre
  `;

  const queryMundos = `
    SELECT m.id_mundo, m.nombre, m.descripcion
    FROM mundos m
    INNER JOIN mundos_personajes mp ON mp.id_mundo = m.id_mundo
    WHERE mp.id_personaje = ?
  `;

  const queryLibros = `
    SELECT l.id_libro, l.titulo, l.anio_publicacion
    FROM libros l
    INNER JOIN libros_personajes lp ON lp.id_libro = l.id_libro
    WHERE lp.id_personaje = ?
    ORDER BY l.anio_publicacion ASC
  `;

  Promise.all([
    conexion.query(queryPersonaje, [id]),
    conexion.query(queryHabilidades, [id]),
    conexion.query(queryMundos, [id]),
    conexion.query(queryLibros, [id])
  ])
    .then(([personajeRows, habilidades, mundos, libros]) => {
      if (personajeRows.length === 0) {
        return res.status(404).send('Personaje no encontrado');
      }
      const personaje = personajeRows[0];
      personaje.habilidades = habilidades;
      personaje.mundos = mundos;
      personaje.libros = libros;
      res.send(personaje);
    })
    .catch(err => {
      console.error('Error detalle personaje:', err);
      res.status(500).send('Error en la base de datos');
    });
});

module.exports = routerPersonajes;