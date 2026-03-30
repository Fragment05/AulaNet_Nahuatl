-- Base de datos de ejemplo
-- Incluye únicamente datos mínimos para pruebas
-- Proyecto académico


--Insertar datos para los estados--
INSERT INTO Estados (IdEstado, Clave, Nombre, Abrev, Activo) VALUES
(1, '01', 'Puebla', 'Pue.', 1),
(2, '02', 'Tlaxcala', 'Tlax', 1);

--Insertar datos para los municipios--
INSERT INTO Municipios (IdMunicipio,EstadoId, Clave, Nombre, Activo) VALUES
(1, 1, '001', 'Puebla', 1),
(2, 1, '002', 'Tehuacán', 1),
(3, 2, '003', 'San Pablo del Monte', 1),
(4, 2, '004', 'San Juan Huactzinco', 1);

--Insertar lecciones --
INSERT INTO Lecciones(IdLeccion,Nombre,Descripcion,Idioma,Nivel,ImagenReferencia) VALUES
(1,'Letras del Alfabeto', 'Reconocer letras básicas', 'Náhuatl',null,'letras.png'),
(2,'Números Básicos', 'Aprender los números del 1 al 10,etc','Náhuatl',null,'numeros.png' ),
(3,'Colores Mágicos', 'Aprender los colores', 'Náhuatl',null,'colores.png'),
(4,'Historia de mi tierra', 'Apredender de la historia donde vivo', 'Náhuatl',null,'historia.png'),
(5,'Cultura de Identidad', 'Aprender la cultura donde vivo', 'Náhuatl',null,'Cultura.png');

--Insertar Preguntas de los Examenes--
INSERT INTO Preguntas
(IdLeccion,Pregunta,TipoPregunta,ImagenReferencia)
VALUES
(1,'¿Cuáles son las vocales del náhuatl?','OpcionMultiple',NULL),
(1,'¿Cuál de las siguientes letras NO se usa en el alfabeto del náhuatl clásico?','OpcionMultiple',NULL),
(1,'¿Qué combinación de letras es muy común en náhuatl?','OpcionMultiple',NULL),
(1,'¿Cuál de estas palabras tiene una combinación usada en náhuatl?','OpcionMultiple',NULL),
(1,'¿Cuál de estas letras NO se usa en náhuatl?','OpcionMultiple',NULL),
(1,'¿Qué combinación aparece en muchas palabras del náhuatl?','OpcionMultiple',NULL),
(1,'¿Cuántas vocales tiene el náhuatl?','OpcionMultiple',NULL),
(1,'¿Cuál de estas palabras podría ser de origen náhuatl?','OpcionMultiple',NULL),
(1,'¿Cuál de estas combinaciones se usa en el náhuatl?','OpcionMultiple',NULL),
(1,'¿Cuál de estas palabras tiene la terminación común del náhuatl?','OpcionMultiple',NULL),

(2,'¿Cómo se dice el número 1 en náhuatl?','OpcionMultiple',NULL),
(2,'¿Cómo se dice el número 2 en náhuatl?','OpcionMultiple',NULL),
(2,'¿Cómo se dice el número 3 en náhuatl?','OpcionMultiple',NULL),
(2,'¿Cómo se dice el número 4 en náhuatl?','OpcionMultiple',NULL),
(2,'¿Cómo se dice el número 5 en náhuatl?','OpcionMultiple',NULL),
(2,'¿Cómo se dice el número 6 en náhuatl?','OpcionMultiple',NULL),
(2,'¿Cómo se dice el número 7 en náhuatl?','OpcionMultiple',NULL),
(2,'¿Cuánto es 2 + 3?','OpcionMultiple',NULL),
(2,'¿Cuánto es 4 + 4?','OpcionMultiple',NULL),
(2,'¿Cuánto es 7 − 5?','OpcionMultiple',NULL),


(3,'¿Cómo se dice rojo en náhuatl?','OpcionMultiple',NULL),
(3,'¿Cómo se dice amarillo en náhuatl?','OpcionMultiple',NULL),
(3,'¿Cómo se dice azul en náhuatl?','OpcionMultiple',NULL),
(3,'¿Cómo se dice verde en náhuatl?','OpcionMultiple',NULL),
(3,'¿Cómo se dice naranja en náhuatl?','OpcionMultiple',NULL),
(3,'¿Cómo se dice morado en náhuatl?','OpcionMultiple',NULL),
(3,'¿Cómo se dice rosa en náhuatl?','OpcionMultiple',NULL),
(3,'¿Cómo se dice café en náhuatl?','OpcionMultiple',NULL),
(3,'¿Cómo se dice gris en náhuatl?','OpcionMultiple',NULL),
(3,'¿Cómo se dice negro en náhuatl?','OpcionMultiple',NULL),

(4,'¿Cuál es el platillo más famoso que se vende en la feria de esta comunidad?','OpcionMultiple',NULL),
(4,'¿A qué ciudad pertenece la junta auxiliar de La Resurrección?','OpcionMultiple',NULL),
(4,'¿Qué lengua antigua hablan todavía muchas personas en este lugar?','OpcionMultiple',NULL),
(4,'¿Cómo se llama el volcán o montaña que se ve muy cerca de La Resurrección?','OpcionMultiple',NULL),
(4,'¿Cuál es el nombre de la celebración principal del pueblo?','OpcionMultiple',NULL),
(4,'¿De qué material está hecha la mayoría de la masa para las memelas?','OpcionMultiple',NULL),
(4,'¿En qué estado de México se encuentra este lugar?','OpcionMultiple',NULL),
(4,'¿Qué tipo de asentamiento es La Resurrección administrativamente?','OpcionMultiple',NULL),
(4,'¿Cuál es el color de la salsa que comúnmente llevan las memelas de este lugar?','OpcionMultiple',NULL),
(4,'¿Qué actividad es una tradición muy fuerte entre las mujeres de esta zona?','OpcionMultiple',NULL),

(5,'¿Qué es la cultura?','OpcionMultiple',NULL),
(5,'¿Qué alimento es muy importante en la milpa?','OpcionMultiple',NULL),
(5,'¿Cómo se llaman las celebraciones donde la comunidad se reúne para convivir?','OpcionMultiple',NULL),
(5,'¿Qué tipo de música se presenta en festivales culturales?','OpcionMultiple',NULL),
(5,'¿Qué celebración es una tradición importante en México?','OpcionMultiple',NULL),
(5,'¿Qué se cultiva principalmente en la milpa?','OpcionMultiple',NULL),
(5,'¿Cómo se llaman las tortillas hechas a mano?','OpcionMultiple',NULL),
(5,'¿Qué ayudan a conservar las tradiciones?','OpcionMultiple',NULL),
(5,'¿Qué se presenta en algunos festivales culturales?','OpcionMultiple',NULL);

--Insertar Todas las Respuestas-
INSERT INTO Respuestas
(IdPregunta,Respuesta)
VALUES
(1,'a, e, i, o'),(1,'a, e, i, o, u'),(1,'a, i, o'),(1,'e, i, o, u'),

(2,'ch'),(2,'tl'),(2,'b'),(2,'cu'),

(3,'br'),(3,'tl'),(3,'gr'),(3,'fr'),

(4,'atl'),(4,'bravo'),(4,'gris'),(4,'fruta'),

(5,'k'),(5,'ch'),(5,'v'),(5,'x'),

(6,'tl'),(6,'dr'),(6,'pl'),(6,'bl'),

(7,'3'),(7,'4'),(7,'5'),(7,'6'),

(8,'atl'),(8,'perro'),(8,'mesa'),(8,'casa'),

(9,'ch'),(9,'rr'),(9,'ll'),(9,'ñ'),

(10,'sol'),(10,'atl'),(10,'mar'),(10,'pan'),

(11,'ome'),(11,'ce'),(11,'eyi'),(11,'nahui'),

(12,'ce'),(12,'ome'),(12,'macuilli'),(12,'chicome'),

(13,'eyi'),(13,'chicuace'),(13,'nahui'),(13,'macuilli'),

(14,'chicome'),(14,'ce'),(14,'nahui'),(14,'eyi'),

(15,'macuilli'),(15,'matlactli'),(15,'chicuace'),(15,'chicome'),

(16,'macuilli'),(16,'matlactli'),(16,'chicuace'),(16,'chicome'),

(17,'chicome'),(17,'chicuace'),(17,'chicuei'),(17,'matlactli'),

(18,'ce'),(18,'ome'),(18,'macuilli'),(18,'nahui'),

(19,'chicuei'),(19,'macuilli'),(19,'nahui'),(19,'matlactli'),

(20,'ome'),(20,'ce'),(20,'eyi'),(20,'nahui'),

(21,'xoxoktik'),(21,'chichiltik'),(21,'kamotik'),(21,'istak'),

(22,'kostik'),(22,'nextik'),(22,'koyotik'),(22,'tllitik'),

(23,'yauitl'),(23,'xoxoktik'),(23,'chichiltik'),(23,'kostik'),

(24,'xoxoktik'),(24,'kamotik'),(24,'istak'),(24,'kostik'),

(25,'chichilkostik'),(25,'xoxoktik'),(25,'koyotik'),(25,'nextik'),

(26,'kamotik'),(26,'chichiltik'),(26,'kostik'),(26,'istak'),

(27,'chichilistak'),(27,'nextik'),(27,'koyotik'),(27,'tllitik'),

(28,'koyotik'),(28,'kamotik'),(28,'xoxoktik'),(28,'kostik'),

(29,'nextik'),(29,'istak'),(29,'chichiltik'),(29,'xoxoktik'),

(30,'istak'),(30,'tllitik'),(30,'kostik'),(30,'nextik'),

(31,'Tacos al pastor'),(31,'Enchiladas'),(31,'Memelas'),(31,'Pozole'),
(32,'Atlixco'),(32,'Puebla'),(32,'Tehuacán'),(32,'Cholula'),
(33,'Inglés'),(33,'Francés'),(33,'Náhuatl'),(33,'Maya'),
(34,'El Popocatépetl'),(34,'El Pico de Orizaba'),(34,'La Malinche'),(34,'El Iztaccíhuatl'),
(35,'Navidad'),(35,'La Resurrección del Señor'),(35,'Día de Muertos'),(35,'Año Nuevo'),
(36,'Trigo'),(36,'Arroz'),(36,'Maíz'),(36,'Harina de haba'),
(37,'Tlaxcala'),(37,'Puebla'),(37,'Morelos'),(37,'Veracruz'),
(38,'Una capital'),(38,'Una junta auxiliar'),(38,'Un estado'),(38,'Un país'),
(39,'Azul y café'),(39,'Blanca y amarilla'),(39,'Verde y roja'),(39,'Negra y naranja'),
(40,'Pesca en el mar'),(40,'Elaboración y venta de memelas'),(40,'Minería de oro'),(40,'Caza de venados'),

(41,'Un tipo de comida'),(41,'El conjunto de tradiciones y costumbres de una comunidad'),(41,'Solo las fiestas'),(41,'Un lugar para vivir'),
(42,'Trigo'),(42,'Arroz'),(42,'Maíz'),(42,'Avena'),
(43,'Juegos'),(43,'Fiestas y celebraciones'),(43,'Reuniones escolares'),(43,'Tareas'),
(44,'Música tradicional'),(44,'Música electrónica'),(44,'Música clásica'),(44,'Música extranjera'),
(45,'Halloween'),(45,'Navidad en verano'),(45,'Día de Muertos'),(45,'Año nuevo chino'),
(46,'Maíz, frijol y calabaza'),(46,'Manzanas'),(46,'Uvas'),(46,'Papas fritas'),
(47,'Tortillas tradicionales'),(47,'Tortillas dulces'),(47,'Tortillas fritas'),(47,'Tortillas de pan'),
(48,'Los videojuegos'),(48,'Las actividades culturales y celebraciones'),(48,'Las películas'),(48,'Los deportes'),
(49,'Danza tradicional'),(49,'Carreras de autos'),(49,'Juegos de video'),(49,'Programas de televisión');

--Insertar Preguntas Correctas--
INSERT INTO PreguntasCorrectas
(IdPregunta,IdRespuesta)
VALUES
(1,1),
(2,7),
(3,10),
(4,13),
(5,17),
(6,21),
(7,27),
(8,29),
(9,33),
(10,38),

(11,42),
(12,46),
(13,49),
(14,55),
(15,57),
(16,63),
(17,65),
(18,71),
(19,73),
(20,77),

(21,82),
(22,85),
(23,89),
(24,93),
(25,97),
(26,101),
(27,105),
(28,109),
(29,113),
(30,118),

(31,123),
(32,126),
(33,131),
(34,135),
(35,138),
(36,143),
(37,146),
(38,150),
(39,155),
(40,158),

(41,162),
(42,167),
(43,170),
(44,173),
(45,179),
(46,181),
(47,185),
(48,190),
(49,193);