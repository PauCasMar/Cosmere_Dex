-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         12.0.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.11.0.7065
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para cosmere_db
CREATE DATABASE IF NOT EXISTS `cosmere_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;
USE `cosmere_db`;

-- Volcando estructura para tabla cosmere_db.habilidades
CREATE TABLE IF NOT EXISTS `habilidades` (
  `id_habilidad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_habilidad`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla cosmere_db.habilidades: ~29 rows (aproximadamente)
INSERT INTO `habilidades` (`id_habilidad`, `nombre`, `descripcion`, `tipo`, `created_at`) VALUES
	(1, 'Alomancia de Acero', 'Empujar metales', 'Alomancia', '2026-05-04 09:18:12'),
	(2, 'Alomancia de Hierro', 'Atraer metales', 'Alomancia', '2026-05-04 09:18:12'),
	(3, 'Alomancia de Peltre', 'Aumentar fuerza física', 'Alomancia', '2026-05-04 09:18:12'),
	(4, 'Alomancia de Estaño', 'Aumentar sentidos', 'Alomancia', '2026-05-04 09:18:12'),
	(5, 'Alomancia de Zinc', 'Enfurecer emociones', 'Alomancia', '2026-05-04 09:18:12'),
	(6, 'Alomancia de Latón', 'Apaciguar emociones', 'Alomancia', '2026-05-04 09:18:12'),
	(7, 'Alomancia de Cobre', 'Ocultar alomancia', 'Alomancia', '2026-05-04 09:18:12'),
	(8, 'Alomancia de Bronce', 'Detectar alomancia', 'Alomancia', '2026-05-04 09:18:12'),
	(9, 'Alomancia de Aluminio', 'Eliminar reservas alománticas propias', 'Alomancia', '2026-05-04 09:18:12'),
	(10, 'Alomancia de Duraluminio', 'Amplificar alomancia propia', 'Alomancia', '2026-05-04 09:18:12'),
	(11, 'Alomancia de Oro', 'Ver el pasado propio', 'Alomancia', '2026-05-04 09:18:12'),
	(12, 'Alomancia de Atium', 'Ver el futuro inmediato', 'Alomancia', '2026-05-04 09:18:12'),
	(13, 'Nacido de la Bruma', 'Quemar todos los metales alománticos', 'Alomancia', '2026-05-04 09:18:12'),
	(14, 'Feruchemia', 'Almacenar y liberar atributos', 'Feruchemia', '2026-05-04 09:18:12'),
	(15, 'Feruchemia de Hierro', 'Almacenar peso', 'Feruchemia', '2026-05-04 09:18:12'),
	(16, 'Feruchemia de Acero', 'Almacenar velocidad física', 'Feruchemia', '2026-05-04 09:18:12'),
	(17, 'Hemalurgia', 'Robar poderes mediante clavos', 'Hemalurgia', '2026-05-04 09:18:12'),
	(18, 'Vinculación Ventosa', 'Adherirse a superficies', 'Potenciación', '2026-05-04 09:18:12'),
	(19, 'Vinculación Gravitatoria', 'Cambiar dirección de gravedad personal', 'Potenciación', '2026-05-04 09:18:12'),
	(20, 'Modelado de Almas', 'Transformar objetos', 'Potenciación', '2026-05-04 09:18:12'),
	(21, 'Transportación', 'Viajar al Reino Cognitivo', 'Potenciación', '2026-05-04 09:18:12'),
	(22, 'Crecimiento', 'Hacer crecer plantas', 'Potenciación', '2026-05-04 09:18:12'),
	(23, 'Progresión', 'Curación acelerada', 'Potenciación', '2026-05-04 09:18:12'),
	(24, 'Iluminación', 'Ver el futuro', 'Potenciación', '2026-05-04 09:18:12'),
	(25, 'Transformación', 'Convertir piedra en humo', 'Potenciación', '2026-05-04 09:18:12'),
	(26, 'Despertar', 'Animar objetos con aliento', 'Despertar Biovida', '2026-05-04 09:18:12'),
	(27, 'Aliento Biovital', 'Esencia de vida que otorga poderes', 'Despertar Biovida', '2026-05-04 09:18:12'),
	(28, 'AonDor', 'Magia basada en símbolos geométricos', 'AonDor', '2026-05-04 09:18:12'),
	(29, 'Deshacimiento', 'Convertirse en sombra', 'Deshacimiento', '2026-05-04 09:18:12');

-- Volcando estructura para tabla cosmere_db.libros
CREATE TABLE IF NOT EXISTS `libros` (
  `id_libro` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `saga` varchar(200) NOT NULL DEFAULT '',
  `portada` varchar(500) DEFAULT NULL,
  `sinopsis` text DEFAULT NULL,
  `anio_publicacion` year(4) NOT NULL,
  `numero_paginas` int(11) NOT NULL,
  `id_mundo` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_libro`),
  KEY `id_mundo` (`id_mundo`),
  KEY `idx_libro_anio` (`anio_publicacion`),
  CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`id_mundo`) REFERENCES `mundos` (`id_mundo`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla cosmere_db.libros: ~15 rows (aproximadamente)
INSERT INTO `libros` (`id_libro`, `titulo`, `saga`, `portada`, `sinopsis`, `anio_publicacion`, `numero_paginas`, `id_mundo`, `created_at`) VALUES
	(1, 'El Imperio Final', 'Nacidos de la Bruma', 'https://covers.openlibrary.org/b/isbn/9780765311788-L.jpg', 'Durante mil años han caído cenizas del cielo y nada florece. El Lord Legislador reina con poder absoluto sobre el Imperio Final, ayudado por la temible magia de la Alomancia. Kelsier, el único hombre que ha escapado de los Pozos de Hathsin, reúne a un equipo de ladrones con un plan imposible: derrocar al dios inmortal. En su camino descubre a Vin, una joven skaa con un don extraordinario que podría cambiar el destino del mundo.', '2006', 672, 1, '2026-05-04 09:18:12'),
	(2, 'El Pozo de la Ascensión', 'Nacidos de la Bruma', 'https://covers.openlibrary.org/b/isbn/9780765316882-L.jpg', 'Tras la caída del Lord Legislador, el Imperio Final se fragmenta en reinos en guerra. Vin y Elend Venture intentan mantener la paz en Luthadel mientras una amenaza antigua despierta en la niebla. Las profecías hablan del Pozo de la Ascensión y de un poder capaz de salvar o destruir el mundo. Pero alguien más también busca ese poder, y sus intenciones son oscuras.', '2007', 796, 1, '2026-05-04 09:18:12'),
	(3, 'El Héroe de las Eras', 'Nacidos de la Bruma', 'https://static.wikia.nocookie.net/nacidos-de-la-bruma/images/7/74/Nacidos_de_la_Bruma_El_H%C3%A9roe_de_las_Eras.png/revision/latest?cb=20190708130228&path-prefix=es', 'La Profundidad avanza imparable, las cenizas caen más densas que nunca y la niebla mata a los hombres a plena luz del día. Vin y Elend recorren el mundo en busca de los secretos que el Lord Legislador ocultó durante siglos, descubriendo una verdad aterradora sobre las profecías del Héroe de las Eras y el verdadero origen del poder alomántico.', '2008', 748, 1, '2026-05-04 09:18:12'),
	(4, 'Aleación de Ley', 'Nacidos de la Bruma: Era 2', 'https://covers.openlibrary.org/b/isbn/9780765330420-L.jpg', 'Trescientos años después de la Ascensión, Scadrial es un mundo industrializado con trenes y electricidad. Waxillium Ladrian, alomante y feruquimista, se ve arrastrado de nuevo a la vida de justicieros al investigar una serie de robos y secuestros. Una historia de detectives y magia en el salvaje oeste del Cosmere.', '2011', 332, 1, '2026-05-04 09:18:12'),
	(5, 'Sombras de Identidad', 'Nacidos de la Bruma: Era 2', 'https://static.wikia.nocookie.net/nacidos-de-la-bruma/images/d/da/Nacidos_de_la_Bruma_Sombras_de_Identidad.png/revision/latest?cb=20180818123515&path-prefix=es', 'Wax descubre que su tía Telsin ha sido capturada por Los Colmillos, una organización criminal con acceso a poderes que no deberían existir. Mientras investiga la conspiración, se enfrenta a preguntas sobre su propia identidad y el papel que juega en el destino de Scadrial. La segunda era de Mistborn se adentra en misterios que conectan con el Cosmere entero.', '2015', 383, 1, '2026-05-04 09:18:12'),
	(6, 'Brazales de Duelo', 'Nacidos de la Bruma: Era 2', 'https://static.wikia.nocookie.net/nacidos-de-la-bruma/images/d/de/Nacidos_de_la_Bruma_Brazaletes_de_Duelo.png/revision/latest/scale-to-width-down/1000?cb=20180818123512&path-prefix=es', 'Los Colmillos amenazan con desatar una guerra civil en Elendel. Wax, Wayne y Marasi se infiltran en una conspiración que llega hasta las más altas esferas del poder político. Con revelaciones impactantes sobre la naturaleza de la magia y los dioses del Cosmere, Brazales de Duelo lleva la segunda era de Mistborn a un punto de no retorno.', '2015', 445, 1, '2026-05-04 09:18:12'),
	(7, 'El Metal Perdido', 'Nacidos de la Bruma: Era 2', 'https://static.wikia.nocookie.net/nacidos-de-la-bruma/images/0/04/El_metal_perdido.png.jpg/revision/latest?cb=20220828143810&path-prefix=es', 'El conflicto final de la segunda era de Mistborn. Wax debe enfrentarse a una amenaza de escala cósmica mientras las revelaciones sobre Harmonium, el metal perdido, cambian todo lo que se creía saber sobre la Alomancia. El destino de Scadrial, y quizá del Cosmere entero, depende de las decisiones de un grupo de héroes improbables.', '2022', 428, 1, '2026-05-04 09:18:12'),
	(8, 'El Camino de los Reyes', 'El Archivo de las Tormentas', 'https://covers.openlibrary.org/b/isbn/9780765326355-L.jpg', 'En el mundo de Roshar, azotado por las Tormentas Eternas, los hombres luchan por fragmentos de gloria llamados Esquirlas. Kaladin Bendición-de-la-Tormenta, un joven soldado convertido en esclavo bridgeman, descubre poderes olvidados hace siglos. Mientras tanto, el estudioso Szeth cumple órdenes de asesino que desestabilizan los reinos. Los Caballeros Radiantes deben volver a alzarse.', '2010', 1008, 2, '2026-05-04 09:18:12'),
	(9, 'Palabras Radiantes', 'El Archivo de las Tormentas', 'https://covers.openlibrary.org/b/isbn/9780765365279-L.jpg', 'Kaladin lucha por aceptar su papel como Radiante mientras protege al rey y a Dalinar Kholin. Shallan viaja hacia las Llanuras Quebradas ocultando secretos que podrían destruirla. Una conspiración amenaza la cumbre de los reyes de Alezkar y una antigua guerra está a punto de reanudarse. El segundo juramento se acerca para aquellos que tienen el valor de pronunciarlo.', '2014', 1088, 2, '2026-05-04 09:18:12'),
	(10, 'Juramentada', 'El Archivo de las Tormentas', 'https://covers.openlibrary.org/b/isbn/9780765326379-L.jpg', 'Los Portadores del Vacío han regresado. Dalinar intenta unir a los reinos del mundo ante la amenaza Desoladora mientras revive recuerdos de un pasado que intentó olvidar. Kaladin, Shallan y Adolin descienden a la ciudad de Urithiru en busca de respuestas, enfrentándose a horrores en las profundidades. La verdad sobre los Caballeros Radiantes y su traición saldrá a la luz.', '2017', 1248, 2, '2026-05-04 09:18:12'),
	(11, 'El Ritmo de la Guerra', 'El Archivo de las Tormentas', 'https://covers.openlibrary.org/b/isbn/9780765326386-L.jpg', 'La guerra contra los Fusionados entra en un punto de inflexión. Navani Kholin investiga los secretos de la Luz Tormentosa mientras está atrapada con el enemigo. Kaladin sufre las consecuencias psicológicas de años de combate. Y una nueva arma de destrucción masiva amenaza con inclinar la balanza de la guerra de forma catastrófica e irreversible.', '2020', 1232, 2, '2026-05-04 09:18:12'),
	(12, 'Viento y Verdad', 'El Archivo de las Tormentas', 'https://cosmere.es/wp-content/uploads/2024/09/El-Archivo-de-las-Tormentas-Viento-y-Verdad-portada-USA-arte-de-Michael-Whelan.jpg', 'La conclusión de la primera mitad del Archivo de las Tormentas. Szeth debe enfrentarse a los crímenes de su pasado en las montañas de Shinovar. Shallan persigue al Fantasma. Dalinar busca la forma de llegar al Todopoderoso. Y Kaladin descubre que su verdadero campo de batalla siempre fue la mente humana. El Cosmere nunca volverá a ser el mismo.', '2024', 1392, 2, '2026-05-04 09:18:12'),
	(13, 'Warbreaker', 'Cosmere Autoconclusivos', 'https://pbs.twimg.com/media/HGXmj2taYAAX0Kk.png', 'La princesa Siri es enviada a Hallandren para casarse con el dios-rey, en lugar de su hermana Vivenna. En la ciudad de los dioses, el Retorno Vasher investiga una conspiración que amenaza con iniciar una guerra. Un sistema de magia basado en el aliento de las personas y el poder del color da vida a guerreros llamados Susurramuertes en esta historia independiente del Cosmere.', '2009', 592, 3, '2026-05-04 09:18:12'),
	(14, 'Elantris', 'Cosmere Autoconclusivos', 'https://covers.openlibrary.org/b/isbn/9780765350374-L.jpg', 'Elantris fue durante siglos una ciudad de dioses, sus habitantes dotados de poderes mágicos. Entonces la magia falló, los dioses se convirtieron en monstruos y la ciudad fue cerrada. El príncipe Raoden despierta un día transformado en un Elantrian, condenado. Junto a la princesa Sarene, que llega a casarse con un hombre que cree muerto, intentarán desentrañar el misterio de la caída de Elantris.', '2005', 638, 4, '2026-05-04 09:18:12'),
	(15, 'El Aliento de los Dioses', 'Cosmere Autoconclusivos', 'https://m.media-amazon.com/images/I/71w0BArZnwL._SL1500_.jpg', 'En el reino de Hallandren, la magia del BioQueratinismo permite transferir el aliento vital de una persona a objetos y seres inanimados. La princesa Siri llega a una corte llena de intrigas para casarse con un dios silencioso, mientras su hermana Vivenna inicia una misión de rescate que la llevará a descubrir verdades oscuras sobre su propio mundo y sus creencias.', '2016', 176, 1, '2026-05-04 09:18:12');

-- Volcando estructura para tabla cosmere_db.libros_personajes
CREATE TABLE IF NOT EXISTS `libros_personajes` (
  `id_libro` int(11) NOT NULL,
  `id_personaje` int(11) NOT NULL,
  PRIMARY KEY (`id_libro`,`id_personaje`),
  KEY `id_personaje` (`id_personaje`),
  CONSTRAINT `libros_personajes_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`) ON DELETE CASCADE,
  CONSTRAINT `libros_personajes_ibfk_2` FOREIGN KEY (`id_personaje`) REFERENCES `personajes` (`id_personaje`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla cosmere_db.libros_personajes: ~49 rows (aproximadamente)
INSERT INTO `libros_personajes` (`id_libro`, `id_personaje`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 36),
	(2, 1),
	(2, 2),
	(2, 3),
	(2, 4),
	(2, 36),
	(3, 1),
	(3, 2),
	(3, 3),
	(3, 4),
	(3, 36),
	(4, 13),
	(4, 14),
	(4, 36),
	(5, 13),
	(5, 14),
	(5, 36),
	(6, 13),
	(6, 14),
	(6, 36),
	(7, 13),
	(7, 14),
	(7, 36),
	(8, 18),
	(8, 19),
	(8, 20),
	(8, 36),
	(9, 18),
	(9, 19),
	(9, 20),
	(9, 36),
	(10, 18),
	(10, 19),
	(10, 20),
	(10, 36),
	(11, 18),
	(11, 19),
	(11, 20),
	(11, 36),
	(12, 18),
	(12, 19),
	(12, 20),
	(12, 36),
	(13, 36),
	(14, 36);

-- Volcando estructura para tabla cosmere_db.mundos
CREATE TABLE IF NOT EXISTS `mundos` (
  `id_mundo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `imagen_url` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_mundo`),
  KEY `idx_mundo_nombre` (`nombre`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla cosmere_db.mundos: ~6 rows (aproximadamente)
INSERT INTO `mundos` (`id_mundo`, `nombre`, `descripcion`, `imagen_url`, `created_at`) VALUES
	(1, 'Scadrial', 'Mundo de la saga Nacidos de la Bruma (Mistborn)', 'http://localhost:3000/imagenes/mundos/planeta1.png', '2026-05-04 09:18:12'),
	(2, 'Roshar', 'Mundo de El Archivo de las Tormentas', 'http://localhost:3000/imagenes/mundos/planeta2.png', '2026-05-04 09:18:12'),
	(3, 'Nalthis', 'Mundo de Warbreaker', 'http://localhost:3000/imagenes/mundos/planeta3.png', '2026-05-04 09:18:12'),
	(4, 'Sel', 'Mundo de Elantris', 'http://localhost:3000/imagenes/mundos/planeta4.png', '2026-05-04 09:18:12'),
	(5, 'Taldain', 'Mundo de Arena Blanca', 'http://localhost:3000/imagenes/mundos/planeta5.png', '2026-05-04 09:18:12'),
	(6, 'Threnody', 'Mundo de Sombras por Silencio', 'http://localhost:3000/imagenes/mundos/planeta6.png', '2026-05-04 09:18:12');

-- Volcando estructura para tabla cosmere_db.mundos_personajes
CREATE TABLE IF NOT EXISTS `mundos_personajes` (
  `id_mundo` int(11) NOT NULL,
  `id_personaje` int(11) NOT NULL,
  PRIMARY KEY (`id_mundo`,`id_personaje`),
  KEY `id_personaje` (`id_personaje`),
  CONSTRAINT `mundos_personajes_ibfk_1` FOREIGN KEY (`id_mundo`) REFERENCES `mundos` (`id_mundo`) ON DELETE CASCADE,
  CONSTRAINT `mundos_personajes_ibfk_2` FOREIGN KEY (`id_personaje`) REFERENCES `personajes` (`id_personaje`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla cosmere_db.mundos_personajes: ~39 rows (aproximadamente)
INSERT INTO `mundos_personajes` (`id_mundo`, `id_personaje`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(1, 10),
	(1, 11),
	(1, 12),
	(1, 13),
	(1, 14),
	(1, 15),
	(1, 16),
	(1, 17),
	(1, 36),
	(2, 18),
	(2, 19),
	(2, 20),
	(2, 21),
	(2, 22),
	(2, 23),
	(2, 24),
	(2, 25),
	(2, 26),
	(2, 27),
	(2, 36),
	(3, 28),
	(3, 29),
	(3, 30),
	(3, 31),
	(3, 32),
	(3, 36),
	(4, 33),
	(4, 34),
	(4, 35),
	(4, 36);

-- Volcando estructura para tabla cosmere_db.personajes
CREATE TABLE IF NOT EXISTS `personajes` (
  `id_personaje` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `id_libro` int(11) NOT NULL,
  `genero` enum('hombre','mujer') NOT NULL,
  `imagen_url` varchar(500) DEFAULT NULL,
  `importancia` enum('protagonista','personaje secundario','personaje no importante') NOT NULL,
  `rol` enum('villano','heroe','neutral') DEFAULT 'neutral',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_personaje`),
  KEY `id_libro` (`id_libro`),
  KEY `idx_personaje_nombre` (`nombre`),
  KEY `idx_personaje_importancia` (`importancia`),
  CONSTRAINT `personajes_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla cosmere_db.personajes: ~37 rows (aproximadamente)
INSERT INTO `personajes` (`id_personaje`, `nombre`, `id_libro`, `genero`, `imagen_url`, `importancia`, `rol`, `created_at`) VALUES
	(1, 'Vin', 1, 'mujer', 'https://static.wikia.nocookie.net/nacidos-de-la-bruma/images/4/43/Vin_por_Elizabeth_Peiro.png/revision/latest?cb=20191207105430&path-prefix=es', 'protagonista', 'heroe', '2026-05-04 09:18:12'),
	(2, 'Kelsier', 1, 'hombre', 'https://coppermind.net/wiki/Special:FilePath/Kelsier.jpg', 'protagonista', 'heroe', '2026-05-04 09:18:12'),
	(3, 'Elend Venture', 1, 'hombre', 'https://coppermind.net/wiki/Special:FilePath/Elend.jpg', 'protagonista', 'heroe', '2026-05-04 09:18:12'),
	(4, 'Sazed', 1, 'hombre', 'https://uploads.coppermind.net/Sazed_by_Diego_L%C3%B3pez.jpeg', 'personaje secundario', 'heroe', '2026-05-04 09:18:12'),
	(5, 'El Lord Legislador', 1, 'hombre', 'https://static.wikia.nocookie.net/nacidos-de-la-bruma/images/5/54/Mistborn_por_Oliver_Specht.png/revision/latest?cb=20201227130818&path-prefix=es', 'protagonista', 'villano', '2026-05-04 09:18:12'),
	(6, 'Marsh', 1, 'hombre', 'https://static.wikia.nocookie.net/nacidos-de-la-bruma/images/7/75/Marsh_por_Eyeronis.png/revision/latest?cb=20181124224008&path-prefix=es', 'personaje secundario', 'neutral', '2026-05-04 09:18:12'),
	(7, 'Ham', 1, 'hombre', 'https://static.wikia.nocookie.net/nacidos-de-la-bruma/images/a/ae/Ham-por-Gondalier.png/revision/latest?cb=20181110191206&path-prefix=es', 'personaje secundario', 'heroe', '2026-05-04 09:18:12'),
	(8, 'Brisa', 1, 'hombre', 'https://coppermind.net/wiki/Special:FilePath/Breeze.jpg', 'personaje secundario', 'heroe', '2026-05-04 09:18:12'),
	(9, 'Spook', 1, 'hombre', 'https://uploads.coppermind.net/Spook_by_clarinking.jpg', 'personaje secundario', 'heroe', '2026-05-04 09:18:12'),
	(10, 'Ruina', 3, 'hombre', 'https://coppermind.net/wiki/Special:FilePath/Ruin.jpg', 'protagonista', 'villano', '2026-05-04 09:18:12'),
	(11, 'Conservación', 3, 'hombre', 'https://coppermind.net/wiki/Special:FilePath/Preservation.jpg', 'personaje secundario', 'heroe', '2026-05-04 09:18:12'),
	(12, 'TenSoon', 2, 'hombre', 'https://static.wikia.nocookie.net/nacidos-de-la-bruma/images/8/86/TenSoon_y_Vin_por_VargasNi.jpg/revision/latest?cb=20181220123234&path-prefix=es', 'personaje secundario', 'heroe', '2026-05-04 09:18:12'),
	(13, 'Waxillium Ladrian', 4, 'hombre', 'https://coppermind.net/wiki/Special:FilePath/Waxillium_Ladrian.jpg', 'protagonista', 'heroe', '2026-05-04 09:18:12'),
	(14, 'Wayne', 4, 'hombre', 'https://static.wikia.nocookie.net/nacidos-de-la-bruma/images/2/24/Wayne_por_Shuravf.png/revision/latest?cb=20201111222810&path-prefix=es', 'protagonista', 'heroe', '2026-05-04 09:18:12'),
	(15, 'Marasi Colms', 4, 'mujer', 'https://static.wikia.nocookie.net/nacidos-de-la-bruma/images/0/00/Marasi-Colms-por-Shuravf.png/revision/latest/scale-to-width-down/1000?cb=20210227221316&path-prefix=es', 'protagonista', 'heroe', '2026-05-04 09:18:12'),
	(16, 'Steris Harms', 4, 'mujer', 'https://uploads.coppermind.net/Steris_by_Shuravf.jpg', 'personaje secundario', 'heroe', '2026-05-04 09:18:12'),
	(17, 'MeLaan', 5, 'mujer', 'https://static.wikia.nocookie.net/nacidos-de-la-bruma/images/e/e5/MeLaan_por_Shuravf.png/revision/latest/scale-to-width-down/1000?cb=20211106233427&path-prefix=es', 'personaje secundario', 'heroe', '2026-05-04 09:18:12'),
	(18, 'Kaladin', 8, 'hombre', 'https://coppermind.net/wiki/Special:FilePath/Kaladin.jpg', 'protagonista', 'heroe', '2026-05-04 09:18:12'),
	(19, 'Shallan Davar', 8, 'mujer', 'https://coppermind.net/wiki/Special:FilePath/Shallan.jpg', 'protagonista', 'heroe', '2026-05-04 09:18:12'),
	(20, 'Dalinar Kholin', 8, 'hombre', 'https://coppermind.net/wiki/Special:FilePath/Dalinar.jpg', 'protagonista', 'heroe', '2026-05-04 09:18:12'),
	(21, 'Adolin Kholin', 8, 'hombre', 'https://coppermind.net/wiki/Special:FilePath/Adolin.jpg', 'personaje secundario', 'heroe', '2026-05-04 09:18:12'),
	(22, 'Jasnah Kholin', 8, 'mujer', 'https://coppermind.net/wiki/Special:FilePath/Jasnah.jpg', 'personaje secundario', 'heroe', '2026-05-04 09:18:12'),
	(23, 'Szeth', 8, 'hombre', 'https://coppermind.net/wiki/Special:FilePath/Szeth.jpg', 'personaje secundario', 'neutral', '2026-05-04 09:18:12'),
	(24, 'Lift', 10, 'mujer', 'https://coppermind.net/wiki/Special:FilePath/Lift.jpg', 'personaje secundario', 'heroe', '2026-05-04 09:18:12'),
	(25, 'Renarin Kholin', 8, 'hombre', 'https://coppermind.net/wiki/Special:FilePath/Renarin.jpg', 'personaje secundario', 'heroe', '2026-05-04 09:18:12'),
	(26, 'Navani Kholin', 8, 'mujer', 'https://coppermind.net/wiki/Special:FilePath/Navani1.jpg', 'personaje secundario', 'heroe', '2026-05-04 09:18:12'),
	(27, 'Taravangian', 8, 'hombre', 'https://coppermind.net/wiki/Special:FilePath/Taravangian.jpg', 'personaje secundario', 'villano', '2026-05-04 09:18:12'),
	(28, 'Moash', 8, 'hombre', 'https://uploads.coppermind.net/Moash_Shuravf.jpg', 'personaje secundario', 'villano', '2026-05-04 09:18:12'),
	(29, 'Vasher', 13, 'hombre', 'https://uploads.coppermind.net/Vasher_by_ToastSamurai.jpg', 'protagonista', 'heroe', '2026-05-04 09:18:12'),
	(30, 'Vivenna', 13, 'mujer', 'https://64.media.tumblr.com/104c3800c75206d90e877859946cde53/30da9ebb15bc81fc-56/s540x810/4b9a56678196fa65057ed35cdafb7c73cd2450fa.jpg', 'protagonista', 'heroe', '2026-05-04 09:18:12'),
	(31, 'Siri', 13, 'mujer', 'https://uploads.coppermind.net/Siri_by_Egilde_Art.jpg', 'protagonista', 'heroe', '2026-05-04 09:18:12'),
	(32, 'Susebron', 13, 'hombre', 'https://uploads.coppermind.net/God_King.jpg', 'personaje secundario', 'heroe', '2026-05-04 09:18:12'),
	(33, 'Llarimar', 13, 'hombre', 'https://uploads.coppermind.net/thumb/Llarimar_by_Jove.png/200px-Llarimar_by_Jove.png', 'personaje secundario', 'heroe', '2026-05-04 09:18:12'),
	(34, 'Raoden', 14, 'hombre', 'https://coppermind.net/wiki/Special:FilePath/Raoden.jpg', 'protagonista', 'heroe', '2026-05-04 09:18:12'),
	(35, 'Sarene', 14, 'mujer', 'https://uploads.coppermind.net/Sarene_treefin.jpg', 'protagonista', 'heroe', '2026-05-04 09:18:12'),
	(36, 'Hrathen', 14, 'hombre', 'https://uploads.coppermind.net/thumb/Hrathen_by_Egilde_Art.jpg/800px-Hrathen_by_Egilde_Art.jpg', 'protagonista', 'villano', '2026-05-04 09:18:12'),
	(37, 'Hoid', 1, 'hombre', 'https://static.wikia.nocookie.net/nacidos-de-la-bruma/images/f/fb/Hoid_por_Botanica.png/revision/latest/scale-to-width-down/1000?cb=20200327135308&path-prefix=es', 'personaje secundario', 'neutral', '2026-05-04 09:18:12');

-- Volcando estructura para tabla cosmere_db.personajes_habilidades
CREATE TABLE IF NOT EXISTS `personajes_habilidades` (
  `id_personaje` int(11) NOT NULL,
  `id_habilidad` int(11) NOT NULL,
  PRIMARY KEY (`id_personaje`,`id_habilidad`),
  KEY `id_habilidad` (`id_habilidad`),
  CONSTRAINT `personajes_habilidades_ibfk_1` FOREIGN KEY (`id_personaje`) REFERENCES `personajes` (`id_personaje`) ON DELETE CASCADE,
  CONSTRAINT `personajes_habilidades_ibfk_2` FOREIGN KEY (`id_habilidad`) REFERENCES `habilidades` (`id_habilidad`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Volcando datos para la tabla cosmere_db.personajes_habilidades: ~43 rows (aproximadamente)
INSERT INTO `personajes_habilidades` (`id_personaje`, `id_habilidad`) VALUES
	(1, 13),
	(2, 13),
	(3, 13),
	(4, 14),
	(4, 15),
	(4, 16),
	(5, 13),
	(5, 14),
	(5, 17),
	(6, 8),
	(6, 17),
	(7, 3),
	(8, 6),
	(9, 4),
	(12, 14),
	(13, 1),
	(13, 2),
	(13, 15),
	(14, 10),
	(14, 16),
	(15, 3),
	(17, 14),
	(18, 18),
	(18, 19),
	(19, 20),
	(19, 21),
	(20, 18),
	(20, 19),
	(22, 20),
	(22, 21),
	(23, 18),
	(23, 19),
	(24, 22),
	(24, 23),
	(25, 23),
	(25, 24),
	(28, 26),
	(28, 27),
	(29, 26),
	(29, 27),
	(31, 27),
	(33, 28),
	(34, 28);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
