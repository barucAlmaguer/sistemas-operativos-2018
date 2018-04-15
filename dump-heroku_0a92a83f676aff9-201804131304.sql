-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: us-cdbr-iron-east-05.cleardb.net    Database: heroku_0a92a83f676aff9
-- ------------------------------------------------------
-- Server version	5.6.36-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
  `id_curso` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `materia` int(7) NOT NULL,
  `maestro` smallint(6) unsigned NOT NULL,
  `semestre` tinyint(2) NOT NULL,
  `frecuencia` smallint(6) unsigned NOT NULL,
  `horaInicio` time NOT NULL,
  `horaFin` time NOT NULL,
  PRIMARY KEY (`id_curso`),
  UNIQUE KEY `UC_CURSOS` (`materia`,`maestro`,`semestre`,`frecuencia`,`horaInicio`,`horaFin`),
  KEY `FK_CURSOS_MAESTRO` (`maestro`),
  KEY `FK_CURSOS_FRECUENCIA` (`frecuencia`),
  CONSTRAINT `FK_CURSOS_FRECUENCIA` FOREIGN KEY (`frecuencia`) REFERENCES `frecuencias` (`id_frecuencias`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CURSOS_MAESTRO` FOREIGN KEY (`maestro`) REFERENCES `maestros` (`id_maestros`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_CURSOS_MATERIA` FOREIGN KEY (`materia`) REFERENCES `materias` (`clave`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estatus`
--

DROP TABLE IF EXISTS `estatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estatus` (
  `id_estatus` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `clave` int(7) NOT NULL,
  `requires` int(7) DEFAULT NULL,
  PRIMARY KEY (`id_estatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estatus`
--

LOCK TABLES `estatus` WRITE;
/*!40000 ALTER TABLE `estatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `estatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estudiantes` (
  `id_estudiante` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `matricula` int(7) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellidoPaterno` varchar(30) NOT NULL,
  `apellidoMaterno` varchar(30) NOT NULL,
  `semestre` tinyint(2) NOT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `estatus` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`id_estudiante`),
  UNIQUE KEY `UC_ESTUDIANTE1` (`matricula`),
  UNIQUE KEY `UC_ESTUDIANTE2` (`nombre`,`apellidoPaterno`,`apellidoMaterno`),
  KEY `estatus` (`estatus`),
  CONSTRAINT `estudiantes_ibfk_1` FOREIGN KEY (`estatus`) REFERENCES `estatus` (`id_estatus`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frecuencias`
--

DROP TABLE IF EXISTS `frecuencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `frecuencias` (
  `id_frecuencias` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `frecuencia` int(6) NOT NULL,
  `diaSemana` varchar(20) NOT NULL,
  `requires` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_frecuencias`),
  UNIQUE KEY `UC_FRECUENCIA` (`diaSemana`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `frecuencias`
--

LOCK TABLES `frecuencias` WRITE;
/*!40000 ALTER TABLE `frecuencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `frecuencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripciones`
--

DROP TABLE IF EXISTS `inscripciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inscripciones` (
  `id_inscripcion` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `matricula` int(7) NOT NULL,
  `curso` smallint(6) unsigned NOT NULL,
  `estatus` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`id_inscripcion`),
  UNIQUE KEY `UC_INSCRIPCION` (`matricula`,`curso`),
  KEY `FK_INSCRIPCION_CURSO` (`curso`),
  KEY `FK_INSCRIPCION_ESTATUS` (`estatus`),
  CONSTRAINT `FK_INSCRIPCION_CURSO` FOREIGN KEY (`curso`) REFERENCES `cursos` (`id_curso`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_INSCRIPCION_ESTATUS` FOREIGN KEY (`estatus`) REFERENCES `estatus` (`id_estatus`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_INSCRIPCION_MATRICULA` FOREIGN KEY (`matricula`) REFERENCES `estudiantes` (`matricula`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripciones`
--

LOCK TABLES `inscripciones` WRITE;
/*!40000 ALTER TABLE `inscripciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `inscripciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maestros`
--

DROP TABLE IF EXISTS `maestros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maestros` (
  `id_maestros` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellidoPaterno` varchar(30) NOT NULL,
  `apellidoMaterno` varchar(30) NOT NULL,
  `semestre` tinyint(2) NOT NULL,
  `fechaIngreso` date DEFAULT NULL,
  `estatus` smallint(6) unsigned NOT NULL,
  PRIMARY KEY (`id_maestros`),
  UNIQUE KEY `UC_MAESTROS` (`nombre`,`apellidoPaterno`,`apellidoMaterno`),
  KEY `estatus` (`estatus`),
  CONSTRAINT `maestros_ibfk_1` FOREIGN KEY (`estatus`) REFERENCES `estatus` (`id_estatus`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maestros`
--

LOCK TABLES `maestros` WRITE;
/*!40000 ALTER TABLE `maestros` DISABLE KEYS */;
/*!40000 ALTER TABLE `maestros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias` (
  `id_materias` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `clave` int(7) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `requires` int(7) DEFAULT NULL,
  `semestre` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_materias`),
  UNIQUE KEY `UC_MATERIA1` (`clave`,`nombre`),
  UNIQUE KEY `UC_MATERIA2` (`nombre`),
  KEY `requires` (`requires`),
  CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`requires`) REFERENCES `materias` (`clave`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,101,'MATEMATICAS 1',NULL,1),(11,102,'MATEMATICAS 2',NULL,1),(21,103,'PRINCIPIOS DE ARQUITECTURA COMPUTACIONAL',NULL,1),(31,104,'PROGRAMACION ORIENTADA A OBJETOS',NULL,1),(41,106,'ADMINISTRACION',NULL,1),(51,107,'METODOLOGIA DE LA PROGRAMACION',NULL,1),(61,2,'APLICACION DE TECNOLOGIAS DE LA INFORMACION',NULL,1),(71,1,'COMPETENCIA COMUNICATIVO',NULL,1);
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'barucAlmaguer','1443335'),(11,'michelBecerra','1234');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'heroku_0a92a83f676aff9'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-13 13:04:59
