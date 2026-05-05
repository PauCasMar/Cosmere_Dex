
USE cosmere_db;

-- Insertar Mundos
INSERT INTO mundos (nombre, descripcion) VALUES
('Scadrial', 'Mundo de la saga Nacidos de la Bruma (Mistborn)'),
('Roshar', 'Mundo de El Archivo de las Tormentas'),
('Nalthis', 'Mundo de Warbreaker'),
('Sel', 'Mundo de Elantris'),
('Taldain', 'Mundo de Arena Blanca'),
('Threnody', 'Mundo de Sombras por Silencio');

-- Insertar Libros
INSERT INTO libros (titulo, anio_publicacion, numero_paginas, id_mundo) VALUES
-- Mistborn Era 1
('El Imperio Final', 2006, 672, 1),
('El Pozo de la Ascensión', 2007, 796, 1),
('El Héroe de las Eras', 2008, 748, 1),
-- Mistborn Era 2
('Aleación de Ley', 2011, 332, 1),
('Sombras de Identidad', 2015, 383, 1),
('Brazales de Duelo', 2015, 445, 1),
('El Metal Perdido', 2022, 428, 1),
-- El Archivo de las Tormentas
('El Camino de los Reyes', 2010, 1008, 2),
('Palabras Radiantes', 2014, 1088, 2),
('Juramentada', 2017, 1248, 2),
('El Ritmo de la Guerra', 2020, 1232, 2),
('Viento y Verdad', 2024, 1392, 2),
-- Otros
('Warbreaker', 2009, 592, 3),
('Elantris', 2005, 638, 4),
('El Aliento de los Dioses', 2016, 176, 1);

-- Insertar Habilidades
INSERT INTO habilidades (nombre, descripcion, tipo) VALUES
-- Alomancia
('Alomancia de Acero', 'Empujar metales', 'Alomancia'),
('Alomancia de Hierro', 'Atraer metales', 'Alomancia'),
('Alomancia de Peltre', 'Aumentar fuerza física', 'Alomancia'),
('Alomancia de Estaño', 'Aumentar sentidos', 'Alomancia'),
('Alomancia de Zinc', 'Enfurecer emociones', 'Alomancia'),
('Alomancia de Latón', 'Apaciguar emociones', 'Alomancia'),
('Alomancia de Cobre', 'Ocultar alomancia', 'Alomancia'),
('Alomancia de Bronce', 'Detectar alomancia', 'Alomancia'),
('Alomancia de Aluminio', 'Eliminar reservas alománticas propias', 'Alomancia'),
('Alomancia de Duraluminio', 'Amplificar alomancia propia', 'Alomancia'),
('Alomancia de Oro', 'Ver el pasado propio', 'Alomancia'),
('Alomancia de Atium', 'Ver el futuro inmediato', 'Alomancia'),
('Nacido de la Bruma', 'Quemar todos los metales alománticos', 'Alomancia'),
-- Feruchemia
('Feruchemia', 'Almacenar y liberar atributos', 'Feruchemia'),
('Feruchemia de Hierro', 'Almacenar peso', 'Feruchemia'),
('Feruchemia de Acero', 'Almacenar velocidad física', 'Feruchemia'),
-- Hemalurgia
('Hemalurgia', 'Robar poderes mediante clavos', 'Hemalurgia'),
-- Potenciación
('Vinculación Ventosa', 'Adherirse a superficies', 'Potenciación'),
('Vinculación Gravitatoria', 'Cambiar dirección de gravedad personal', 'Potenciación'),
('Modelado de Almas', 'Transformar objetos', 'Potenciación'),
('Transportación', 'Viajar al Reino Cognitivo', 'Potenciación'),
('Crecimiento', 'Hacer crecer plantas', 'Potenciación'),
('Progresión', 'Curación acelerada', 'Potenciación'),
('Iluminación', 'Ver el futuro', 'Potenciación'),
('Transformación', 'Convertir piedra en humo', 'Potenciación'),
-- Despertar
('Despertar', 'Animar objetos con aliento', 'Despertar Biovida'),
('Aliento Biovital', 'Esencia de vida que otorga poderes', 'Despertar Biovida'),
-- AonDor
('AonDor', 'Magia basada en símbolos geométricos', 'AonDor'),
-- Deshacimiento
('Deshacimiento', 'Convertirse en sombra', 'Deshacimiento');

-- Insertar Personajes - Mistborn Era 1
INSERT INTO personajes (nombre, id_libro, genero, imagen_url, importancia, rol) VALUES
('Vin', 1, 'mujer', 'https://static.wikia.nocookie.net/stormlightarchive/images/e/e3/Vin_by_Miranda_Meeks.jpg', 'protagonista', 'heroe'),
('Kelsier', 1, 'hombre', 'https://static.wikia.nocookie.net/mistborn/images/5/5c/Kelsier.jpg', 'protagonista', 'heroe'),
('Elend Venture', 1, 'hombre', 'https://static.wikia.nocookie.net/mistborn/images/8/89/Elend.jpg', 'protagonista', 'heroe'),
('Sazed', 1, 'hombre', 'https://static.wikia.nocookie.net/mistborn/images/3/39/Sazed.jpg', 'personaje secundario', 'heroe'),
('El Lord Legislador', 1, 'hombre', 'https://static.wikia.nocookie.net/mistborn/images/c/c9/Lord_Ruler.jpg', 'protagonista', 'villano'),
('Marsh', 1, 'hombre', 'https://static.wikia.nocookie.net/mistborn/images/4/4e/Marsh.jpg', 'personaje secundario', 'neutral'),
('Ham', 1, 'hombre', 'https://static.wikia.nocookie.net/mistborn/images/7/7a/Hammond.jpg', 'personaje secundario', 'heroe'),
('Brisa', 1, 'hombre', 'https://static.wikia.nocookie.net/mistborn/images/a/a0/Breeze.jpg', 'personaje secundario', 'heroe'),
('Spook', 1, 'hombre', 'https://static.wikia.nocookie.net/mistborn/images/b/b4/Spook.jpg', 'personaje secundario', 'heroe'),
('Ruina', 3, 'hombre', 'https://static.wikia.nocookie.net/mistborn/images/1/1a/Ruin.jpg', 'protagonista', 'villano'),
('Conservación', 3, 'hombre', 'https://static.wikia.nocookie.net/mistborn/images/2/2c/Preservation.jpg', 'personaje secundario', 'heroe'),
('TenSoon', 2, 'hombre', 'https://static.wikia.nocookie.net/mistborn/images/5/52/TenSoon.jpg', 'personaje secundario', 'heroe'),

-- Mistborn Era 2
('Waxillium Ladrian', 4, 'hombre', 'https://static.wikia.nocookie.net/mistborn/images/d/d5/Wax.jpg', 'protagonista', 'heroe'),
('Wayne', 4, 'hombre', 'https://static.wikia.nocookie.net/mistborn/images/8/8c/Wayne.jpg', 'protagonista', 'heroe'),
('Marasi Colms', 4, 'mujer', 'https://static.wikia.nocookie.net/mistborn/images/f/f8/Marasi.jpg', 'protagonista', 'heroe'),
('Steris Harms', 4, 'mujer', 'https://static.wikia.nocookie.net/mistborn/images/3/37/Steris.jpg', 'personaje secundario', 'heroe'),
('MeLaan', 5, 'mujer', 'https://static.wikia.nocookie.net/mistborn/images/a/ab/MeLaan.jpg', 'personaje secundario', 'heroe'),

-- El Archivo de las Tormentas
('Kaladin', 8, 'hombre', 'https://static.wikia.nocookie.net/stormlightarchive/images/8/8a/Kaladin.jpg', 'protagonista', 'heroe'),
('Shallan Davar', 8, 'mujer', 'https://static.wikia.nocookie.net/stormlightarchive/images/5/5f/Shallan.jpg', 'protagonista', 'heroe'),
('Dalinar Kholin', 8, 'hombre', 'https://static.wikia.nocookie.net/stormlightarchive/images/3/3a/Dalinar.jpg', 'protagonista', 'heroe'),
('Adolin Kholin', 8, 'hombre', 'https://static.wikia.nocookie.net/stormlightarchive/images/2/2f/Adolin.jpg', 'personaje secundario', 'heroe'),
('Jasnah Kholin', 8, 'mujer', 'https://static.wikia.nocookie.net/stormlightarchive/images/9/9c/Jasnah.jpg', 'personaje secundario', 'heroe'),
('Szeth', 8, 'hombre', 'https://static.wikia.nocookie.net/stormlightarchive/images/4/4c/Szeth.jpg', 'personaje secundario', 'neutral'),
('Lift', 10, 'mujer', 'https://static.wikia.nocookie.net/stormlightarchive/images/1/1e/Lift.jpg', 'personaje secundario', 'heroe'),
('Renarin Kholin', 8, 'hombre', 'https://static.wikia.nocookie.net/stormlightarchive/images/6/68/Renarin.jpg', 'personaje secundario', 'heroe'),
('Navani Kholin', 8, 'mujer', 'https://static.wikia.nocookie.net/stormlightarchive/images/7/72/Navani.jpg', 'personaje secundario', 'heroe'),
('Taravangian', 8, 'hombre', 'https://static.wikia.nocookie.net/stormlightarchive/images/4/4b/Taravangian.jpg', 'personaje secundario', 'villano'),
('Moash', 8, 'hombre', 'https://static.wikia.nocookie.net/stormlightarchive/images/a/a9/Moash.jpg', 'personaje secundario', 'villano'),

-- Warbreaker
('Vasher', 13, 'hombre', 'https://static.wikia.nocookie.net/cosmere/images/3/38/Vasher.jpg', 'protagonista', 'heroe'),
('Vivenna', 13, 'mujer', 'https://static.wikia.nocookie.net/cosmere/images/b/b7/Vivenna.jpg', 'protagonista', 'heroe'),
('Siri', 13, 'mujer', 'https://static.wikia.nocookie.net/cosmere/images/4/4e/Siri.jpg', 'protagonista', 'heroe'),
('Susebron', 13, 'hombre', 'https://static.wikia.nocookie.net/cosmere/images/1/1c/Susebron.jpg', 'personaje secundario', 'heroe'),
('Llarimar', 13, 'hombre', 'https://static.wikia.nocookie.net/cosmere/images/e/e9/Lightsong.jpg', 'personaje secundario', 'heroe'),

-- Elantris
('Raoden', 14, 'hombre', 'https://static.wikia.nocookie.net/cosmere/images/a/a8/Raoden.jpg', 'protagonista', 'heroe'),
('Sarene', 14, 'mujer', 'https://static.wikia.nocookie.net/cosmere/images/d/d8/Sarene.jpg', 'protagonista', 'heroe'),
('Hrathen', 14, 'hombre', 'https://static.wikia.nocookie.net/cosmere/images/5/5f/Hrathen.jpg', 'protagonista', 'villano'),

-- Personajes del Cosmere que aparecen en múltiples mundos
('Hoid', 1, 'hombre', 'https://static.wikia.nocookie.net/cosmere/images/2/2e/Hoid.jpg', 'personaje secundario', 'neutral');

-- Asignar habilidades a personajes - Mistborn Era 1
INSERT INTO personajes_habilidades (id_personaje, id_habilidad) VALUES
-- Vin (Nacida de la Bruma)
(1, 13), -- Nacida de la Bruma
-- Kelsier (Nacido de la Bruma)
(2, 13), -- Nacido de la Bruma
-- Elend (Nacido de la Bruma)
(3, 13), -- Nacido de la Bruma
-- Sazed (Guardador)
(4, 14), -- Feruchemia
(4, 15), -- Feruchemia de Hierro
(4, 16), -- Feruchemia de Acero
-- El Lord Legislador
(5, 13), -- Nacido de la Bruma
(5, 14), -- Feruchemia
(5, 17), -- Hemalurgia
-- Marsh
(6, 8), -- Alomancia de Bronce
(6, 17), -- Hemalurgia
-- Ham
(7, 3), -- Alomancia de Peltre
-- Brisa
(8, 6), -- Alomancia de Latón
-- Spook
(9, 4), -- Alomancia de Estaño
-- TenSoon
(12, 14), -- Feruchemia

-- Mistborn Era 2
(13, 1), -- Wax - Acero
(13, 2), -- Wax - Hierro
(13, 15), -- Wax - Feruchemia de Hierro
(14, 16), -- Wayne - Feruchemia de Acero
(14, 10), -- Wayne - Alomancia de Duraluminio
(15, 3), -- Marasi - Alomancia de Peltre
(17, 14), -- MeLaan - Feruchemia

-- El Archivo de las Tormentas
(18, 18), -- Kaladin - Vinculación Ventosa
(18, 19), -- Kaladin - Vinculación Gravitatoria
(19, 20), -- Shallan - Modelado de Almas
(19, 21), -- Shallan - Transportación
(20, 18), -- Dalinar - Vinculación
(20, 19), -- Dalinar - Vinculación Gravitatoria
(22, 20), -- Jasnah - Modelado de Almas
(22, 21), -- Jasnah - Transportación
(23, 18), -- Szeth - Vinculación
(23, 19), -- Szeth - Vinculación Gravitatoria
(24, 22), -- Lift - Crecimiento
(24, 23), -- Lift - Progresión
(25, 23), -- Renarin - Progresión
(25, 24), -- Renarin - Iluminación

-- Warbreaker
(28, 26), -- Vasher - Despertar
(28, 27), -- Vasher - Aliento Biovital
(29, 26), -- Vivenna - Despertar
(29, 27), -- Vivenna - Aliento Biovital
(31, 27), -- Susebron - Aliento Biovital

-- Elantris
(33, 28), -- Raoden - AonDor
(34, 28); -- Sarene - AonDor

-- Relacionar personajes con libros (apariciones en múltiples libros)
INSERT INTO libros_personajes (id_libro, id_personaje) VALUES
-- Vin aparece en Era 1
(1, 1), (2, 1), (3, 1),
-- Kelsier aparece en Era 1
(1, 2), (2, 2), (3, 2),
-- Elend aparece en Era 1
(1, 3), (2, 3), (3, 3),
-- Sazed aparece en Era 1
(1, 4), (2, 4), (3, 4),
-- Wax aparece en Era 2
(4, 13), (5, 13), (6, 13), (7, 13),
-- Wayne aparece en Era 2
(4, 14), (5, 14), (6, 14), (7, 14),
-- Kaladin aparece en Archivo
(8, 18), (9, 18), (10, 18), (11, 18), (12, 18),
-- Shallan aparece en Archivo
(8, 19), (9, 19), (10, 19), (11, 19), (12, 19),
-- Dalinar aparece en Archivo
(8, 20), (9, 20), (10, 20), (11, 20), (12, 20),
-- Hoid aparece en casi todos los libros del Cosmere
(1, 36), (2, 36), (3, 36), (4, 36), (5, 36), (6, 36), (7, 36),
(8, 36), (9, 36), (10, 36), (11, 36), (12, 36), (13, 36), (14, 36);

-- Relacionar personajes con mundos
INSERT INTO mundos_personajes (id_mundo, id_personaje) VALUES
-- Scadrial (Mistborn)
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10), (1, 11), (1, 12),
(1, 13), (1, 14), (1, 15), (1, 16), (1, 17),
-- Roshar (Archivo)
(2, 18), (2, 19), (2, 20), (2, 21), (2, 22), (2, 23), (2, 24), (2, 25), (2, 26), (2, 27),
-- Nalthis (Warbreaker)
(3, 28), (3, 29), (3, 30), (3, 31), (3, 32),
-- Sel (Elantris)
(4, 33), (4, 34), (4, 35),
-- Hoid aparece en múltiples mundos
(1, 36), (2, 36), (3, 36), (4, 36);

-- Consultas útiles de ejemplo
-- Ver todos los Nacidos de la Bruma:
-- SELECT p.nombre FROM personajes p 
-- JOIN personajes_habilidades ph ON p.id_personaje = ph.id_personaje
-- JOIN habilidades h ON ph.id_habilidad = h.id_habilidad
-- WHERE h.nombre = 'Nacido de la Bruma';

-- Ver todos los personajes de un libro específico:
-- SELECT p.nombre, p.importancia, p.rol FROM personajes p
-- JOIN libros_personajes lp ON p.id_personaje = lp.id_personaje
-- WHERE lp.id_libro = 1;

-- Ver todos los libros de un mundo:
-- SELECT l.titulo, l.anio_publicacion FROM libros l
-- JOIN mundos m ON l.id_mundo = m.id_mundo
-- WHERE m.nombre = 'Scadrial';


-- =============================================
-- 1. AÑADIR COLUMNAS
-- =============================================
ALTER TABLE libros
  ADD COLUMN saga VARCHAR(200) NOT NULL DEFAULT '' AFTER titulo,
  ADD COLUMN portada VARCHAR(500) NULL AFTER saga;


-- =============================================
-- 2. UPDATE DE CADA LIBRO
-- Portadas via Open Library API por ISBN (gratuita, sin restricciones)
-- Formato: https://covers.openlibrary.org/b/isbn/ISBN-L.jpg
-- =============================================

-- 1. El Imperio Final (Mistborn 1)
UPDATE libros SET
  saga = 'Nacidos de la Bruma',
  portada = 'https://covers.openlibrary.org/b/isbn/9780765311788-L.jpg'
WHERE id_libro = 1;

-- 2. El Pozo de la Ascensión (Mistborn 2)
UPDATE libros SET
  saga = 'Nacidos de la Bruma',
  portada = 'https://covers.openlibrary.org/b/isbn/9780765316882-L.jpg'
WHERE id_libro = 2;

-- 3. El Héroe de las Eras (Mistborn 3)
UPDATE libros SET
  saga = 'Nacidos de la Bruma',
  portada = 'https://covers.openlibrary.org/b/isbn/9780765316905-L.jpg'
WHERE id_libro = 3;

-- 4. Aleación de Ley (Mistborn Era 2 - 1)
UPDATE libros SET
  saga = 'Nacidos de la Bruma: Era 2',
  portada = 'https://covers.openlibrary.org/b/isbn/9780765330420-L.jpg'
WHERE id_libro = 4;

-- 5. Sombras de Identidad (Mistborn Era 2 - 2)
UPDATE libros SET
  saga = 'Nacidos de la Bruma: Era 2',
  portada = 'https://covers.openlibrary.org/b/isbn/9780765380197-L.jpg'
WHERE id_libro = 5;

-- 6. Brazales de Duelo (Mistborn Era 2 - 3)
UPDATE libros SET
  saga = 'Nacidos de la Bruma: Era 2',
  portada = 'https://covers.openlibrary.org/b/isbn/9780765380210-L.jpg'
WHERE id_libro = 6;

-- 7. El Metal Perdido (Mistborn Era 2 - 4)
UPDATE libros SET
  saga = 'Nacidos de la Bruma: Era 2',
  portada = 'https://covers.openlibrary.org/b/isbn/9780765389336-L.jpg'
WHERE id_libro = 7;

-- 8. El Camino de los Reyes (Stormlight 1)
UPDATE libros SET
  saga = 'El Archivo de las Tormentas',
  portada = 'https://covers.openlibrary.org/b/isbn/9780765326355-L.jpg'
WHERE id_libro = 8;

-- 9. Palabras Radiantes (Stormlight 2)
UPDATE libros SET
  saga = 'El Archivo de las Tormentas',
  portada = 'https://covers.openlibrary.org/b/isbn/9780765365279-L.jpg'
WHERE id_libro = 9;

-- 10. Juramentada (Stormlight 3)
UPDATE libros SET
  saga = 'El Archivo de las Tormentas',
  portada = 'https://covers.openlibrary.org/b/isbn/9780765326379-L.jpg'
WHERE id_libro = 10;

-- 11. El Ritmo de la Guerra (Stormlight 4)
UPDATE libros SET
  saga = 'El Archivo de las Tormentas',
  portada = 'https://covers.openlibrary.org/b/isbn/9780765326386-L.jpg'
WHERE id_libro = 11;

-- 12. Viento y Verdad (Stormlight 5)
UPDATE libros SET
  saga = 'El Archivo de las Tormentas',
  portada = 'https://covers.openlibrary.org/b/isbn/9781250319197-L.jpg'
WHERE id_libro = 12;

-- 13. Warbreaker
UPDATE libros SET
  saga = 'Cosmere Autoconclusivos',
  portada = 'https://covers.openlibrary.org/b/isbn/9780765320308-L.jpg'
WHERE id_libro = 13;

-- 14. Elantris
UPDATE libros SET
  saga = 'Cosmere Autoconclusivos',
  portada = 'https://covers.openlibrary.org/b/isbn/9780765350374-L.jpg'
WHERE id_libro = 14;

-- 15. El Aliento de los Dioses (Warbreaker en España)
UPDATE libros SET
  saga = 'Cosmere Autoconclusivos',
  portada = 'https://covers.openlibrary.org/b/isbn/9788498725919-L.jpg'
WHERE id_libro = 15;
