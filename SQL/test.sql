USE testApp;

-- Usuarios --

INSERT INTO USUARIOS (username, password) VALUES ("1635501", "1234");

-- Estudiantes --

INSERT INTO ESTUDIANTES (matricula, firstName, lastName, semestre, fechaIngreso) VALUES (1635501, "Alberto Alan", "Zul Rabasa", 6, '2015-08-21');
INSERT INTO ESTUDIANTES (firstName, lastName, semestre, fechaIngreso) VALUES (1, "Adrian", "Gerra Guajardo", 6, '2015-08-21');
INSERT INTO ESTUDIANTES (firstName, lastName, semestre, fechaIngreso) VALUES (2, "Karla Cecilia", "Cantu Facio", 6, '2015-08-21');
INSERT INTO ESTUDIANTES (firstName, lastName, semestre, fechaIngreso) VALUES (3,"Andrea Michel", "Becerra Cortez", 6, '2015-08-21');
INSERT INTO ESTUDIANTES (firstName, lastName, semestre, fechaIngreso) VALUES (4, "Alberto", "Mesa Camacho", 4, '2016-08-21');

-----------------------------------------------------------------------------------------------------------------------------------------

-- PRIMER SEMESTRE --
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (101, "MATEMATICAS 1", NULL, 1);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (102, "MATEMATICAS 2", NULL, 1);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (103, "PRINCIPIOS DE ARQUITECTURA COMPUTACIONAL", NULL, 1);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (104, "PROGRAMACION ORIENTADA A OBJETOS", NULL, 1);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (106, "ADMINISTRACION", NULL, 1);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (107, "METODOLOGIA DE LA PROGRAMACION", NULL, 1);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (002, "APLICACION DE TECNOLOGIAS DE LA INFORMACION", NULL, 1);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (001, "COMPETENCIA COMUNICATIVO", NULL, 1);

-- SEGUNDO SEMESTRE --
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (108, "MATEMATICAS 3", 101, 2);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (109, "MATEMATICAS 4", 102, 2);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (110, "FISICA", 102, 2);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (112, "PROGRAMACION 1", 104, 2);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (114, "COMPORTAMIENTO ORGANIZACIONAL", 106, 2);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (115, "TELEINFORMATICA", 103, 2);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (003, "APRECIACION A LAS ARTES", NULL, 2);

-- TERCER SEMESTRE --
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (117, "MATEMATICAS DISCRETAS", 109, 3);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (118, "ANALISIS DE SISTEMAS 1", NULL, 3);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (119, "SISTEMAS ELECTRONICOS", 110, 3);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (121, "PROGRAMACION 2", 112, 3);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (123, "PROCESAMIENTO DE IMAGENES AUDIO Y DIALOGOS ", NULL, 3);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (125, "ESTRUCTURA DE DATOS", 112, 3);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (126, "TEORIA DE AUTOMATAS", 109, 3);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (042, "CULTURA DE CALIDAD", NULL, 3);

-- CUARTO SEMESTRE --
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (127, "ECUACIONES DIFERENCIALES", 117, 4);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (128, "CIRCUITOS DIGITALES", 119, 4);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (130, "BIOINFORMATICA", 125, 4);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (131, "BASE DE DATOS", 125, 4);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (530, "METODOLOGIAS MODERNAS DE ING. DE SOFTWARE", NULL, 4);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (133, "INTERCONECTIVIDAD DE REDES", 115, 4);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (004, "AMBIENTE Y SUSTENTABILIDAD", NULL, 4);

-- QUINTO SEMESTRE --
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (134, "ESTADISTICA 1", 127, 5);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (135, "ANALISIS NUMERICO", 127, 5);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (136, "MICROPROCESADORES", 128, 5);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (138, "ARQUITECTURA AVANZADA DE COMPUTADORAS", NULL, 5);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (536, "ANALISIS DE SISTEMAS 2", 118, 5);
INSERT INTO MATERIAS (clave, nombre, requires, semestre) VALUES (005, "CONTEXTO SOCIAL DE LA PROFESION", NULL, 5);

-----------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE FRECUENCIAS(
  id SMALLINT(6) UNSIGNED AUTO_INCREMENT NOT NULL,
  frecuencia INT(6) NOT NULL,
  diaSemana VARCHAR(20) NOT NULL,
  CONSTRAINT UC_FRECUENCIAS UNIQUE (diaSemana),
  CONSTRAINT PK_FRECUENCIAS PRIMARY KEY (id)
);

-- Lunes --
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(1, "Lu");

INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(2, "Lu-Ma");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(2, "Lu-Mi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(2, "Lu-Ju");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(2, "Lu-Vi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(2, "Lu-Sa");

INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Lu-Ma-Mi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Lu-Ma-Ju");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Lu-Ma-Vi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Lu-Ma-Sa");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Lu-Mi-Ju");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Lu-Mi-Vi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Lu-Mi-Sa");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Lu-Ju-Vi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Lu-Ju-Sa");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Lu-Vi-Sa");

INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(4, "Lu-Ma-Mi-Ju");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(4, "Lu-Ma-Mi-Vi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(4, "Lu-Ma-Mi-Sa");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(4, "Lu-Ma-Ju-Vi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(4, "Lu-Ma-Ju-Sa");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(4, "Lu-Ma-Vi-Sa");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(4, "Lu-Mi-Ju-Vi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(4, "Lu-Mi-Ju-Sa");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(4, "Lu-Mi-Vi-Sa");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(4, "Lu-Ju-Vi-Sa");

INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(5, "Lu-Ma-Mi-Ju-Vi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(5, "Lu-Ma-Mi-Ju-Sa");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(5, "Lu-Ma-Mi-Vi-Sa");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(5, "Lu-Ma-Ju-Vi-Sa");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(5, "Lu-Mi-Ju-Vi-Sa");

INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(6, "Lu-Ma-Mi-Ju-Vi-Sa");

-- Martes --
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(1, "Ma");

INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(2, "Ma-Mi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(2, "Ma-Ju");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(2, "Ma-Vi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(2, "Ma-Sa");

INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Ma-Mi-Ju");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Ma-Mi-Vi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Ma-Mi-Sa");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Ma-Ju-Vi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Ma-Ju-Sa");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Ma-Vi-Sa");

INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(4, "Ma-Mi-Ju-Vi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(4, "Ma-Mi-Ju-Sa");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(4, "Ma-Mi-Vi-Sa");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(4, "Ma-Ju-Vi-Sa");

INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(5, "Ma-Mi-Ju-Vi-Sa");

-- Miercoles --
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(1, "Mi");

INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(2, "Mi-Ju");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(2, "Mi-Vi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(2, "Mi-Sa");

INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Mi-Ju-Vi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Mi-Ju-Sa");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Mi-Vi-Sa");

INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(4, "Mi-Ju-Vi-Sa");

-- Jueves --
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(1, "Ju");

INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(2, "Ju-Vi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(2, "Ju-Sa");

INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(3, "Ju-Vi-Sa");

-- Viernes --
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(1, "Vi");
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(2, "Vi-Sa");

-- Sabado --
INSERT INTO FRECUENCIAS(frecuencia, diaSemana) VALUES(1, "Sa");


--------------------------------------------------------------------------------------------------------------------------------
-- Maestros --
INSERT INTO MAESTROS (matricula, apellidoPaterno, apellidoMaterno, nombre, fechaIngreso, estatus) VALUES
(1000001, "AGUILAR", "DE LA ROSA", "MARTIN ALEJANDRO", "2016-02-22", 4),
(1000002, "CANDELARIA", "CORONADO", "MIGUEL ALEJANDRO", "2016-02-22", 4),
(1000003, "CANDELARIA", "TOVAR", "JOSE LUIS", "2016-02-22", 4),
(1000004, "CASTAÑEDA", "RODRIGUEZ", "DIANA", "2016-02-22", 4),
(1000005, "CASTRO", "MEDELLIN", "REYNA GUADALUPE", "2016-02-22", 4),
(1000006, "DE LA FUENTE", "GARCIA", "CARMEN DEL ROSARIO", "2016-02-22", 4),
(1000007, "DE LA GARZA", "OCHOA", "JUAN JESUS", "2016-02-22", 4),
(1000008, "ELIZONDO", "ESPINOZA", "CARLOS", "2016-02-22", 4),
(1000009, "GARZA", "GARZA", "LUIS GERARDO", "2016-02-22", 4),
(10000010, "GARZA", "GONZALEZ", "IRMA LETICIA", "2016-02-22", 4),
(10000011, "GIL", "GONZALEZ", "ALEIDA MAGDALENA", "2016-02-22", 4),
(10000012, "GRACIA", "PINILLA", "MIGUEL ANGEL", "2016-02-22", 4),
(10000013, "HERNANDEZ", "BAEZ", "JORGE", "2016-02-22", 4),
(10000014, "HERNANDEZ", "CABRERA", "FRANCISCO", "2016-02-22", 4),
(10000015, "HERNANDEZ", "OYERVIDES", "MARISSA ESMERALDA", "2016-02-22", 4),
(10000016, "ISLAS", "PINEDA", "JORGE ALBERTO", "2016-02-22", 4),
(10000017, "JUAREZ", "AGUILAR", "MARIA LUISA", "2016-02-22", 4),
(10000018, "LEDEZMA", "MARTINEZ", "MARTHA", "2016-02-22", 4),
(10000019, "LUNA", "CRIADO", "CARLOS", "2016-02-22", 4),
(10000020, "MARTINEZ", "CEJUDO", "MARIA DEL CARMEN", "2016-02-22", 4);

--------------------------------------------------------------------------------------------------------------------------------
-- Cursos --
-- Primer Semestre --
INSERT INTO testApp.CURSOS (id_curso,materia,maestro,semestre,grupo,frecuencia,horaInicio,horaFin) VALUES
(1,103,1000001,1,1,12,'07:00:00','08:00:00') ,
(2,103,1000001,1,2,35,'07:00:00','08:30:00') ,
(3,106,1000002,1,1,12,'08:00:00','09:00:00') ,
(4,106,1000002,1,2,35,'08:30:00','10:00:00') ,
(5,104,1000003,1,1,12,'09:00:00','10:00:00') ,
(6,104,1000003,1,2,35,'10:00:00','11:30:00') ,
(7,1,1000004,1,1,12,'10:00:00','11:00:00') ,
(8,1,1000004,1,2,35,'11:30:00','13:00:00') ,
(9,101,1000005,1,1,12,'11:00:00','12:00:00') ,
(10,101,1000005,1,2,12,'07:00:00','08:00:00') ,
(11,107,1000006,1,1,35,'07:00:00','08:30:00') ,
(12,107,1000006,1,2,12,'08:00:00','09:00:00') ,
(13,102,1000007,1,1,35,'08:30:00','10:00:00') ,
(14,102,1000007,1,2,12,'09:00:00','10:00:00'),
(15,2,1000008,1,1,35,'10:00:00','11:30:00'),
(16,2,1000009,1,2,12,'10:00:00','11:00:00') ;

-- Segundo Semestre --
INSERT INTO testApp.CURSOS (id_curso,materia,maestro,semestre,grupo,frecuencia,horaInicio,horaFin) VALUES
(17,108,10000010,2,1,12,'07:00:00','08:00:00') ,
(18,108,10000010,2,2,35,'07:00:00','08:30:00') ,
(19,109,10000011,2,1,12,'08:00:00','09:00:00') ,
(20,109,10000011,2,2,35,'08:30:00','10:00:00') ,
(21,110,10000012,2,1,12,'09:00:00','10:00:00') ,
(22,110,10000012,2,2,35,'10:00:00','11:30:00') ,
(23,112,10000013,2,1,12,'10:00:00','11:00:00') ,
(24,112,10000013,2,2,35,'11:30:00','13:00:00') ,
(25,114,10000014,2,1,12,'11:00:00','12:00:00') ,
(26,114,10000014,2,2,12,'07:00:00','08:00:00') ,
(27,115,10000015,2,1,35,'07:00:00','08:30:00') ,
(28,115,10000015,2,2,12,'08:00:00','09:00:00') ,
(29,3,10000016,2,1,35,'08:30:00','10:00:00') ,
(30,3,10000016,2,2,12,'09:00:00','10:00:00');

-- Tercer Semestre --
INSERT INTO testApp.CURSOS (id_curso,materia,maestro,semestre,grupo,frecuencia,horaInicio,horaFin) VALUES
(31,117,1000001,3,1,12,'12:00:00','13:00:00') ,
(32,117,1000001,3,2,35,'12:00:00','13:30:00') ,
(33,118,1000002,3,1,12,'13:00:00','14:00:00') ,
(34,118,1000002,3,2,35,'13:30:00','15:00:00') ,
(35,119,1000003,3,1,12,'14:00:00','15:00:00') ,
(36,119,1000003,3,2,35,'15:00:00','16:30:00') ,
(37,121,1000004,3,1,12,'15:00:00','16:00:00') ,
(38,121,1000004,3,2,35,'16:30:00','18:00:00') ,
(39,123,1000005,3,1,12,'16:00:00','18:00:00') ,
(40,123,1000005,3,2,12,'12:00:00','13:00:00') ,
(41,125,1000006,3,1,35,'12:00:00','13:30:00') ,
(42,125,1000006,3,2,12,'13:00:00','14:00:00') ,
(43,126,1000007,3,1,35,'13:30:00','15:00:00') ,
(44,126,1000007,3,2,12,'14:00:00','15:00:00'),
(45,42,1000008,3,1,35,'15:00:00','16:30:00'),
(46,42,1000009,3,2,12,'15:00:00','16:00:00') ;

-- Cuarto Semestre --
INSERT INTO testApp.CURSOS (id_curso,materia,maestro,semestre,grupo,frecuencia,horaInicio,horaFin) VALUES
(47,127,10000010,4,1,12,'12:00:00','13:00:00') ,
(48,127,10000010,4,2,35,'12:00:00','13:30:00') ,
(49,128,10000011,4,1,12,'13:00:00','14:00:00') ,
(50,128,10000011,4,2,35,'13:30:00','15:00:00') ,
(51,130,10000012,4,1,12,'14:00:00','15:00:00') ,
(52,130,10000012,4,2,35,'15:00:00','16:30:00') ,
(53,131,10000013,4,1,12,'15:00:00','16:00:00') ,
(54,131,10000013,4,2,35,'16:30:00','18:00:00') ,
(55,530,10000014,4,1,12,'16:00:00','18:00:00') ,
(56,530,10000014,4,2,12,'12:00:00','13:00:00') ,
(57,133,10000015,4,1,35,'12:00:00','13:30:00') ,
(58,133,10000015,4,2,12,'13:00:00','14:00:00') ,
(59,4,10000016,4,1,35,'13:30:00','15:00:00') ,
(60,4,10000016,4,2,12,'14:00:00','15:00:00');

-- Quinto Semestre --
INSERT INTO testApp.CURSOS (id_curso,materia,maestro,semestre,grupo,frecuencia,horaInicio,horaFin) VALUES
(61,134,1000001,5,1,12,'12:00:00','13:00:00') ,
(62,134,1000002,5,2,35,'12:00:00','13:30:00') ,
(63,135,1000003,5,1,12,'13:00:00','14:00:00') ,
(64,135,1000004,5,2,35,'13:30:00','15:00:00') ,
(65,136,1000005,5,1,12,'14:00:00','15:00:00') ,
(66,136,1000006,5,2,35,'15:00:00','16:30:00') ,
(67,138,1000007,5,1,12,'15:00:00','16:00:00') ,
(68,138,1000008,5,2,35,'16:30:00','18:00:00') ,
(69,536,1000009,5,1,12,'16:00:00','18:00:00') ,
(70,536,10000010,5,2,12,'12:00:00','13:00:00') ,
(71,5,10000011,5,1,35,'12:00:00','13:30:00') ,
(72,5,10000012,5,2,12,'13:00:00','14:00:00') ;

--------------------------------------------------------------------------------------------------------------------------------

-- Inscripciones --
INSERT INTO INSCRIPCIONES(matricula, curso, estatus) VALUES (1635501, 1, 1);
