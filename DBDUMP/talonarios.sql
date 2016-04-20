-- MySQL dump 10.16  Distrib 10.1.9-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: talonarios
-- ------------------------------------------------------
-- Server version	10.1.9-MariaDB

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
-- Table structure for table `admon-listado`
--

DROP TABLE IF EXISTS `admon-listado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admon-listado` (
  `codadm` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `nom` varchar(50) NOT NULL,
  `ap` varchar(50) NOT NULL,
  `cargo` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  `include` varchar(2) NOT NULL DEFAULT 'SI',
  `tipo-contrato` varchar(60) NOT NULL,
  PRIMARY KEY (`codadm`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admon-listado`
--

LOCK TABLES `admon-listado` WRITE;
/*!40000 ALTER TABLE `admon-listado` DISABLE KEYS */;
INSERT INTO `admon-listado` VALUES (1,'Pastora','Abigail','Perez',1,2,'NO',''),(2,'Doctora: Abogada','Alba Marina','Florez',2,2,'SI','Tiempo Completo'),(3,NULL,'Rafael David','Perez Iturriago',3,1,'SI','Tiempo Completo'),(4,'Ingeniero de Sistemas','Alba Lucia','Barrera Olaya',4,2,'SI','Tiempo Completo');
/*!40000 ALTER TABLE `admon-listado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apoyo-listado`
--

DROP TABLE IF EXISTS `apoyo-listado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apoyo-listado` (
  `codapo` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `num` varchar(50) NOT NULL,
  `ap` varchar(50) NOT NULL,
  `cargo` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  `include` varchar(2) NOT NULL DEFAULT 'SI',
  `tipo-contrato` varchar(60) NOT NULL,
  `email` varchar(120) DEFAULT NULL,
  `tel` varchar(60) NOT NULL,
  `cel` varchar(60) NOT NULL,
  PRIMARY KEY (`codapo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apoyo-listado`
--

LOCK TABLES `apoyo-listado` WRITE;
/*!40000 ALTER TABLE `apoyo-listado` DISABLE KEYS */;
INSERT INTO `apoyo-listado` VALUES (1,'','Jonathan Reuel','Mlacker',5,1,'SI','Tiempo Completo','jmlacker@gmail.com','','3123921914'),(2,'Auxiliar de Enfermería','Sandra Patricia','Florez Londoño',6,2,'SI','Tiempo Completo','sandramj2@hotmail.com','6023753','3123470610'),(3,'(Hace Parte de Grupo Directivo)','Eliani','Chacon Florez',7,2,'SI','Tiempo Completo','eliani1904@gmail.com','','3165403670'),(4,'Técnico en Doc y Reg de Operac Contab','Eduar Andres','Riveros Chacon',8,2,'SI','Tiempo Completo','eduar-riveros@hotmail.com','','3214192028'),(5,'Bachiller','Sol Esther','Mejia Gonzalez',9,2,'SI','Tiempo Completo',NULL,'6218938','3122396233, 3202219463'),(6,NULL,'Victor David','Camargo Perez',9,1,'SI','Tiempo Completo','vidacape26@hotmail.com, victordavid.camargo@gmail.com','','3134340628'),(7,NULL,'Gloria','Trespalacios Polanco',9,2,'SI','Tiempo Completo',NULL,'6021279','');
/*!40000 ALTER TABLE `apoyo-listado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carga-academica`
--

DROP TABLE IF EXISTS `carga-academica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carga-academica` (
  `codcar` int(11) NOT NULL AUTO_INCREMENT,
  `codmat` int(11) NOT NULL,
  `grado` int(11) NOT NULL,
  `grupos` int(11) NOT NULL DEFAULT '1',
  `materia` varchar(50) NOT NULL DEFAULT 'Matematicas',
  `prof-nom` varchar(50) NOT NULL DEFAULT 'Cesar Alirio',
  `prof-ap` varchar(50) NOT NULL DEFAULT 'Rey Rangel',
  `year` int(11) NOT NULL DEFAULT '2016',
  PRIMARY KEY (`codcar`)
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carga-academica`
--

LOCK TABLES `carga-academica` WRITE;
/*!40000 ALTER TABLE `carga-academica` DISABLE KEYS */;
INSERT INTO `carga-academica` VALUES (1,2,2,1,'Matematicas','Sixta Isabel','Moreno Roa',2016),(2,12,2,1,'Estadistica','Sixta Isabel','Moreno Roa',2016),(3,3,3,1,'Matematicas','Sixta Isabel','Moreno Roa',2016),(4,4,4,1,'Matematicas','Sixta Isabel','Moreno Roa',2016),(5,13,3,1,'Estadistica','Sixta Isabel','Moreno Roa',2016),(6,14,4,1,'Estadistica','Sixta Isabel','Moreno Roa',2016),(7,45,2,1,'Ciencias Naturales','Olga','Avendaño',2016),(8,46,3,1,'Ciencias Naturales','Olga','Avendaño',2016),(9,47,4,1,'Ciencias Naturales','Olga','Avendaño',2016),(10,23,2,1,'Lengua Castellana','Sandra Rocio','Pareja Cortina',2016),(11,24,3,1,'Lengua Castellana','Sandra Rocio','Pareja Cortina',2016),(12,25,4,1,'Lengua Castellana','Sandra Rocio','Pareja Cortina',2016),(13,1,1,1,'Matematicas','Nury','Barragan',2016),(14,6,1,1,'Geometria','Nury','Barragan',2016),(15,11,1,1,'Estadistica','Nury','Barragan',2016),(16,22,1,1,'Lengua Castellana','Nury','Barragan',2016),(17,44,1,1,'Ciencias Naturales','Nury','Barragan',2016),(18,64,1,1,'Educacion Fisica','Nury','Barragan',2016),(19,93,1,1,'Ciencias Sociales','Nury','Barragan',2016),(20,106,1,1,'Educacion Religiosa','Nury','Barragan',2016),(21,117,1,1,'Educacion Etica y Valores','Nury','Barragan',2016),(22,7,2,1,'Geometria','Olga','Avendaño',2016),(23,65,2,1,'Educacion Fisica','Olga','Avendaño',2016),(24,94,2,1,'Ciencias Sociales','Olga','Avendaño',2016),(25,107,2,1,'Educacion Religiosa','Olga','Avendaño',2016),(26,118,2,1,'Educacion Etica y Valores','Olga','Avendaño',2016),(27,8,3,1,'Geometria','Sandra Rocio','Pareja Cortina',2016),(28,66,3,1,'Educacion Fisica','Sandra Rocio','Pareja Cortina',2016),(29,95,3,1,'Ciencias Sociales','Sandra Rocio','Pareja Cortina',2016),(30,108,3,1,'Educacion Religiosa','Sandra Rocio','Pareja Cortina',2016),(31,119,3,1,'Educacion Etica y Valores','Sandra Rocio','Pareja Cortina',2016),(32,9,4,1,'Geometria','Sixta Isabel','Moreno Roa',2016),(33,67,4,1,'Educacion Fisica','Sixta Isabel','Moreno Roa',2016),(34,96,4,1,'Ciencias Sociales','Sixta Isabel','Moreno Roa',2016),(35,109,4,1,'Educacion Religiosa','Sixta Isabel','Moreno Roa',2016),(36,120,4,1,'Educacion Etica y Valores','Sixta Isabel','Moreno Roa',2016),(37,84,1,1,'Tecnologia e Informatica','Ana Lyda','Lopez Pinzon',2016),(38,85,2,1,'Tecnologia e Informatica','Ana Lyda','Lopez Pinzon',2016),(39,86,3,1,'Tecnologia e Informatica','Ana Lyda','Lopez Pinzon',2016),(40,87,4,1,'Tecnologia e Informatica','Ana Lyda','Lopez Pinzon',2016),(41,88,5,1,'Tecnologia e Informatica','Ana Lyda','Lopez Pinzon',2016),(42,89,6,2,'Tecnologia e Informatica','Ana Lyda','Lopez Pinzon',2016),(43,90,7,2,'Tecnologia e Informatica','Ana Lyda','Lopez Pinzon',2016),(44,91,8,2,'Tecnologia e Informatica','Ana Lyda','Lopez Pinzon',2016),(45,100,8,2,'Ciencias Sociales','Raomit','Robles Robles',2016),(46,101,9,1,'Ciencias Sociales','Raomit','Robles Robles',2016),(47,102,10,1,'Ciencias Sociales','Raomit','Robles Robles',2016),(48,103,11,1,'Ciencias Sociales','Raomit','Robles Robles',2016),(49,104,10,1,'Ciencias Economicas y Politicas','Raomit','Robles Robles',2016),(50,105,11,1,'Ciencias Economicas y Politicas','Raomit','Robles Robles',2016),(51,26,5,1,'Lengua Castellana','Maria Del Carmen','Jimenez de Gutierrez',2016),(52,27,6,2,'Lengua Castellana','Maria Del Carmen','Jimenez de Gutierrez',2016),(53,28,7,2,'Lengua Castellana','Maria Del Carmen','Jimenez de Gutierrez',2016),(54,110,5,1,'Educacion Religiosa','Maria Concepcion','Becerra Meza',2016),(55,111,6,2,'Educacion Religiosa','Maria Concepcion','Becerra Meza',2016),(56,112,7,2,'Educacion Religiosa','Maria Concepcion','Becerra Meza',2016),(57,113,8,2,'Educacion Religiosa','Maria Concepcion','Becerra Meza',2016),(58,114,9,1,'Educacion Religiosa','Maria Concepcion','Becerra Meza',2016),(59,115,10,1,'Educacion Religiosa','Maria Concepcion','Becerra Meza',2016),(60,116,11,1,'Educacion Religiosa','Maria Concepcion','Becerra Meza',2016),(61,75,1,1,'Artistica','Emilda','Muñoz Barrios',2016),(62,76,2,1,'Artistica','Emilda','Muñoz Barrios',2016),(63,77,3,1,'Artistica','Emilda','Muñoz Barrios',2016),(64,78,4,1,'Artistica','Emilda','Muñoz Barrios',2016),(65,79,5,1,'Artistica','Emilda','Muñoz Barrios',2016),(66,80,6,2,'Artistica','Emilda','Muñoz Barrios',2016),(67,81,7,2,'Artistica','Emilda','Muñoz Barrios',2016),(68,82,8,2,'Artistica','Emilda','Muñoz Barrios',2016),(69,83,9,1,'Artistica','Emilda','Muñoz Barrios',2016),(70,130,6,2,'Tecnicas y Gestion','Audry','Rodriguez',2016),(71,131,7,2,'Tecnicas y Gestion','Audry','Rodriguez',2016),(72,132,8,2,'Tecnicas y Gestion','Audry','Rodriguez',2016),(73,133,9,1,'Tecnicas y Gestion','Audry','Rodriguez',2016),(74,134,6,2,'Contabilidad','Audry','Rodriguez',2016),(75,135,7,2,'Contabilidad','Audry','Rodriguez',2016),(76,136,8,2,'Contabilidad','Audry','Rodriguez',2016),(77,137,9,1,'Contabilidad','Audry','Rodriguez',2016),(78,138,10,1,'Contabilidad','Audry','Rodriguez',2016),(79,139,11,1,'Contabilidad','Audry','Rodriguez',2016),(81,58,9,1,'Quimica','Oscar Mauricio','Osorio Serrano',2016),(82,59,10,1,'Quimica','Oscar Mauricio','Osorio Serrano',2016),(83,60,11,1,'Quimica','Oscar Mauricio','Osorio Serrano',2016),(84,51,8,2,'Biologia','Oscar Mauricio','Osorio Serrano',2016),(85,52,9,1,'Biologia','Oscar Mauricio','Osorio Serrano',2016),(86,53,10,1,'Biologia','Oscar Mauricio','Osorio Serrano',2016),(87,54,11,1,'Biologia','Oscar Mauricio','Osorio Serrano',2016),(88,121,5,1,'Educacion Etica y Valores','Leddy Yasmin','Gomez Martinez',2016),(89,122,6,2,'Educacion Etica y Valores','Leddy Yasmin','Gomez Martinez',2016),(90,97,5,1,'Ciencias Sociales','Leddy Yasmin','Gomez Martinez',2016),(91,98,6,2,'Ciencias Sociales','Leddy Yasmin','Gomez Martinez',2016),(92,99,7,2,'Ciencias Sociales','Leddy Yasmin','Gomez Martinez',2016),(93,29,8,2,'Lengua Castellana','Isabel Cristina','Martinez Villalba',2016),(94,30,9,1,'Lengua Castellana','Isabel Cristina','Martinez Villalba',2016),(95,31,10,1,'Lengua Castellana','Isabel Cristina','Martinez Villalba',2016),(96,32,11,1,'Lengua Castellana','Isabel Cristina','Martinez Villalba',2016),(97,128,10,1,'Filosofia','Isabel Cristina','Martinez Villalba',2016),(98,129,11,1,'Filosofia','Isabel Cristina','Martinez Villalba',2016),(99,92,9,1,'Tecnologia e Informatica','Edy Andrea','Rojas Arango',2016),(100,140,10,1,'Laboratorio Contable','Edy Andrea','Rojas Arango',2016),(101,141,11,1,'Laboratorio Contable','Edy Andrea','Rojas Arango',2016),(102,142,10,1,'Administracion','Edy Andrea','Rojas Arango',2016),(103,143,11,1,'Administracion','Edy Andrea','Rojas Arango',2016),(104,144,10,1,'Mercadeo','Edy Andrea','Rojas Arango',2016),(105,145,11,1,'Mercadeo','Edy Andrea','Rojas Arango',2016),(106,123,7,2,'Educacion Etica y Valores','Edy Andrea','Rojas Arango',2016),(107,124,8,2,'Educacion Etica y Valores','Edy Andrea','Rojas Arango',2016),(108,125,9,1,'Educacion Etica y Valores','Edy Andrea','Rojas Arango',2016),(109,126,10,1,'Educacion Etica y Valores','Edy Andrea','Rojas Arango',2016),(110,127,11,1,'Educacion Etica y Valores','Edy Andrea','Rojas Arango',2016),(111,61,9,1,'Fisica','Cesar Alirio','Rey Rangel',2016),(112,62,10,1,'Fisica','Cesar Alirio','Rey Rangel',2016),(113,63,11,1,'Fisica','Cesar Alirio','Rey Rangel',2016),(114,68,5,1,'Educacion Fisica','Raul','Roa Campo',2016),(115,69,6,2,'Educacion Fisica','Raul','Roa Campo',2016),(116,70,7,2,'Educacion Fisica','Raul','Roa Campo',2016),(117,71,8,2,'Educacion Fisica','Raul','Roa Campo',2016),(118,72,9,1,'Educacion Fisica','Raul','Roa Campo',2016),(119,73,10,1,'Educacion Fisica','Raul','Roa Campo',2016),(120,74,11,1,'Educacion Fisica','Raul','Roa Campo',2016),(121,39,7,2,'Ingles','Habib Alfonso','Jalk Hincapie',2016),(122,40,8,2,'Ingles','Habib Alfonso','Jalk Hincapie',2016),(123,41,9,1,'Ingles','Habib Alfonso','Jalk Hincapie',2016),(124,42,10,1,'Ingles','Habib Alfonso','Jalk Hincapie',2016),(125,43,11,1,'Ingles','Habib Alfonso','Jalk Hincapie',2016),(126,33,1,1,'Ingles','Tatiana Alejandra','Ballestas Zappa',2016),(127,34,2,1,'Ingles','Tatiana Alejandra','Ballestas Zappa',2016),(128,35,3,1,'Ingles','Tatiana Alejandra','Ballestas Zappa',2016),(129,36,4,1,'Ingles','Tatiana Alejandra','Ballestas Zappa',2016),(130,37,5,1,'Ingles','Tatiana Alejandra','Ballestas Zappa',2016),(131,38,6,2,'Ingles','Tatiana Alejandra','Ballestas Zappa',2016),(132,48,5,1,'Ciencias Naturales','Keyla Karina','Zapata Suarez',2016),(133,49,6,2,'Biologia','Keyla Karina','Zapata Suarez',2016),(134,50,7,2,'Biologia','Keyla Karina','Zapata Suarez',2016),(135,55,6,2,'Quimica','Keyla Karina','Zapata Suarez',2016),(136,56,7,2,'Quimica','Keyla Karina','Zapata Suarez',2016),(137,57,8,2,'Quimica','Keyla Karina','Zapata Suarez',2016),(138,10,5,1,'Geometria','Efrain','Melgarejo Molina',2016),(139,17,6,2,'Geometria','Efrain','Melgarejo Molina',2016),(140,5,5,1,'Matematicas','Efrain','Melgarejo Molina',2016),(141,15,6,2,'Matematicas','Efrain','Melgarejo Molina',2016),(142,16,7,2,'Matematicas','Efrain','Melgarejo Molina',2016),(143,18,8,1,'Algebra','Efrain','Melgarejo Molina',2016),(144,18,8,1,'Algebra','Cesar Alirio','Rey Rangel',2016),(145,19,9,1,'Algebra','Cesar Alirio','Rey Rangel',2016),(146,20,10,1,'Trigonometria','Cesar Alirio','Rey Rangel',2016),(147,21,11,1,'Calculo','Cesar Alirio','Rey Rangel',2016);
/*!40000 ALTER TABLE `carga-academica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargos-listado`
--

DROP TABLE IF EXISTS `cargos-listado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargos-listado` (
  `codcar` int(11) NOT NULL AUTO_INCREMENT,
  `cargo` varchar(50) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`codcar`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos-listado`
--

LOCK TABLES `cargos-listado` WRITE;
/*!40000 ALTER TABLE `cargos-listado` DISABLE KEYS */;
INSERT INTO `cargos-listado` VALUES (1,'Representante Legal','Comite Directivo'),(2,'Rector(a)','Comite Directivo'),(3,'Coordinador(a) Academico','Comite Directivo'),(4,'Coordinador(a) de Bienestar','Comite Directivo'),(5,'Secretaria Administrativa','Personal de Apoyo'),(6,'Enfermera','Personal de Apoyo'),(7,'Secretaria Recepcion','Personal de Apoyo'),(8,'Auxiliar Contable','Personal de Apoyo'),(9,'Servicios Generales','Servicios Generales');
/*!40000 ALTER TABLE `cargos-listado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudades`
--

DROP TABLE IF EXISTS `ciudades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudades` (
  `cod_ciu` int(11) NOT NULL AUTO_INCREMENT,
  `ciudad` varchar(50) NOT NULL,
  `Departamento` varchar(50) NOT NULL,
  `pais` int(11) NOT NULL,
  PRIMARY KEY (`cod_ciu`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudades`
--

LOCK TABLES `ciudades` WRITE;
/*!40000 ALTER TABLE `ciudades` DISABLE KEYS */;
INSERT INTO `ciudades` VALUES (1,'Barrancabermeja','Santander',1),(2,'Medellin','Antioquia',1),(3,'Pamplona','Norte de Santander',1),(4,'Cartagena','Bolívar',1),(5,'Bucaramanga','Santander',1),(6,'Bogota','Cundinamarca',1),(7,'Yondo','Antioquia',1),(8,'Riohacha','Guajira',1),(9,'Florida Blanca','Santander',1),(10,'Barranquilla','Atlantico',1),(11,'Puerto Wilches','Santander',1),(12,'San Vicente de Chucuri','Santander',1),(13,'Santa Cruz de Lorica','Cordoba',1),(14,'Maracaibo','Zulia',2),(15,'Cucuta','Norte de Santander',1),(16,'Rionegro','Santander',1),(17,'Neiva','Huila',1),(18,'Santa Marta','Magdalena',1),(19,'Mompox','Bolivar',1),(20,'Ibague','Tolima',1),(21,'San Gil','Santander',1),(22,'Tunja','Boyaca',1),(23,'Aguachica','Cesar',1),(24,'San Pablo','Bolivar',1),(25,'Valledupar','Cesar',1),(26,'Granada','Granada',3),(27,'Magangue','Bolivar',1);
/*!40000 ALTER TABLE `ciudades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract` (
  `conid` int(11) NOT NULL AUTO_INCREMENT,
  `empid` int(11) NOT NULL,
  `contype` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sign_date` date NOT NULL,
  `rank` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `saltype` int(11) NOT NULL,
  `salary` double NOT NULL,
  PRIMARY KEY (`conid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `empid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` int(11) NOT NULL,
  `dob` date NOT NULL,
  `rh` int(11) NOT NULL,
  `escalafon` varchar(2) NOT NULL,
  `años_de_prep` int(11) NOT NULL,
  `nivel_ed_formal` int(11) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enrollment` (
  `eid` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) NOT NULL,
  `grade` int(11) DEFAULT NULL,
  `grupo` int(11) NOT NULL,
  `enr_date` date NOT NULL,
  `prev_result` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`eid`),
  KEY `id` (`id`),
  CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=855 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
INSERT INTO `enrollment` VALUES (500,100,1,1,'2016-02-01',1,1),(501,101,1,1,'2016-02-01',1,1),(502,102,1,1,'2016-02-01',1,1),(503,103,1,1,'2016-02-01',1,1),(504,104,1,1,'2016-02-01',1,1),(505,105,1,1,'2016-02-01',1,1),(506,106,1,1,'2016-02-01',1,1),(507,107,1,1,'2016-02-01',1,1),(508,108,1,1,'2016-02-01',1,1),(509,109,1,1,'2016-02-01',1,1),(510,110,1,1,'2016-02-01',1,1),(511,111,1,1,'2016-02-01',1,1),(512,112,1,1,'2016-02-01',1,3),(513,113,1,1,'2016-02-01',1,1),(514,114,2,0,'2016-02-01',1,1),(515,115,2,0,'2016-02-01',1,1),(516,116,2,0,'2016-02-01',1,1),(517,117,2,0,'2016-02-01',1,1),(518,118,2,0,'2016-02-01',1,1),(519,119,2,0,'2016-02-01',1,1),(520,120,2,0,'2016-02-01',1,1),(521,121,2,0,'2016-02-01',1,1),(522,122,2,0,'2016-02-01',1,1),(523,123,2,0,'2016-02-01',1,1),(524,124,2,0,'2016-02-01',1,1),(525,125,2,0,'2016-02-01',1,1),(526,126,2,0,'2016-02-01',1,1),(527,127,2,0,'2016-02-01',1,1),(528,128,2,0,'2016-02-01',1,1),(529,129,2,0,'2016-02-01',1,1),(530,130,2,0,'2016-02-01',1,1),(531,131,2,0,'2016-02-01',1,1),(532,132,2,0,'2016-02-01',1,1),(533,133,2,0,'2016-02-01',1,1),(534,134,2,0,'2016-02-01',3,1),(535,135,2,0,'2016-02-01',1,1),(536,136,3,0,'2016-02-01',1,1),(537,137,3,0,'2016-02-01',1,1),(538,138,3,0,'2016-02-01',1,1),(539,139,3,0,'2016-02-01',1,1),(540,140,3,0,'2016-02-01',1,1),(541,141,3,0,'2016-02-01',1,1),(542,142,3,0,'2016-02-01',1,1),(543,143,3,0,'2016-02-01',1,1),(544,144,3,0,'2016-02-01',1,1),(545,145,3,0,'2016-02-01',1,1),(546,146,3,0,'2016-02-01',1,1),(547,147,3,0,'2016-02-01',1,1),(548,148,3,0,'2016-02-01',1,1),(549,149,3,0,'2016-02-01',1,1),(550,150,3,0,'2016-02-01',1,1),(551,151,3,0,'2016-02-01',1,1),(552,152,3,0,'2016-02-01',1,1),(553,153,3,0,'2016-02-01',1,1),(554,154,3,0,'2016-02-01',1,1),(555,155,4,0,'2016-02-01',1,1),(556,156,4,0,'2016-02-01',1,1),(557,157,4,0,'2016-02-01',1,1),(558,158,4,0,'2016-02-01',1,1),(559,159,4,0,'2016-02-01',1,1),(560,160,4,0,'2016-02-01',1,1),(561,161,4,0,'2016-02-01',1,1),(562,162,4,0,'2016-02-01',1,1),(563,163,4,0,'2016-02-01',1,1),(564,164,4,0,'2016-02-01',1,1),(565,165,4,0,'2016-02-01',1,1),(566,166,4,0,'2016-02-01',1,1),(567,167,4,0,'2016-02-01',1,3),(568,168,4,0,'2016-02-01',1,1),(569,169,4,0,'2016-02-01',1,1),(570,170,4,0,'2016-02-01',1,1),(572,172,4,0,'2016-02-01',1,1),(573,173,4,0,'2016-02-01',1,1),(574,174,4,0,'2016-02-01',1,1),(575,175,4,0,'2016-02-01',1,1),(576,176,5,0,'2016-02-01',1,1),(577,177,5,0,'2016-02-01',1,1),(578,178,5,0,'2016-02-01',1,1),(579,179,5,0,'2016-02-01',1,1),(580,180,5,0,'2016-02-01',1,1),(581,181,5,0,'2016-02-01',1,1),(582,182,5,0,'2016-02-01',1,1),(583,183,5,0,'2016-02-01',1,1),(584,184,5,0,'2016-02-01',1,1),(585,185,5,0,'2016-02-01',1,1),(586,186,5,0,'2016-02-01',1,1),(587,187,5,0,'2016-02-01',1,1),(588,188,5,0,'2016-02-01',1,1),(589,189,5,0,'2016-02-01',1,1),(590,190,5,0,'2016-02-01',1,1),(591,191,5,0,'2016-02-01',1,1),(592,192,5,0,'2016-02-01',1,1),(593,193,5,0,'2016-02-01',1,1),(594,194,5,0,'2016-02-01',1,1),(595,195,5,0,'2016-02-01',1,1),(596,196,5,0,'2016-02-01',1,1),(597,197,5,0,'2016-02-01',1,1),(598,198,5,0,'2016-02-01',1,1),(599,199,5,0,'2016-02-01',1,1),(600,200,6,0,'2016-02-01',1,1),(601,201,6,0,'2016-02-01',1,1),(602,202,6,0,'2016-02-01',1,1),(603,203,6,0,'2016-02-01',1,1),(604,204,6,0,'2016-02-01',1,1),(605,205,6,0,'2016-02-01',1,1),(606,206,6,0,'2016-02-01',1,1),(607,207,6,0,'2016-02-01',1,1),(608,208,6,0,'2016-02-01',1,1),(609,209,6,0,'2016-02-01',1,1),(610,210,6,0,'2016-02-01',1,1),(611,211,6,0,'2016-02-01',1,1),(612,212,6,0,'2016-02-01',1,1),(613,213,6,0,'2016-02-01',1,1),(614,214,6,0,'2016-02-01',1,1),(615,215,6,0,'2016-02-01',1,1),(616,216,6,0,'2016-02-01',1,1),(617,217,6,0,'2016-02-01',1,1),(618,218,6,0,'2016-02-01',1,1),(619,219,6,0,'2016-02-01',1,1),(620,220,6,0,'2016-02-01',1,1),(621,221,6,0,'2016-02-01',1,1),(622,222,6,0,'2016-02-01',1,1),(623,223,6,0,'2016-02-01',1,1),(624,224,6,0,'2016-02-01',1,1),(625,225,6,0,'2016-02-01',1,1),(626,226,6,0,'2016-02-01',1,1),(627,227,6,0,'2016-02-01',1,1),(628,228,6,0,'2016-02-01',1,1),(629,229,6,0,'2016-02-01',1,1),(630,230,6,0,'2016-02-01',1,1),(631,231,6,0,'2016-02-01',1,1),(632,232,6,0,'2016-02-01',1,1),(633,233,6,0,'2016-02-01',1,1),(634,234,6,0,'2016-02-01',1,1),(635,235,6,0,'2016-02-01',1,1),(636,236,6,0,'2016-02-01',1,1),(637,237,6,0,'2016-02-01',1,1),(638,238,6,0,'2016-02-01',1,1),(639,239,6,0,'2016-02-01',1,1),(640,240,6,0,'2016-02-01',1,1),(641,241,6,0,'2016-02-01',1,1),(642,242,6,0,'2016-02-01',1,1),(643,243,6,0,'2016-02-01',1,1),(644,244,6,0,'2016-02-01',1,1),(645,245,6,0,'2016-02-01',1,1),(646,246,6,0,'2016-02-01',1,1),(647,247,7,0,'2016-02-01',1,1),(648,248,7,0,'2016-02-01',1,1),(649,249,7,0,'2016-02-01',1,1),(650,250,7,0,'2016-02-01',1,1),(651,251,7,0,'2016-02-01',1,1),(652,252,7,0,'2016-02-01',1,1),(653,253,7,0,'2016-02-01',1,1),(654,254,7,0,'2016-02-01',1,1),(655,255,7,0,'2016-02-01',1,1),(656,256,7,0,'2016-02-01',1,1),(657,257,7,0,'2016-02-01',1,1),(658,258,7,0,'2016-02-01',1,1),(659,259,7,0,'2016-02-01',1,1),(660,260,7,0,'2016-02-01',1,1),(661,261,7,0,'2016-02-01',1,1),(662,262,7,0,'2016-02-01',1,1),(663,263,7,0,'2016-02-01',1,1),(664,264,7,0,'2016-02-01',1,1),(665,265,7,0,'2016-02-01',1,1),(666,266,7,0,'2016-02-01',1,1),(667,267,7,0,'2016-02-01',1,1),(668,268,7,0,'2016-02-01',1,1),(669,269,7,0,'2016-02-01',1,1),(670,270,7,0,'2016-02-01',1,1),(671,271,7,0,'2016-02-01',1,1),(672,272,7,0,'2016-02-01',1,1),(673,273,7,0,'2016-02-01',1,1),(674,274,7,0,'2016-02-01',1,1),(675,275,7,0,'2016-02-01',1,1),(676,276,7,0,'2016-02-01',1,1),(677,277,7,0,'2016-02-01',1,1),(678,278,7,0,'2016-02-01',1,1),(679,279,7,0,'2016-02-01',1,1),(680,280,7,0,'2016-02-01',1,1),(681,281,7,0,'2016-02-01',1,1),(682,282,7,0,'2016-02-01',1,1),(683,283,7,0,'2016-02-01',1,1),(684,284,7,0,'2016-02-01',1,1),(685,285,7,0,'2016-02-01',1,1),(686,286,7,0,'2016-02-01',1,1),(687,287,7,0,'2016-02-01',1,1),(688,288,7,0,'2016-02-01',1,1),(689,289,7,0,'2016-02-01',1,1),(690,290,7,0,'2016-02-01',1,1),(691,291,7,0,'2016-02-01',1,1),(692,292,7,0,'2016-02-01',1,1),(693,293,7,0,'2016-02-01',1,1),(694,294,7,0,'2016-02-01',1,1),(695,295,7,0,'2016-02-01',1,1),(696,296,7,0,'2016-02-01',1,1),(697,297,7,0,'2016-02-01',1,1),(698,298,7,0,'2016-02-01',1,1),(699,299,7,0,'2016-02-01',1,1),(700,300,8,0,'2016-02-01',1,1),(701,301,8,0,'2016-02-01',1,1),(702,302,8,0,'2016-02-01',1,1),(703,303,8,0,'2016-02-01',1,1),(704,304,8,0,'2016-02-01',1,1),(705,305,8,0,'2016-02-01',1,1),(706,306,8,0,'2016-02-01',1,1),(707,307,8,0,'2016-02-01',1,1),(708,308,8,0,'2016-02-01',1,1),(709,309,8,0,'2016-02-01',1,1),(710,310,8,0,'2016-02-01',1,1),(711,311,8,0,'2016-02-01',1,1),(712,312,8,0,'2016-02-01',1,1),(713,313,8,0,'2016-02-01',1,1),(714,314,8,0,'2016-02-01',1,1),(715,315,8,0,'2016-02-01',1,1),(716,316,8,0,'2016-02-01',1,1),(717,317,8,0,'2016-02-01',1,1),(718,318,8,0,'2016-02-01',1,1),(719,319,8,0,'2016-02-01',1,1),(720,320,8,0,'2016-02-01',1,1),(721,321,8,0,'2016-02-01',1,1),(722,322,8,0,'2016-02-01',1,1),(723,323,8,0,'2016-02-01',1,1),(724,324,8,0,'2016-02-01',1,1),(725,325,8,0,'2016-02-01',1,1),(726,326,8,0,'2016-02-01',1,1),(727,327,8,0,'2016-02-01',1,1),(728,328,8,0,'2016-02-01',1,1),(729,329,8,0,'2016-02-01',1,1),(730,330,8,0,'2016-02-01',1,1),(731,331,8,0,'2016-02-01',1,1),(732,332,8,0,'2016-02-01',1,1),(733,333,8,0,'2016-02-01',1,1),(734,334,8,0,'2016-02-01',1,1),(735,335,8,0,'2016-02-01',1,1),(736,336,8,0,'2016-02-01',1,1),(737,337,8,0,'2016-02-01',1,1),(738,338,8,0,'2016-02-01',1,1),(739,339,8,0,'2016-02-01',1,1),(740,340,8,0,'2016-02-01',1,1),(741,341,8,0,'2016-02-01',1,1),(742,342,8,0,'2016-02-01',1,1),(743,343,8,0,'2016-02-01',1,1),(744,344,8,0,'2016-02-01',1,1),(745,345,9,0,'2016-02-01',1,1),(746,346,9,0,'2016-02-01',1,1),(747,347,9,0,'2016-02-01',1,1),(748,348,9,0,'2016-02-01',1,1),(749,349,9,0,'2016-02-01',1,1),(750,350,9,0,'2016-02-01',1,1),(751,351,9,0,'2016-02-01',1,1),(752,352,9,0,'2016-02-01',1,1),(753,353,9,0,'2016-02-01',1,1),(754,354,9,0,'2016-02-01',1,1),(755,355,9,0,'2016-02-01',1,1),(756,356,9,0,'2016-02-01',1,1),(757,357,9,0,'2016-02-01',1,1),(758,358,9,0,'2016-02-01',1,1),(759,359,9,0,'2016-02-01',1,1),(760,360,9,0,'2016-02-01',1,1),(761,361,9,0,'2016-02-01',1,1),(762,362,9,0,'2016-02-01',1,1),(763,363,9,0,'2016-02-01',1,1),(764,364,9,0,'2016-02-01',1,1),(765,365,9,0,'2016-02-01',1,1),(766,366,9,0,'2016-02-01',1,1),(767,367,9,0,'2016-02-01',1,1),(768,368,9,0,'2016-02-01',1,1),(769,369,9,0,'2016-02-01',1,1),(770,370,9,0,'2016-02-01',1,1),(771,371,9,0,'2016-02-01',1,1),(772,372,9,0,'2016-02-01',1,1),(773,373,9,0,'2016-02-01',1,1),(774,374,9,0,'2016-02-01',1,1),(775,375,9,0,'2016-02-01',1,1),(776,376,9,0,'2016-02-01',1,1),(777,377,9,0,'2016-02-01',1,1),(778,378,9,0,'2016-02-01',1,1),(779,379,9,0,'2016-02-01',1,1),(780,380,9,0,'2016-02-01',1,1),(781,381,9,0,'2016-02-01',1,1),(782,382,9,0,'2016-02-01',1,1),(783,383,10,0,'2016-02-01',1,1),(784,384,10,0,'2016-02-01',1,1),(785,385,10,0,'2016-02-01',1,1),(786,386,10,0,'2016-02-01',1,1),(787,387,10,0,'2016-02-01',1,1),(788,388,10,0,'2016-02-01',1,1),(789,389,10,0,'2016-02-01',1,1),(790,390,10,0,'2016-02-01',1,1),(791,391,10,0,'2016-02-01',1,1),(792,392,10,0,'2016-02-01',1,1),(793,393,10,0,'2016-02-01',1,1),(794,394,10,0,'2016-02-01',1,1),(795,395,10,0,'2016-02-01',1,1),(796,396,10,0,'2016-02-01',1,1),(797,397,10,0,'2016-02-01',1,1),(798,398,10,0,'2016-02-01',1,1),(799,399,10,0,'2016-02-01',1,1),(800,400,10,0,'2016-02-01',1,1),(801,401,10,0,'2016-02-01',1,1),(802,402,10,0,'2016-02-01',1,1),(803,403,10,0,'2016-02-01',1,1),(804,404,10,0,'2016-02-01',1,1),(805,405,10,0,'2016-02-01',1,1),(806,406,10,0,'2016-02-01',1,1),(807,407,10,0,'2016-02-01',1,1),(808,408,10,0,'2016-02-01',1,1),(809,409,10,0,'2016-02-01',1,1),(810,410,10,0,'2016-02-01',1,1),(811,411,10,0,'2016-02-01',1,1),(812,412,10,0,'2016-02-01',1,1),(813,413,10,0,'2016-02-01',1,1),(814,414,10,0,'2016-02-01',1,1),(815,415,10,0,'2016-02-01',1,1),(816,416,10,0,'2016-02-01',1,1),(817,417,11,0,'2016-02-01',1,1),(818,418,11,0,'2016-02-01',1,1),(819,419,11,0,'2016-02-01',1,1),(820,420,11,0,'2016-02-01',1,1),(821,421,11,0,'2016-02-01',1,1),(822,422,11,0,'2016-02-01',1,1),(823,423,11,0,'2016-02-01',1,1),(824,424,11,0,'2016-02-01',1,1),(825,425,11,0,'2016-02-01',1,1),(826,426,11,0,'2016-02-01',1,1),(827,427,11,0,'2016-02-01',1,1),(828,428,11,0,'2016-02-01',1,1),(829,429,11,0,'2016-02-01',1,1),(830,430,11,0,'2016-02-01',1,1),(831,431,11,0,'2016-02-01',1,1),(832,432,11,0,'2016-02-01',1,1),(833,433,11,0,'2016-02-01',1,1),(834,434,11,0,'2016-02-01',1,1),(835,435,11,0,'2016-02-01',1,1),(836,436,11,0,'2016-02-01',1,1),(837,437,11,0,'2016-02-01',1,1),(838,438,11,0,'2016-02-01',1,1),(839,439,11,0,'2016-02-01',1,1),(840,440,11,0,'2016-02-01',1,1),(841,441,11,0,'2016-02-01',1,1),(842,442,11,0,'2016-02-01',1,1),(843,443,11,0,'2016-02-01',1,1),(844,444,11,0,'2016-02-01',1,1),(845,445,11,0,'2016-02-01',1,1),(846,446,11,0,'2016-02-01',1,1),(847,447,11,0,'2016-02-01',1,1),(848,448,11,0,'2016-02-01',1,1),(849,449,11,0,'2016-02-01',1,1),(850,450,11,0,'2016-02-01',1,1),(851,451,11,0,'2016-02-01',1,1),(852,452,11,0,'2016-02-01',1,1),(853,453,11,0,'2016-02-01',1,1),(854,454,4,0,'2016-02-01',1,1);
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eps`
--

DROP TABLE IF EXISTS `eps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eps` (
  `eps_code` int(11) NOT NULL AUTO_INCREMENT,
  `eps` varchar(40) NOT NULL,
  PRIMARY KEY (`eps_code`),
  UNIQUE KEY `eps` (`eps`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eps`
--

LOCK TABLES `eps` WRITE;
/*!40000 ALTER TABLE `eps` DISABLE KEYS */;
INSERT INTO `eps` VALUES (21,'Asmet Salud'),(8,'Avanzar Medico'),(18,'Cafesalud'),(16,'Colsanita'),(15,'Compensar'),(2,'Coomeva'),(11,'Ecopetrol Policlinica'),(9,'Emdisalud'),(10,'Famisanar'),(7,'Fuerzas Militares Armada'),(17,'Humanavivir'),(4,'Nueva EPS'),(5,'Policia Nacional'),(12,'Regional de Salud del Magdalena Medio'),(3,'Saludcoop'),(20,'Saludtotal'),(19,'Saludvida'),(6,'Sanidad Militar'),(1,'Sanitas'),(13,'Seguro Social'),(14,'Sisben');
/*!40000 ALTER TABLE `eps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender` (
  `gen_code` int(11) NOT NULL AUTO_INCREMENT,
  `Gender` varchar(10) NOT NULL,
  PRIMARY KEY (`gen_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'M'),(2,'F');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_type`
--

DROP TABLE IF EXISTS `id_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `id_type` (
  `id_type_code` int(11) NOT NULL AUTO_INCREMENT,
  `id_type` varchar(10) NOT NULL,
  PRIMARY KEY (`id_type_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_type`
--

LOCK TABLES `id_type` WRITE;
/*!40000 ALTER TABLE `id_type` DISABLE KEYS */;
INSERT INTO `id_type` VALUES (1,'C.C.'),(2,'T.I.'),(3,'R.C.');
/*!40000 ALTER TABLE `id_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intensidad-horaria`
--

DROP TABLE IF EXISTS `intensidad-horaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intensidad-horaria` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL DEFAULT '2016',
  `subject` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL DEFAULT 'General',
  `area` varchar(50) NOT NULL DEFAULT 'Comercio',
  `grade` int(11) NOT NULL,
  `weekly-hours` int(11) NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intensidad-horaria`
--

LOCK TABLES `intensidad-horaria` WRITE;
/*!40000 ALTER TABLE `intensidad-horaria` DISABLE KEYS */;
INSERT INTO `intensidad-horaria` VALUES (1,2016,'Matematicas','General','Matematicas',1,3),(2,2016,'Matematicas','General','Matematicas',2,3),(3,2016,'Matematicas','General','Matematicas',3,3),(4,2016,'Matematicas','General','Matematicas',4,3),(5,2016,'Matematicas','General','Matematicas',5,3),(6,2016,'Geometria','General','Matematicas',1,1),(7,2016,'Geometria','General','Matematicas',2,1),(8,2016,'Geometria','General','Matematicas',3,1),(9,2016,'Geometria','General','Matematicas',4,1),(10,2016,'Geometria','General','Matematicas',5,1),(11,2016,'Estadistica','General','Matematicas',1,1),(12,2016,'Estadistica','General','Matematicas',2,1),(13,2016,'Estadistica','General','Matematicas',3,1),(14,2016,'Estadistica','General','Matematicas',4,1),(15,2016,'Matematicas','General','Matematicas',6,3),(16,2016,'Matematicas','General','Matematicas',7,4),(17,2016,'Geometria','General','Matematicas',6,1),(18,2016,'Algebra','General','Matematicas',8,4),(19,2016,'Algebra','General','Matematicas',9,3),(20,2016,'Trigonometria','General','Matematicas',10,3),(21,2016,'Calculo','General','Matematicas',11,3),(22,2016,'Lengua Castellana','General','Humanidades',1,5),(23,2016,'Lengua Castellana','General','Humanidades',2,5),(24,2016,'Lengua Castellana','General','Humanidades',3,4),(25,2016,'Lengua Castellana','General','Humanidades',4,4),(26,2016,'Lengua Castellana','General','Humanidades',5,4),(27,2016,'Lengua Castellana','General','Humanidades',6,5),(28,2016,'Lengua Castellana','General','Humanidades',7,5),(29,2016,'Lengua Castellana','General','Humanidades',8,5),(30,2016,'Lengua Castellana','General','Humanidades',9,4),(31,2016,'Lengua Castellana','General','Humanidades',10,3),(32,2016,'Lengua Castellana','General','Humanidades',11,3),(33,2016,'Ingles','Idioma Extranjera','Humanidades',1,2),(34,2016,'Ingles','Idioma Extranjera','Humanidades',2,2),(35,2016,'Ingles','Idioma Extranjera','Humanidades',3,2),(36,2016,'Ingles','Idioma Extranjera','Humanidades',4,2),(37,2016,'Ingles','Idioma Extranjera','Humanidades',5,2),(38,2016,'Ingles','Idioma Extranjera','Humanidades',6,3),(39,2016,'Ingles','Idioma Extranjera','Humanidades',7,3),(40,2016,'Ingles','Idioma Extranjera','Humanidades',8,3),(41,2016,'Ingles','Idioma Extranjera','Humanidades',9,3),(42,2016,'Ingles','Idioma Extranjera','Humanidades',10,3),(43,2016,'Ingles','Idioma Extranjera','Humanidades',11,3),(44,2016,'Ciencias Naturales','General','Ciencias Naturales',1,3),(45,2016,'Ciencias Naturales','General','Ciencias Naturales',2,3),(46,2016,'Ciencias Naturales','General','Ciencias Naturales',3,4),(47,2016,'Ciencias Naturales','General','Ciencias Naturales',4,4),(48,2016,'Ciencias Naturales','General','Ciencias Naturales',5,3),(49,2016,'Biologia','General','Ciencias Naturales',6,3),(50,2016,'Biologia','General','Ciencias Naturales',7,3),(51,2016,'Biologia','General','Ciencias Naturales',8,3),(52,2016,'Biologia','General','Ciencias Naturales',9,3),(53,2016,'Biologia','General','Ciencias Naturales',10,1),(54,2016,'Biologia','General','Ciencias Naturales',11,1),(55,2016,'Quimica','General','Ciencias Naturales',6,1),(56,2016,'Quimica','General','Ciencias Naturales',7,1),(57,2016,'Quimica','General','Ciencias Naturales',8,1),(58,2016,'Quimica','General','Ciencias Naturales',9,2),(59,2016,'Quimica','General','Ciencias Naturales',10,3),(60,2016,'Quimica','General','Ciencias Naturales',11,3),(61,2016,'Fisica','General','Ciencias Naturales',9,1),(62,2016,'Fisica','General','Ciencias Naturales',10,2),(63,2016,'Fisica','General','Ciencias Naturales',11,2),(64,2016,'Educacion Fisica','General','Educacion Fisica',1,2),(65,2016,'Educacion Fisica','General','Educacion Fisica',2,2),(66,2016,'Educacion Fisica','General','Educacion Fisica',3,2),(67,2016,'Educacion Fisica','General','Educacion Fisica',4,2),(68,2016,'Educacion Fisica','General','Educacion Fisica',5,2),(69,2016,'Educacion Fisica','General','Educacion Fisica',6,2),(70,2016,'Educacion Fisica','General','Educacion Fisica',7,2),(71,2016,'Educacion Fisica','General','Educacion Fisica',8,2),(72,2016,'Educacion Fisica','General','Educacion Fisica',9,2),(73,2016,'Educacion Fisica','General','Educacion Fisica',10,2),(74,2016,'Educacion Fisica','General','Educacion Fisica',11,2),(75,2016,'Artistica','General','Educacion Artistica',1,1),(76,2016,'Artistica','General','Educacion Artistica',2,1),(77,2016,'Artistica','General','Educacion Artistica',3,1),(78,2016,'Artistica','General','Educacion Artistica',4,1),(79,2016,'Artistica','General','Educacion Artistica',5,1),(80,2016,'Artistica','General','Educacion Artistica',6,2),(81,2016,'Artistica','General','Educacion Artistica',7,2),(82,2016,'Artistica','General','Educacion Artistica',8,2),(83,2016,'Artistica','General','Educacion Artistica',9,1),(84,2016,'Tecnologia e Informatica','General','Tecnologia e Informatica',1,2),(85,2016,'Tecnologia e Informatica','General','Tecnologia e Informatica',2,2),(86,2016,'Tecnologia e Informatica','General','Tecnologia e Informatica',3,2),(87,2016,'Tecnologia e Informatica','General','Tecnologia e Informatica',4,2),(88,2016,'Tecnologia e Informatica','General','Tecnologia e Informatica',5,2),(89,2016,'Tecnologia e Informatica','General','Tecnologia e Informatica',6,2),(90,2016,'Tecnologia e Informatica','General','Tecnologia e Informatica',7,2),(91,2016,'Tecnologia e Informatica','General','Tecnologia e Informatica',8,2),(92,2016,'Tecnologia e Informatica','General','Tecnologia e Informatica',9,2),(93,2016,'Ciencias Sociales','General','Ciencias Sociales',1,3),(94,2016,'Ciencias Sociales','General','Ciencias Sociales',2,3),(95,2016,'Ciencias Sociales','General','Ciencias Sociales',3,3),(96,2016,'Ciencias Sociales','General','Ciencias Sociales',4,3),(97,2016,'Ciencias Sociales','General','Ciencias Sociales',5,4),(98,2016,'Ciencias Sociales','General','Ciencias Sociales',6,4),(99,2016,'Ciencias Sociales','General','Ciencias Sociales',7,4),(100,2016,'Ciencias Sociales','General','Ciencias Sociales',8,4),(101,2016,'Ciencias Sociales','General','Ciencias Sociales',9,4),(102,2016,'Ciencias Sociales','General','Ciencias Sociales',10,1),(103,2016,'Ciencias Sociales','General','Ciencias Sociales',11,1),(104,2016,'Ciencias Economicas y Politicas','General','Ciencias Economicas y Politicas',10,2),(105,2016,'Ciencias Economicas y Politicas','General','Ciencias Economicas y Politicas',11,2),(106,2016,'Educacion Religiosa','General','Educacion Religiosa',1,1),(107,2016,'Educacion Religiosa','General','Educacion Religiosa',2,1),(108,2016,'Educacion Religiosa','General','Educacion Religiosa',3,1),(109,2016,'Educacion Religiosa','General','Educacion Religiosa',4,1),(110,2016,'Educacion Religiosa','General','Educacion Religiosa',5,1),(111,2016,'Educacion Religiosa','General','Educacion Religiosa',6,1),(112,2016,'Educacion Religiosa','General','Educacion Religiosa',7,1),(113,2016,'Educacion Religiosa','General','Educacion Religiosa',8,1),(114,2016,'Educacion Religiosa','General','Educacion Religiosa',9,1),(115,2016,'Educacion Religiosa','General','Educacion Religiosa',10,1),(116,2016,'Educacion Religiosa','General','Educacion Religiosa',11,1),(117,2016,'Educacion Etica y Valores','General','Educacion Etica y Valores',1,1),(118,2016,'Educacion Etica y Valores','General','Educacion Etica y Valores',2,1),(119,2016,'Educacion Etica y Valores','General','Educacion Etica y Valores',3,1),(120,2016,'Educacion Etica y Valores','General','Educacion Etica y Valores',4,1),(121,2016,'Educacion Etica y Valores','General','Educacion Etica y Valores',5,1),(122,2016,'Educacion Etica y Valores','General','Educacion Etica y Valores',6,1),(123,2016,'Educacion Etica y Valores','General','Educacion Etica y Valores',7,1),(124,2016,'Educacion Etica y Valores','General','Educacion Etica y Valores',8,1),(125,2016,'Educacion Etica y Valores','General','Educacion Etica y Valores',9,1),(126,2016,'Educacion Etica y Valores','General','Educacion Etica y Valores',10,1),(127,2016,'Educacion Etica y Valores','General','Educacion Etica y Valores',11,1),(128,2016,'Filosofia','General','Filosofia',10,2),(129,2016,'Filosofia','General','Filosofia',11,2),(130,2016,'Tecnicas y Gestion','General','Comercio',6,1),(131,2016,'Tecnicas y Gestion','General','Comercio',7,1),(132,2016,'Tecnicas y Gestion','General','Comercio',8,1),(133,2016,'Tecnicas y Gestion','General','Comercio',9,1),(134,2016,'Contabilidad','General','Comercio',6,1),(135,2016,'Contabilidad','General','Comercio',7,1),(136,2016,'Contabilidad','General','Comercio',8,1),(137,2016,'Contabilidad','General','Comercio',9,2),(138,2016,'Contabilidad','General','Comercio',10,2),(139,2016,'Contabilidad','General','Comercio',11,2),(140,2016,'Laboratorio Contable','General','Comercio',10,2),(141,2016,'Laboratorio Contable','General','Comercio',11,2),(142,2016,'Administracion','General','Comercio',10,1),(143,2016,'Administracion','General','Comercio',11,1),(144,2016,'Mercadeo','General','Comercio',10,1),(145,2016,'Mercadeo','General','Comercio',11,1);
/*!40000 ALTER TABLE `intensidad-horaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias` (
  `codmat` int(11) NOT NULL AUTO_INCREMENT,
  `materia` varchar(50) NOT NULL,
  `hor_sem` int(11) NOT NULL,
  `grado` int(11) NOT NULL,
  `profesor-name` varchar(50) NOT NULL,
  `profesor-lname` varchar(50) NOT NULL,
  PRIMARY KEY (`codmat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias-listado`
--

DROP TABLE IF EXISTS `materias-listado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materias-listado` (
  `codmat` int(11) NOT NULL AUTO_INCREMENT,
  `mat` varchar(50) NOT NULL,
  PRIMARY KEY (`codmat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias-listado`
--

LOCK TABLES `materias-listado` WRITE;
/*!40000 ALTER TABLE `materias-listado` DISABLE KEYS */;
/*!40000 ALTER TABLE `materias-listado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula-cost`
--

DROP TABLE IF EXISTS `matricula-cost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matricula-cost` (
  `matid` int(11) NOT NULL AUTO_INCREMENT,
  `year` int(11) NOT NULL,
  `proc-informes-academicos` decimal(10,2) NOT NULL,
  `trabajo-pedagogico` decimal(10,2) NOT NULL,
  `aulas-especializadas` decimal(10,2) NOT NULL,
  `proyecto-escuelas-culturales-y-deportivas` decimal(10,2) NOT NULL,
  `carnet-estudiantil-talonario-pupitre-y-manual-de-convivencia` decimal(10,2) NOT NULL,
  `bienestar-estudiantil` decimal(10,2) NOT NULL,
  `mantenimiento-de-equipos` decimal(10,2) NOT NULL,
  `accion-social` decimal(10,2) NOT NULL,
  `bibliobanco` decimal(10,2) NOT NULL,
  `asociacion-padres` decimal(10,2) NOT NULL,
  `inscripcion-pruebas-estado` decimal(10,2) NOT NULL,
  `seguro-estudiantil` decimal(10,2) NOT NULL,
  PRIMARY KEY (`matid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula-cost`
--

LOCK TABLES `matricula-cost` WRITE;
/*!40000 ALTER TABLE `matricula-cost` DISABLE KEYS */;
INSERT INTO `matricula-cost` VALUES (2,2016,29988.00,37906.00,29988.00,25261.00,27179.00,50806.00,15750.00,10500.00,10500.00,70000.00,25000.00,20000.00);
/*!40000 ALTER TABLE `matricula-cost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `niveles_educativos`
--

DROP TABLE IF EXISTS `niveles_educativos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `niveles_educativos` (
  `codniv` int(11) NOT NULL AUTO_INCREMENT,
  `nivel` varchar(50) NOT NULL,
  PRIMARY KEY (`codniv`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `niveles_educativos`
--

LOCK TABLES `niveles_educativos` WRITE;
/*!40000 ALTER TABLE `niveles_educativos` DISABLE KEYS */;
INSERT INTO `niveles_educativos` VALUES (1,'Bachillerato Pedagogico'),(2,'Normalista Superior'),(3,'Tecnico'),(4,'Tecnologo'),(5,'Profesional'),(6,'Posgrado'),(7,'Otro');
/*!40000 ALTER TABLE `niveles_educativos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `cod_pais` int(11) NOT NULL AUTO_INCREMENT,
  `pais` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_pais`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Colombia'),(2,'Venezuela'),(3,'España');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `p_code` int(11) NOT NULL AUTO_INCREMENT,
  `cc` int(11) NOT NULL,
  `id_type` int(11) NOT NULL,
  PRIMARY KEY (`p_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (10000,1097192394,3),(10001,1097192503,3);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prev_year_result`
--

DROP TABLE IF EXISTS `prev_year_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prev_year_result` (
  `res_code` int(11) NOT NULL AUTO_INCREMENT,
  `result` varchar(20) NOT NULL,
  PRIMARY KEY (`res_code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prev_year_result`
--

LOCK TABLES `prev_year_result` WRITE;
/*!40000 ALTER TABLE `prev_year_result` DISABLE KEYS */;
INSERT INTO `prev_year_result` VALUES (1,'APROBADO'),(2,'REPROBADO'),(3,'RETIRADO'),(4,'OTRO'),(5,'PROMOVIDO ANTES DE');
/*!40000 ALTER TABLE `prev_year_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesores-listado`
--

DROP TABLE IF EXISTS `profesores-listado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesores-listado` (
  `codpro` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) DEFAULT NULL,
  `nom` varchar(50) NOT NULL,
  `ap` varchar(50) NOT NULL,
  `escalafon` varchar(2) NOT NULL,
  `grupo` varchar(3) DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `incluir` varchar(2) NOT NULL DEFAULT 'SI',
  `anos-de-formacion` int(11) DEFAULT NULL,
  `ultimo-nivel-educativo` int(11) DEFAULT NULL,
  `tipo-nivel-educativo` int(11) DEFAULT NULL,
  `tipo-contrato` varchar(50) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `cel` varchar(60) DEFAULT NULL,
  `horas-atencion-a-padres` int(11) DEFAULT '1',
  PRIMARY KEY (`codpro`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesores-listado`
--

LOCK TABLES `profesores-listado` WRITE;
/*!40000 ALTER TABLE `profesores-listado` DISABLE KEYS */;
INSERT INTO `profesores-listado` VALUES (1,'Licenciado','Habib Alfonso','Jalk Hincapie','7',NULL,1,'SI',0,0,0,'Tiempo Completo','habib-19872011@hotmail.com','','3016437257',1),(2,'Normalista Superior','Nury','Barragan Gomez','0','1A',2,'SI',0,0,0,'Tiempo Completo',NULL,NULL,NULL,1),(3,'Licenciada','Olga','Avendaño','7','2A',2,'SI',0,0,0,'Tiempo Completo',NULL,NULL,NULL,1),(4,'Licenciada','Sandra Rocio','Pareja Cortina','7','3A',2,'SI',0,0,0,'Tiempo Completo',NULL,NULL,NULL,1),(5,'Licenciada','Sixta Isabel','Moreno Roa','8','4A',2,'SI',0,0,0,'Tiempo Completo',NULL,NULL,NULL,1),(6,'Ingeniera de Sistemas','Ana Lyda','Lopez Pinzon','6','5A',2,'SI',0,0,0,'Tiempo Completo',NULL,NULL,NULL,1),(7,'Licenciada','Maria Del Carmen','Jimenez de Gutierrez','9','6A',2,'SI',0,0,0,'Tiempo Completo',NULL,NULL,NULL,1),(8,'Bachiller Pedagógico','Leddy Yasmin','Gomez Martinez','0','6B',2,'SI',0,0,0,'Tiempo Completo','leanjor27@hotmail.com',NULL,'3213497276',1),(9,'Normalista','Keyla Karina','Zapata Suarez','0','7A',2,'SI',0,0,0,'Tiempo Completo',NULL,NULL,NULL,1),(10,'Tecnico Laboral','Efrain','Melgarejo Molina','0','7B',1,'SI',0,0,0,'Tiempo Completo',NULL,NULL,NULL,1),(11,'Licenciada','Isabel Cristina','Martinez Villalba','8','8A',2,'SI',0,0,0,'Tiempo Completo',NULL,NULL,NULL,1),(12,'Especialista','Emilda','Muñoz Barrios','14','8B',2,'SI',0,0,0,'Por Horas',NULL,NULL,NULL,1),(13,'Licenciado','Raomit','Robles Robles','14','9A',1,'SI',0,0,0,'Por Horas',NULL,NULL,NULL,1),(14,'Licenciado','Cesar Alirio','Rey Rangel','2A','10A',1,'SI',0,0,0,'Por Horas','reymipez@hotmail.com',NULL,'3176905055, 3157045933',1),(15,'Licenciada','Audry','Rodriguez Calderon','7','11A',2,'SI',0,0,0,'Por Horas',NULL,NULL,NULL,1),(16,'Ingeniero ambiental','Oscar Mauricio','Osorio Serrano','0',NULL,1,'SI',0,0,0,'Por Horas',NULL,NULL,NULL,1),(17,'Técnologo Deportivo','Raul','Roa Campo','0',NULL,1,'SI',0,0,0,'Por Horas','raulypatico@outlook.com',NULL,'3166066945',1),(18,'Contador Público','Edy Andrea','Rojas Arango','0',NULL,2,'NO',0,0,0,'Tiempo Completo',NULL,NULL,NULL,1),(19,'Tecnologa en Teología','Maria Concepcion','Becerra Meza','0',NULL,2,'NO',0,0,0,'Por Horas','mabeme24@hotmail.com',NULL,'3134628367',1),(20,'Técnico en auxiliar de enfermería','Tatiana','Ballestas Zappa','0',NULL,2,'SI',0,0,0,'Por Horas',NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `profesores-listado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rate`
--

DROP TABLE IF EXISTS `rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rate` (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` int(11) NOT NULL,
  `groups` int(11) NOT NULL DEFAULT '1',
  `enrollment_year` decimal(10,0) DEFAULT NULL,
  `rate` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`grade_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rate`
--

LOCK TABLES `rate` WRITE;
/*!40000 ALTER TABLE `rate` DISABLE KEYS */;
INSERT INTO `rate` VALUES (1,1,1,2016,176025.00),(2,2,1,2016,169437.00),(3,3,1,2016,166260.00),(4,4,1,2016,166260.00),(5,5,1,2016,200638.00),(6,6,2,2016,200638.00),(7,7,2,2016,200638.00),(8,8,2,2016,200638.00),(9,9,1,2016,200638.00),(10,10,1,2016,211499.00),(11,11,1,2016,211499.00);
/*!40000 ALTER TABLE `rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationships` (
  `relid` int(11) NOT NULL AUTO_INCREMENT,
  `student1` int(11) NOT NULL,
  `student2` int(11) NOT NULL,
  `relationship` int(11) NOT NULL,
  PRIMARY KEY (`relid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
INSERT INTO `relationships` VALUES (1,383,247,1),(2,155,301,1),(3,274,417,1),(4,138,276,1),(5,139,156,1),(6,200,325,1),(7,180,349,1),(8,326,420,1),(9,280,388,1),(10,354,390,1),(11,102,393,1),(12,103,362,1),(13,283,396,1),(14,328,365,1),(15,284,366,1),(16,233,367,1),(17,145,286,1),(18,105,254,1),(19,106,256,1),(20,238,287,1),(21,185,186,1),(22,125,334,1),(23,311,434,1),(24,189,405,1),(25,126,240,1),(26,110,127,1),(27,110,163,1),(28,127,163,1),(29,192,213,1),(30,194,261,1),(31,312,374,1),(32,195,196,1),(33,376,439,1),(34,111,216,1),(35,445,446,1),(36,129,150,1),(37,243,410,1),(38,173,298,1),(39,199,223,1);
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reltype`
--

DROP TABLE IF EXISTS `reltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reltype` (
  `code` int(11) NOT NULL AUTO_INCREMENT,
  `relationship` varchar(20) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reltype`
--

LOCK TABLES `reltype` WRITE;
/*!40000 ALTER TABLE `reltype` DISABLE KEYS */;
INSERT INTO `reltype` VALUES (1,'sibling');
/*!40000 ALTER TABLE `reltype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh`
--

DROP TABLE IF EXISTS `rh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rh` (
  `rh_code` int(11) NOT NULL AUTO_INCREMENT,
  `rh` varchar(3) NOT NULL,
  PRIMARY KEY (`rh_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rh`
--

LOCK TABLES `rh` WRITE;
/*!40000 ALTER TABLE `rh` DISABLE KEYS */;
INSERT INTO `rh` VALUES (1,'A+'),(2,'A-'),(3,'B+'),(4,'B-'),(5,'AB+'),(6,'AB-'),(7,'O+'),(8,'O-');
/*!40000 ALTER TABLE `rh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sisben`
--

DROP TABLE IF EXISTS `sisben`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sisben` (
  `cod_sis` int(11) NOT NULL AUTO_INCREMENT,
  `sisben` varchar(50) NOT NULL,
  PRIMARY KEY (`cod_sis`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sisben`
--

LOCK TABLES `sisben` WRITE;
/*!40000 ALTER TABLE `sisben` DISABLE KEYS */;
INSERT INTO `sisben` VALUES (1,'NO APLICA'),(2,'ARS'),(3,'Si (averiguar cual)');
/*!40000 ALTER TABLE `sisben` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staccount`
--

DROP TABLE IF EXISTS `staccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staccount` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `num_talonario` int(11) DEFAULT NULL,
  `eid` int(11) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `eid` (`eid`),
  CONSTRAINT `staccount_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `enrollment` (`eid`)
) ENGINE=InnoDB AUTO_INCREMENT=1355 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staccount`
--

LOCK TABLES `staccount` WRITE;
/*!40000 ALTER TABLE `staccount` DISABLE KEYS */;
INSERT INTO `staccount` VALUES (1000,1299,500,1232150.00),(1001,1057,501,1232175.00),(1002,45,502,1232175.00),(1003,3070,503,1232175.00),(1004,NULL,504,1760250.00),(1005,NULL,505,1760250.00),(1006,859,506,1408200.00),(1007,3037,507,1232175.00),(1008,2817,508,1232175.00),(1009,3081,509,1232175.00),(1010,NULL,510,1760250.00),(1011,1,511,1232175.00),(1012,166,512,0.00),(1013,199,513,1232175.00),(1014,2311,514,847185.00),(1015,2465,515,1186059.00),(1016,2641,516,1355496.00),(1017,1310,517,1186059.00),(1018,210,518,1186059.00),(1019,1387,519,1186059.00),(1020,2157,520,1186059.00),(1021,NULL,521,1694370.00),(1022,1288,522,1355496.00),(1023,1277,523,1190059.00),(1024,1596,524,1186059.00),(1025,NULL,525,1694370.00),(1026,2014,526,1186059.00),(1027,NULL,527,1694370.00),(1028,140,528,1186059.00),(1029,529,529,1186059.00),(1030,1618,530,1186059.00),(1031,NULL,531,1694370.00),(1032,NULL,532,1694370.00),(1033,1629,533,1355496.00),(1034,1266,534,1186059.00),(1035,1530,535,1186059.00),(1036,138,536,1163820.00),(1037,137,537,1163820.00),(1038,1233,538,1163820.00),(1039,2421,539,1163820.00),(1040,1805,540,1163820.00),(1041,265,541,1163820.00),(1042,2597,542,1163820.00),(1043,1409,543,1330080.00),(1044,2716,544,332600.00),(1045,3114,545,1163820.00),(1046,1398,546,1163820.00),(1047,1332,547,1163820.00),(1048,141,548,1163820.00),(1049,2586,549,1330080.00),(1050,540,550,1163820.00),(1051,1321,551,1163820.00),(1052,1343,552,1163820.00),(1053,3169,553,1163820.00),(1054,136,554,1163820.00),(1055,1134,555,1163820.00),(1056,2399,556,1163820.00),(1057,1354,557,0.00),(1058,3279,558,1163820.00),(1059,485,559,1163820.00),(1060,NULL,560,1662600.00),(1061,1838,561,1163820.00),(1062,1376,562,997560.00),(1063,NULL,563,1662600.00),(1064,3807,564,1330080.00),(1065,1211,565,0.00),(1066,914,566,1330080.00),(1067,NULL,567,0.00),(1068,3631,568,1163820.00),(1069,1585,569,1330080.00),(1070,143,570,1163820.00),(1072,2696,572,1163820.00),(1073,1134,573,1330080.00),(1074,2685,574,1163820.00),(1075,3103,575,1163820.00),(1076,135,576,1404466.00),(1077,21,577,1605104.00),(1078,7,578,1404454.00),(1079,2608,579,1404466.00),(1080,1442,580,1404466.00),(1081,139,581,1404466.00),(1082,1574,582,1404466.00),(1083,1772,583,1605104.00),(1084,2663,584,1404466.00),(1085,1046,585,1404466.00),(1086,848,586,1404466.00),(1087,1563,587,1404466.00),(1088,23,588,1404466.00),(1089,142,589,1404466.00),(1090,1992,590,1805742.00),(1091,1255,591,1404466.00),(1092,NULL,592,2006380.00),(1093,3257,593,1404466.00),(1094,NULL,594,2006380.00),(1095,2443,595,1404466.00),(1096,2454,596,1404466.00),(1097,1365,597,1404466.00),(1098,2652,598,1605104.00),(1099,1805,599,1404466.00),(1100,2091,600,1605104.00),(1101,NULL,601,2006380.00),(1102,2971,602,1404466.00),(1103,NULL,603,2006380.00),(1104,2993,604,1404466.00),(1105,NULL,605,2006380.00),(1106,89,606,802552.00),(1107,NULL,607,2006380.00),(1108,1233,608,1404466.00),(1109,1002,609,1605104.00),(1110,3092,610,1404466.00),(1111,1354,611,1404466.00),(1112,100,612,1404466.00),(1113,NULL,613,2006380.00),(1114,NULL,614,2006380.00),(1115,NULL,615,2006380.00),(1116,12,616,1404466.00),(1117,78,617,1404466.00),(1118,2476,618,1404466.00),(1119,1222,619,1404466.00),(1120,1035,620,1605104.00),(1121,1156,621,1404466.00),(1122,1255,622,1404466.00),(1123,2179,623,1404466.00),(1124,113,624,0.00),(1125,3136,625,1404466.00),(1126,3862,626,1404466.00),(1127,980,627,0.00),(1128,3213,628,1404466.00),(1129,353,629,1404466.00),(1130,67,630,1404466.00),(1131,3202,631,1404466.00),(1132,1431,632,1404466.00),(1133,309,633,1003190.00),(1134,NULL,634,2006380.00),(1135,3191,635,1595742.00),(1136,925,636,1404466.00),(1137,903,637,1405342.00),(1138,3290,638,1805742.00),(1139,188,639,1375104.00),(1140,2025,640,1404466.00),(1141,364,641,1393742.00),(1142,1398,642,1404466.00),(1143,2630,643,1404466.00),(1144,1860,644,1404466.00),(1145,56,645,1404466.00),(1146,3235,646,1605104.00),(1147,2432,647,1404466.00),(1148,2916,648,1605104.00),(1149,2839,649,1605104.00),(1150,2905,650,1404466.00),(1151,1310,651,1404466.00),(1152,1882,652,1404466.00),(1153,2795,653,1404454.00),(1154,NULL,654,2006380.00),(1155,3059,655,1605104.00),(1156,870,656,1605104.00),(1157,3026,657,1404466.00),(1158,1299,658,1605104.00),(1159,2861,659,1404466.00),(1160,1365,660,1404466.00),(1161,NULL,661,2006380.00),(1162,NULL,662,2006380.00),(1163,1761,663,1404466.00),(1164,2883,664,1605104.00),(1165,342,665,1404466.00),(1166,2960,666,1404466.00),(1167,3268,667,1404466.00),(1168,1266,668,1404466.00),(1169,1343,669,1404466.00),(1170,NULL,670,2006380.00),(1171,1420,671,1404466.00),(1172,147,672,1605104.00),(1173,375,673,1404404.00),(1174,1640,674,1404466.00),(1175,2003,675,1404466.00),(1176,1244,676,1404466.00),(1177,298,677,1605104.00),(1178,NULL,678,2006380.00),(1179,122,679,1404466.00),(1180,2300,680,1404466.00),(1181,287,681,1203828.00),(1182,2872,682,1203828.00),(1183,1321,683,1404466.00),(1184,1123,684,1605104.00),(1185,1244,685,1605104.00),(1186,3125,686,1404466.00),(1187,1871,687,1805742.00),(1188,1068,688,1605104.00),(1189,2806,689,1805742.00),(1190,146,690,1605104.00),(1191,132,691,1404442.00),(1192,1981,692,1404466.00),(1193,1277,693,1404466.00),(1194,1332,694,1605104.00),(1195,2894,695,1404466.00),(1196,991,696,1404466.00),(1197,2036,697,1404466.00),(1198,1145,698,1605104.00),(1199,NULL,699,2006380.00),(1200,2146,700,1404466.00),(1201,1431,701,1404466.00),(1202,1552,702,1404466.00),(1203,1816,703,1404466.00),(1204,150,704,1404466.00),(1205,2762,705,1404466.00),(1206,1684,706,1404466.00),(1207,23,707,1605104.00),(1208,1926,708,1404466.00),(1209,1695,709,1605042.00),(1210,1178,710,1404466.00),(1211,2256,711,1404466.00),(1212,243,712,1404466.00),(1213,22,713,1404442.00),(1214,2784,714,1404466.00),(1215,1,715,1404466.00),(1216,232,716,1203828.00),(1217,1024,717,1404466.00),(1218,1871,718,1404542.00),(1219,2124,719,1404466.00),(1220,1761,720,1404466.00),(1221,1915,721,1404466.00),(1222,131,722,1605104.00),(1223,1167,723,1404466.00),(1224,1145,724,1605104.00),(1225,2113,725,1605104.00),(1226,56,726,1404466.00),(1227,3224,727,1404466.00),(1228,2058,728,1404466.00),(1229,20,729,1404466.00),(1230,2773,730,1605104.00),(1231,2828,731,1404466.00),(1232,1959,732,1605104.00),(1233,386,733,1404466.00),(1234,1101,734,1404466.00),(1235,NULL,735,2006380.00),(1236,1827,736,1404466.00),(1237,24,737,1203828.00),(1238,1970,738,1605104.00),(1239,1937,739,1605104.00),(1240,2069,740,1404466.00),(1241,NULL,741,2006380.00),(1242,221,742,1605104.00),(1243,3851,743,1404466.00),(1244,1838,744,1404466.00),(1245,30,745,1404466.00),(1246,NULL,746,2006380.00),(1247,2168,747,1404466.00),(1248,1497,748,1404466.00),(1249,1464,749,1404466.00),(1250,1420,750,1404466.00),(1251,38,751,1404466.00),(1252,NULL,752,2006380.00),(1253,1486,753,1404466.00),(1254,NULL,754,2006380.00),(1255,1706,755,802552.00),(1256,2377,756,1404466.00),(1257,144,757,1404466.00),(1258,2102,758,1605104.00),(1259,NULL,759,2006380.00),(1260,1849,760,1605104.00),(1261,1860,761,1404466.00),(1262,1662,762,1404466.00),(1263,1717,763,1404466.00),(1264,NULL,764,2006380.00),(1265,2190,765,1404466.00),(1266,1112,766,1404342.00),(1267,320,767,1203828.00),(1268,1948,768,1404466.00),(1269,1178,769,1404466.00),(1270,148,770,1404466.00),(1271,2850,771,1605104.00),(1272,1739,772,1605104.00),(1273,1376,773,1404466.00),(1274,276,774,1404466.00),(1275,55,775,1404366.00),(1276,NULL,776,2006380.00),(1277,25,777,1404466.00),(1278,969,778,1404466.00),(1279,NULL,779,2006380.00),(1280,1101,780,1404466.00),(1281,2080,781,1605104.00),(1282,1728,782,1404466.00),(1283,2487,783,1480493.00),(1284,1167,784,1480493.00),(1285,54,785,1691992.00),(1286,496,786,1480493.00),(1287,NULL,787,2114990.00),(1288,2311,788,1480493.00),(1289,1442,789,1480493.00),(1290,16,790,1480493.00),(1291,2542,791,1691992.00),(1292,2498,792,1691991.00),(1293,46,793,1480493.00),(1294,1519,794,1480493.00),(1295,127,795,1480493.00),(1296,2740,796,1691992.00),(1297,452,797,1691992.00),(1298,NULL,798,2114990.00),(1299,2564,799,1480493.00),(1300,2509,800,1480493.00),(1301,2575,801,1480493.00),(1302,2366,802,1480490.00),(1303,463,803,1691992.00),(1304,1189,804,1480493.00),(1305,130,805,1480493.00),(1306,2278,806,1480493.00),(1307,881,807,1480493.00),(1308,2531,808,1480493.00),(1309,NULL,809,2114990.00),(1310,2619,810,1480493.00),(1311,53,811,1691992.00),(1312,507,812,1480493.00),(1313,50,813,1480493.00),(1314,1904,814,1480493.00),(1315,NULL,815,2114990.00),(1316,NULL,816,2114990.00),(1317,1508,817,1480493.00),(1318,10,818,1268991.00),(1319,892,819,1480493.00),(1320,51,820,1480493.00),(1321,2234,821,1480493.00),(1322,NULL,822,2114990.00),(1323,2355,823,1480493.00),(1324,NULL,824,2114990.00),(1325,2223,825,1480493.00),(1326,2520,826,1691992.00),(1327,NULL,827,2114990.00),(1328,133,828,1691992.00),(1329,49,829,1691992.00),(1330,1651,830,0.00),(1331,128,831,1480493.00),(1332,1772,832,1268994.00),(1333,NULL,833,2114990.00),(1334,2245,834,1480493.00),(1335,52,835,1480493.00),(1336,397,836,1480493.00),(1337,13,837,1480493.00),(1338,1607,838,1480493.00),(1339,2322,839,0.00),(1340,144,840,1480493.00),(1341,2212,841,1691992.00),(1342,419,842,1480493.00),(1343,1783,843,1691992.00),(1344,NULL,844,2114990.00),(1345,2410,845,1691992.00),(1346,2388,846,1691992.00),(1347,474,847,1480493.00),(1348,1794,848,1691992.00),(1349,1156,849,1480493.00),(1350,NULL,850,2114990.00),(1351,NULL,851,2114990.00),(1352,NULL,852,2114990.00),(1353,1750,853,1480493.00),(1354,2982,854,1163820.00);
/*!40000 ALTER TABLE `staccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `state_code` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`state_code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'ACTIVE'),(2,'COMPLETED'),(3,'TERMINATED');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `gender` int(11) NOT NULL,
  `dob` date NOT NULL,
  `p_code` int(11) NOT NULL,
  `exp_ciudad` int(11) NOT NULL,
  `rh` int(11) NOT NULL,
  `eps` int(11) NOT NULL,
  `sisben` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=455 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (100,'GALILEA ISABEL','BARROS NAVARRO',2,'2009-10-22',10001,1,7,2,1),(101,'DAVID SALOMON','CARVAJAL GARCIA',1,'2009-11-12',0,0,1,0,1),(102,'DANIELA','FERREIRA HIGUERA',2,'2009-10-12',10000,1,1,1,1),(103,'MARIA KAMILA','FLOREZ TAPIAS',2,'2010-09-23',0,0,1,0,1),(104,'ANGEL DAVID','GUTIERREZ CEBALLOS',1,'2010-02-06',0,0,7,0,1),(105,'GADDIEL STHEPEN','JIMENEZ CARRILLO',1,'2010-01-12',0,0,7,0,1),(106,'JHON ALEXANDER','LOPEZ AGUILAR',1,'2009-12-14',0,0,1,0,1),(107,'HELEN GABRIELA','LOPEZ BERNAL',2,'2010-01-04',0,0,7,0,1),(108,'JUAN DAVID','MARIN IBAÑEZ',1,'2009-12-28',0,0,7,0,1),(109,'THOMAS ALFONSO','NAVARRO LLANES',1,'2009-10-04',0,0,8,0,1),(110,'DANILO JONATAN','OSPINA COLMENARES',1,'2010-02-15',0,0,7,0,1),(111,'FABIO NICOLAS','RAMIREZ SANCHEZ',1,'2009-06-18',0,0,7,0,1),(112,'JUAN SEBASTIAN','ROA ALFARO',1,'2009-08-24',0,0,7,0,1),(113,'MARIA ALEJANDRA','VIVIESCAS CABRERA',2,'2010-03-19',0,0,3,0,1),(114,'DHALEIX IULIANA','ACEVEDO PLATA',2,'2009-01-28',0,1,1,3,1),(115,'SHERYL YINETH','ANGULO GOMEZ',2,'2008-10-03',0,1,7,2,1),(116,'FRANCO STICK','CAMPO RAMOS',1,'2008-08-13',0,1,7,4,1),(117,'SOFIA','CARVAJAL CIFUENTES',2,'2008-12-18',0,2,7,3,1),(118,'ALEJANDRO','CHAPARRO VASQUEZ',1,'2009-06-20',0,1,7,2,1),(119,'JUAN DAVID','FERNANDEZ PEÑA',1,'2009-06-21',0,1,3,5,1),(120,'JUAN DAVID','GALINDO BLANCO',1,'2008-03-28',0,1,7,6,1),(121,'JORGE ANDRES','GIRALDO RUEDA',1,'2008-10-22',0,1,7,2,1),(122,'MARIA JOSE','LARA CABALLERO ',2,'2009-02-21',0,1,7,2,1),(123,'MARIA JOSE','MENESES BALLESTEROS',2,'2008-10-06',0,1,1,3,1),(124,'JUAN CAMILO','MEZA QUIROZ',1,'2008-05-07',0,3,3,2,1),(125,'DAYANAIS DANIELA','NATERA PARRA',2,'2008-09-09',0,4,7,7,1),(126,'EMMANUEL','ORTIZ BAEZA',1,'2008-05-09',0,5,7,3,1),(127,'JAIR DARIO','OSPINA COLMENARES',1,'2008-09-12',0,1,7,4,1),(128,'SANTIAGO','QUIROGA SALCEDO',1,'2008-10-04',0,1,7,4,1),(129,'JUAN ESTEBAN','ROJAS NOVA',1,'2008-03-12',0,5,7,1,1),(130,'JORGE ANDRES','SILVA CAMACHO',1,'2009-03-10',0,1,7,2,1),(131,'MARIA CAMILA','SILVA TRESPALACIOS',2,'2008-09-23',0,1,3,8,1),(132,'NICOLAS SANTIAGO','SOLANO GOMEZ',1,'2009-04-23',0,5,1,0,1),(133,'ISABELLA','SUAREZ BACCA',2,'2008-06-11',0,6,7,2,1),(134,'JOSE DAVID','VALENCIA VARGAS',1,'2007-12-04',0,6,7,2,1),(135,'JUAN DAVID','VARGAS FLOREZ',1,'2008-08-28',0,1,7,3,1),(136,'ALEXIS DAVID','ACUÑA MERCADO',1,'2008-01-26',0,1,7,1,1),(137,'JOSE DAVID','ARCINIEGAS ROBLES',1,'2007-10-26',0,1,7,3,1),(138,'SANTIAGO','ARENAS HERRERA',1,'2008-01-15',0,6,6,2,1),(139,'DANNA VALENTINA','AYALA TAMARA',2,'2007-02-07',0,1,7,3,1),(140,'JADER ANDRES','BELTRAN RODRIGUEZ',1,'2008-01-25',0,1,3,9,2),(141,'HENRRY DANIEL','BOHORQUEZ MARQUEZ',1,'2008-03-31',0,1,0,0,1),(142,'AILYN CATALINA','CAJAR OCHOA',2,'2007-11-11',0,1,7,2,1),(143,'JUAN DAVID','GIRALDO CASTILLO',1,'2005-11-02',0,7,1,2,1),(144,'PAULA ANDREA','GOMEZ RAMIREZ',2,'2007-07-10',0,1,7,2,1),(145,'ISABELLA','GUERRA RUIZ',2,'2008-04-14',0,8,7,2,1),(146,'ROOSVELT ALEJANDRO','LOPEZ LOPEZ',1,'2008-01-15',0,1,7,2,1),(147,'WILMER ANDRES','MESA PRADA',1,'2007-07-29',0,5,1,5,1),(148,'JULIAN ANDRES','RODRIGUEZ ARIAS',1,'2008-07-26',0,1,1,2,1),(149,'DILAN SMITH','RODRIGUEZ	CUADROS',1,'2008-09-02',0,1,1,3,1),(150,'LAURA DANIELA','ROJAS NOVA',2,'2007-08-14',0,1,7,1,1),(151,'ANDRES MIGUEL','SARMIENTO RIBERO',1,'2007-09-14',0,1,3,3,1),(152,'ZURISARAY','SOLANO PEREZ',2,'2007-09-02',0,1,7,2,1),(153,'ALICIA','TOLOZA CARVAJAL',2,'2007-01-01',0,1,7,2,1),(154,'STEVEN','TORRES CEBALLOS',1,'2007-06-18',0,1,7,0,1),(155,'JIREH CRISTINA','ANAYA GUDIÑO',2,'2007-02-21',0,1,7,2,1),(156,'RONALD ANDRES','AYALA TAMARA',1,'2005-12-06',0,1,7,3,1),(157,'CAMILO ANDRES','CARDOZO CASTILLEJO',1,'2006-08-11',0,1,7,2,1),(158,'CRISTAL','COSSIO ORTIZ',2,'2006-09-03',0,1,7,2,1),(159,'JUAN SEBASTIAN','ESPAÑA TREN',1,'2006-08-29',0,1,7,10,1),(160,'MARIA JOSE','GARCIA FLOREZ',2,'2006-09-13',0,1,7,2,1),(161,'PAULA SOFIA','GOMEZ TRIANA',2,'2007-07-20',0,5,3,1,1),(162,'MIGUEL ANDRES','HERRERA OSPINA',1,'2006-09-14',0,1,7,3,1),(163,'JOSÉ DANIEL','OSPINA COLMENARES',1,'2007-02-21',0,5,7,4,1),(164,'SARA','PACHON FLOREZ',2,'2006-07-21',0,1,7,2,1),(165,'JUAN SEBASTIAN','PABON MONSALVE',1,'2006-04-21',0,1,1,11,1),(166,'JUAN PABLO','PRADA SANABRIA',1,'2005-12-29',0,9,3,11,1),(167,'JUAN DIEGO','QUINTERO FIGUEROA',1,'0000-00-00',0,0,0,0,1),(168,'ANDRES FERNANDO','QUINTERO LLANOS',1,'2007-05-01',0,10,1,2,1),(169,'JUAN DIEGO','REY GARCIA',1,'2006-05-31',0,1,4,3,1),(170,'SANTIAGO','RUEDA BARRERA',1,'2007-02-13',0,11,8,2,1),(172,'YURGEN ANDREY','SARMIENTO GARCIA',1,'2006-06-20',0,6,7,1,1),(173,'EDINSON','SILVA ARAUJO',1,'2006-02-28',0,1,5,4,1),(174,'HILARY NICKOLL','SUAREZ CALDERON',2,'2006-01-10',0,12,1,2,1),(175,'TATIANA CAROLINA','TAFUR HERNANDEZ',2,'2007-02-21',0,1,7,0,1),(176,'NICOL DANIELA','ACUÑA MORENO',2,'2005-10-30',0,1,8,3,1),(177,'KEYNER ANDRES','ALVAREZ ROMERO',1,'2005-12-06',0,1,0,6,1),(178,'ANDRÉS FELIPE','ARTUNDUAGA PAÉZ',1,'2006-04-27',0,1,7,0,1),(179,'JAIDER STEVEN','BALDOVINO ALEMAN',1,'2005-10-22',0,1,3,2,1),(180,'JOSE DAVID','CADENA GARCIA',1,'2006-02-22',0,1,3,4,1),(181,'MARIA JOSÉ','CUBIDES MAYORGA',2,'2005-11-28',0,14,3,0,1),(182,'DANIEL YESIT','DOMÍNGUEZ CAICEDO',1,'2006-03-27',0,1,1,3,1),(183,'NICOLE ANDREA','FAJARDO VESGA',2,'2005-12-26',0,1,7,1,1),(184,'PAULA SOFIA','FLOREZ PARRA',2,'2006-02-28',0,1,1,2,1),(185,'LAURA CATALINA','MENESES JAIMES',2,'2006-04-15',0,5,7,2,1),(186,'WALTER DANIEL','MENESES JAIMES',1,'2006-04-15',0,5,7,2,1),(187,'BRANDON','NEIRA TAMI',1,'2005-06-10',0,1,7,4,1),(188,'ALAÍN STIVEN','NÚÑEZ SAUCEDO',1,'2006-04-28',0,1,1,13,1),(189,'JULIAN DAVID','OCHOA RANGEL',1,'2006-03-15',0,1,7,0,1),(190,'HÉCTOR THOMAS','OSORIO ROA',1,'2006-03-28',0,4,7,2,1),(191,'SEBASTIAN','OSPINA ARREDONDO',1,'2005-08-09',0,8,7,5,1),(192,'MIGUEL ANGEL','OSPINA GUERRA',1,'2005-03-29',0,1,7,12,3),(193,'GABRIELA','PACHECO NUÑEZ',2,'2006-07-29',0,5,7,1,1),(194,'JUAN DAVID','PATIÑO GUZMAN',1,'2005-05-26',0,13,1,0,1),(195,'JAIME ANDRES','PINO CHACON',1,'2005-07-29',0,1,7,2,1),(196,'LUIS ALEJANDRO','PINO CHACON',1,'2005-07-29',0,1,7,2,1),(197,'SARA SOFIA','QUIROGA MOSQUERA',2,'2006-01-25',0,9,7,2,1),(198,'ASTRID JULIANA','SALAZAR RAMÍREZ',2,'2006-02-11',0,1,1,11,1),(199,'JUAN PABLO','VILLARRAGA FRANCO',1,'2005-11-02',0,1,7,6,1),(200,'JOSE DAVID','BAYONA CORTEZ',1,'2005-03-09',0,1,3,3,1),(201,'BRIGETH LORENA','BERNAL TELLEZ',2,'2005-05-29',0,6,7,0,1),(202,'HELEN GIOVANA','BOHORQUEZ QUIROGA',2,'2005-01-04',0,1,7,0,1),(203,'KILLYAM FABIAN','DIAZ QUINTERO',1,'2005-02-09',0,1,4,10,1),(204,'MARIA CAMILA','FERNANDEZ MOSQUERA',2,'2004-08-21',0,9,7,2,1),(205,'DEGMARK DAVID','GALEANO LUGO',1,'2005-03-18',0,1,7,5,1),(206,'NICOL DAYANA','GARCIA BERRUECOS',2,'2005-05-09',0,1,7,18,1),(207,'EMILI','GIL PAREJA',2,'2004-06-06',0,1,1,11,1),(208,'JUAN CAMILO','GÓMEZAQUIRA SALCEDO',1,'2004-10-28',0,10,7,2,1),(209,'DANNA','GORDILLO RAMOS',2,'2003-12-01',0,20,1,2,1),(210,'SANTIAGO ANDRES','GUERRERO ROMERO',1,'2004-07-29',0,6,5,2,1),(211,'EMILIO ANDRES','HERAZO JAIMES',1,'2003-11-17',0,1,7,3,1),(212,'JESUS DAVID','ORDOÑEZ MORALES',1,'2005-02-09',0,1,7,2,1),(213,'KAREN VALENTINA','OSPINA GUERRA',2,'2003-05-03',0,1,1,12,3),(214,'MARIA CAMILA','PATIÑO VARGAS',2,'2003-12-02',0,1,1,2,1),(215,'TAHIS YULIANA','PAVA VILORIA',2,'2004-03-08',0,1,8,18,1),(216,'JUAN MANUEL','RAMIREZ SANCHEZ',1,'2003-12-24',0,1,7,2,1),(217,'JUAN DAVID','RODRIGUEZ RANGEL',1,'2004-07-27',0,1,1,6,1),(218,'ANGEL DANIEL','SCARPETTA RUIZ',1,'2004-07-08',0,6,7,1,1),(219,'DHANNA MELISSA','TORRES RESTREPO',2,'2004-11-22',0,1,5,0,1),(220,'DANIELA ALEJANDRA','TORRES ROMERO',2,'2004-12-11',0,21,1,2,1),(221,'JEISON STEVEN','VARGAS ARDILA',1,'2004-10-26',0,1,7,3,1),(222,'ANDRES FELIPE','VARGAS LOPEZ',1,'2005-02-11',0,1,7,0,1),(223,'MARIA FERNANDA','VILLARRAGA FRANCO',2,'2004-09-21',0,1,7,6,1),(224,'MARIA CAMILA','ALAYÓN PEREZ',2,'2002-10-02',0,1,7,0,1),(225,'KEVIN SANTIAGO','ARDILA FUENTES',1,'2005-05-10',0,1,7,2,1),(226,'JUAN MIGUEL','ATENCIA ZABALETA',1,'2004-09-24',0,1,7,18,1),(227,'VALENTINA','BOHORQUEZ RIAÑO',2,'2005-03-03',0,1,7,11,1),(228,'ARLENSON FABIAN','CALDERON GARRIDO',1,'2004-10-21',0,1,1,3,1),(229,'MARCIA VALENTINA','FABRA GONZALEZ',2,'2004-08-10',0,0,0,0,1),(230,'DIEGO ANDRES','FERREIRA CASTILLO',1,'2004-06-16',0,18,1,11,1),(231,'JUAN CAMILO','GARCIA GALVAN',1,'2004-10-25',0,1,7,4,1),(232,'ROGER ALEXANDER','GARCIA PACHON',1,'2004-08-20',0,5,7,0,1),(233,'JOSE GUILLERMO','GOMEZ ZARATE',1,'2004-01-20',0,1,1,11,1),(234,'DANIELA','HENAO MARTÍNEZ',2,'2005-03-08',0,1,7,11,1),(235,'SEBASTIAN','HERNANDEZ REYES',1,'2001-07-25',0,5,7,19,1),(236,'ALVARO JAVIER','HERRERA TORRES',1,'2004-06-04',0,5,3,2,1),(237,'RAFAEL STEVEN','MARTINEZ JAIMES',1,'2004-12-16',0,1,1,2,1),(238,'JULIAN ALBERTO','MEJIA MENESES',1,'2005-07-07',0,1,5,2,1),(239,'JONATHAN DAVID','MEJIA SALAZAR',1,'2003-07-16',0,22,1,3,1),(240,'JAVIER SANTIAGO','ORTIZ BAEZA',1,'2004-12-29',0,1,7,3,1),(241,'JUAN CAMILO','QUEZADA MANRIQUE',1,'2003-11-12',0,1,1,2,1),(242,'ANGIE YULIETH','RICO MORALES',2,'2005-02-06',0,1,7,2,1),(243,'ANGIE DANIELA','ROMERO ORTIZ',2,'2005-04-18',0,1,7,4,1),(244,'JUAN PABLO','RONDEROS ALVAREZ',1,'2004-10-25',0,1,7,2,1),(245,'MONCADA LYAM','VAN-SHTRALEN',1,'2003-12-14',0,1,7,0,1),(246,'HAROLD DAMIAN','ZUÑIGA DIAZ',1,'2003-11-20',0,1,3,3,1),(247,'CRISTIAN DAVID','AMARÍS VANEGAS',1,'2004-04-30',0,1,7,11,1),(248,'DANIEL FERNANDO','CORREDOR',1,'2004-05-10',0,1,1,3,1),(249,'CHRISTOPHER','DOMINGUEZ JIMENEZ',1,'2004-03-20',0,5,1,1,1),(250,'ALVARO JAVIER','DURAN MARTINEZ',1,'2004-06-24',0,1,7,2,1),(251,'KAROL MICHELL','FONSECA PLATA',2,'2004-05-10',0,1,3,3,1),(252,'CAMILO ANDRES','GUTIERREZ LOPEZ',1,'2004-03-21',0,1,1,5,1),(253,'DANIELA','JAIMES CANO',2,'2004-06-29',0,1,7,3,1),(254,'DANIEL LEONARDO','JIMÉNEZ CARRILLO',1,'2003-06-27',0,5,1,4,1),(255,'OSCAR JULIAN','LARIOS MORENO',1,'2003-09-15',0,1,7,2,1),(256,'SILVIA JULIANA','LOPEZ AGUILAR ',2,'2003-03-29',0,5,3,2,1),(257,'NATALIA','MARTINEZ QUIJANO',2,'2003-12-31',0,5,7,20,1),(258,'JOSIAS ANDRES','MARTINEZ RAMOS',1,'2005-03-16',0,23,3,4,1),(259,'ADRIAN','NAVAS BOHORQUEZ',1,'2004-02-18',0,9,2,4,1),(260,'STEFANY JULIET','PALOMAR ANDRADE',2,'2004-01-15',0,1,7,3,1),(261,'JORGE MARIO','PATIÑO GUZMAN',1,'2003-05-31',0,13,7,3,1),(262,'MIGUEL ÁNGEL','RINCÓN ROJAS',1,'2002-03-07',0,5,7,11,1),(263,'SEBASTIAN ANTONIO','ROCHA JIMENEZ',1,'2003-11-11',0,1,1,3,1),(264,'VALENTINA','ROMO PONCE ',2,'2004-07-31',0,1,7,2,1),(265,'LUISA FERNANDA','SALAS',2,'2002-11-02',0,1,7,11,1),(266,'JOHAN JAVIER','SALCEDO MARÍN',1,'2004-05-06',0,1,7,3,1),(267,'KEVIN SANTIAGO','SALDAÑA',1,'2004-03-23',0,6,7,10,1),(268,'NATALIA','SANTAMARIA GUZMAN',2,'2003-11-19',0,1,7,3,1),(269,'SEBASTIAN','SERRANO HERNANDEZ',1,'2003-03-25',0,1,7,2,1),(270,'SHAROK VANESSA','TRIANA GARZÓN',2,'2003-01-14',0,1,7,4,1),(271,'LUISA FERNANDA','VARGAS FONTALVO',2,'2003-07-31',0,1,7,3,1),(272,'ANGGELA PATRICIA','VARGAS GOMEZ',2,'2004-04-08',0,1,7,11,1),(273,'DIANA CAROLINA','VELASQUEZ ROMERO',2,'2003-08-19',0,1,7,2,1),(274,'LISDEY STEPHANIE','ARCINIEGAS ARBELAEZ',2,'2004-01-01',0,9,1,2,1),(275,'JOSE DANIEL DE JESÚS','ARDILA RINCON',1,'2003-09-07',0,1,8,3,1),(276,'ANDRES FELIPE','ARENAS HERRERA',1,'2003-11-25',0,1,7,2,1),(277,'YOINER ADRIAN','ARIZA RINCON',1,'2004-01-22',0,1,7,3,1),(278,'VALENTINA','BAEZA CRESPO',2,'2003-09-08',0,1,7,3,1),(279,'BRAYAN STEVEN','BLANCO MIRA',1,'2005-04-02',0,24,1,9,1),(280,'KENJI LEE','CHING PRADA',1,'2003-09-09',0,1,2,4,1),(281,'XIMENA ZULAY','DURAN GALVAN',2,'2002-10-14',0,1,7,11,1),(282,'ADRIANA CAROLINA','FLOREZ VANEGAS',2,'2004-10-21',0,25,7,2,1),(283,'HECTOR MANUEL','GARCIA JAIMES',1,'2003-08-06',0,1,1,2,1),(284,'DANIELA','GOMEZ REY',2,'2003-04-11',0,1,2,3,1),(285,'KAREN PAOLA','GRANDETT PINEDA',2,'2003-01-11',0,1,7,2,1),(286,'JUAN LUIS','GUERRA RUIZ',1,'2004-11-17',0,8,7,2,1),(287,'EDWARD ESTEBAN','MEJIA MENESES',1,'2004-02-17',0,1,3,2,1),(288,'JESUS ALBERTO','MORA RONDON',1,'2003-12-20',0,1,1,21,1),(289,'ANGEL FELIPE','MORALES FUENTES',1,'2002-03-18',0,5,1,3,1),(290,'PAULA VALENTINA','PADILLA PALACIOS',2,'2003-05-15',0,6,7,3,1),(291,'EMILY SARAY','PÉREZ LONDOÑO',2,'2004-05-26',0,26,7,0,1),(292,'JORGE STIVEN','PLATA BERDUGO',1,'2003-10-29',0,1,1,3,1),(293,'FRANCY VALENTINA','QUEZADA MOLINA',2,'2004-02-27',0,1,7,3,1),(294,'LUISA MARIA','RAAD PUERTA',2,'2002-10-21',0,1,7,0,1),(295,'VALERIA','REALES GOMEZ',2,'2003-09-04',0,1,7,1,1),(296,'JUAN JOSE','RODRIGUEZ GONZALEZ',1,'2003-06-10',0,1,8,18,1),(297,'RAFAEL ENRIQUE','RUEDA MOLINA',1,'2002-03-03',0,1,3,2,1),(298,'PAULA ANDREA','SILVA ARAUJO',2,'2004-06-12',0,1,7,4,1),(299,'LINNETH KARINA','TORRES HERNANDEZ',2,'2004-02-28',0,1,7,3,1),(300,'VANESSA','ACEVEDO PEÑA',2,'2002-11-01',0,27,1,6,1),(301,'KATIA GISELL','ANAYA GUDIÑO',2,'2002-04-07',0,1,3,2,1),(302,'SERGIO JAVIER','BLANCO FUENTES',1,'2002-06-29',0,1,3,4,1),(303,'SEBASTIAN','BOTELLO CERRO',1,'2003-01-14',0,1,8,0,1),(304,'JUÁN DANIEL','CASTILLO VINASCO',1,'2003-04-14',0,9,7,16,1),(305,'DANIELA','GUTIERREZ PADILLA',2,'2002-09-13',0,1,1,3,1),(306,'ANGEL SANTIAGO','HERNANDEZ ESCOBAR',1,'2003-09-09',0,5,1,3,1),(307,'JESÚS ALEJANDRO','HIGUERA CALVO',1,'2002-05-05',0,1,1,2,1),(308,'LUZ ADRIANA','LEON ANDRADE',2,'2003-04-07',0,1,7,2,1),(309,'JHOAN SEBASTIAN','MAHECHA VELASQUEZ',1,'2003-04-15',0,1,7,2,1),(310,'DIEGO ANDRES','MORALES ROBLES',1,'2003-01-13',0,1,7,3,1),(311,'OMAR FREDDY','NOVA BUSTAMANTE',1,'2003-04-07',0,1,7,13,1),(312,'ANGELLY PAOLA','PEÑA TORRES',2,'2003-04-09',0,1,7,5,1),(313,'HADER LEANDRO','RAMOS BAYONA',1,'2002-03-05',0,6,7,3,1),(314,'WILSON ANDRÉS','RINCÓN PÉREZ',1,'2003-05-03',0,1,7,4,1),(315,'ANDRÉS FELIPE','RODRÍGUEZ ARIAS',1,'2002-10-28',0,1,1,2,1),(316,'DANIEL ANDRES','RODRIGUEZ CONTRERAS',1,'2002-04-16',0,1,1,11,1),(317,'CIELO','RUBIO PEREZ',2,'2000-09-19',0,1,7,2,1),(318,'ARIEL STEVEN','RUEDA MARTINEZ',1,'2002-07-26',0,1,7,2,1),(319,'LUISA FERNANDA','TORRES DURAN',2,'2003-05-24',0,1,7,9,1),(320,'SARAY DANIELA','TRIANA RAMOS',2,'2002-12-31',0,1,7,4,1),(321,'CARLOS DANIEL','VERGARA VEGA',1,'2002-10-25',0,1,7,3,1),(322,'OSCAR JAVIER','VILLALBA VANEGAS',1,'2003-04-20',0,9,1,13,1),(323,'LEONARDO','ALQUICHIRE ALQUICHIRE',1,'2003-07-11',0,1,7,3,1),(324,'ANDRES MAURICIO','ARIAS OSORIO',1,'2002-06-29',0,1,7,2,1),(325,'PAULA ANDREA','BAYONA CORTEZ',2,'2002-09-13',0,1,3,3,1),(326,'EMMANUEL JOSE','CADENA REINA',1,'2003-11-15',0,1,7,2,1),(327,'JOSE FERNANDO','CARRASCAL SIERRA',1,'2002-12-13',0,1,1,2,1),(328,'JULIANA ANDREA','GARCIA ORTIZ',2,'2001-05-14',0,1,7,4,1),(329,'LEONARDO FABIO','GARCIA URIBE',1,'2003-01-08',0,1,7,3,1),(330,'LUZ ANGELA','JIMENEZ ESCOBAR',2,'2001-07-04',0,1,1,3,1),(331,'LUIS JOSE','LEMUS DUARTE',1,'2003-04-23',0,1,7,4,1),(332,'JUAN NICOLAS','MARTINEZ HERRERA',1,'2002-10-01',0,9,7,4,1),(333,'JUAN SEBASTIAN','MELO PUENTES',1,'2002-08-19',0,1,7,2,1),(334,'DIANYS KATERIN','NATERA PARRA',2,'2002-07-11',0,4,7,6,1),(335,'WILLIAM SANTIAGO','OROZCO BENAVIDES',1,'2002-05-19',0,1,7,5,1),(336,'JHON MARIO','RAMOS ROJAS',1,'2002-08-05',0,1,7,2,1),(337,'LAURA KARINA','RANGEL GUTIERREZ',2,'2003-03-14',0,1,7,11,1),(338,'NATHALIA','RICO ACEROS',2,'2002-08-07',0,1,7,3,1),(339,'KEVIN FERNANDO','SERRANO BARROSO',1,'2003-01-03',0,5,7,3,1),(340,'LOREN MARIANE','TURIZO LEZAMA',2,'2003-10-05',0,1,1,4,1),(341,'LUIS ERNESTO','VELANDIA CASTRO',1,'2002-11-24',0,1,7,0,1),(342,'JOY MICHELLE','VERA ARIAS',2,'2003-05-10',0,5,1,3,1),(343,'JUAN PABLO','YEPES CHAVEZ',1,'2002-09-26',0,1,1,0,1),(344,'KENNY YINARY','ZARATE SANABRIA',2,'2002-07-20',0,1,8,3,1),(345,'JULLIETH TATIANA','AFANADOR FIGUEROA',2,'2002-09-27',0,1,7,8,1),(346,'DIEGO ALEJANDRO','ARROYO SUÃREZ',1,'2002-08-13',0,1,3,4,1),(347,'JUAN SEBASTIAN','BOHORQUEZ BALAGUERA',1,'2002-02-19',0,1,1,2,1),(348,'CAMILO ANDRES','CACERES PEREZ',1,'2002-04-12',0,5,8,2,1),(349,'JOSE DANIEL','CADENA GARCIA',1,'2001-08-09',0,1,1,4,1),(350,'VALERY TATIANA','CALA SALCEDO',2,'2000-08-29',0,1,7,3,1),(351,'KELY','CARRILLO REY',2,'2001-09-29',0,12,1,2,1),(352,'JOSÉ ÁNGEL','CELIS VERA',1,'2002-07-27',0,9,7,2,1),(353,'JAVIER ANDRES','CHINCHILLA BALLESTEROS ',1,'2002-11-05',0,1,7,3,1),(354,'WILSON ANDRÉS','CONTRERAS CRIADO',1,'2000-11-08',0,1,2,11,1),(355,'JESUS ALBERTO','CORREA MARMOL',1,'2001-12-24',0,1,7,11,1),(356,'SEBASTIAN ALONSO','CORREA VALDES',1,'2002-08-14',0,1,7,8,1),(357,'ANDREA FERNANDA','CRUZADO ALZATE',2,'2002-03-22',0,1,1,0,1),(358,'ANDRES FELIPE','DOMINGUEZ TRUJILLO',1,'2001-07-06',0,1,1,4,1),(359,'LUISA FERNANDA','DUARTE MEZA',2,'2000-05-16',0,1,7,0,1),(360,'EMILIO ANDRÉS','DUQUE CABALLERO',1,'2002-01-15',0,1,7,2,1),(361,'JUAN PABLO','ESCOBAR CALDERON',1,'2001-06-07',0,1,1,3,1),(362,'KAREN JULITZA','FLOREZ TAPIAS ',2,'2002-06-15',0,1,1,0,1),(363,'JOSÉ GABRIEL','FUENTES ECHEVERRI',1,'2001-12-02',0,1,7,2,1),(364,'KATTERIN JULIETH','GALAN ROJAS',2,'2001-07-23',0,1,7,4,1),(365,'MARIA ALEJANDRA','GARCIA ORTIZ',2,'1999-07-16',0,1,7,4,1),(366,'ALEJANDRO','GOMEZ REY',1,'2000-10-24',0,1,1,3,1),(367,'LUIS JOSE','GOMEZ ZARATE',1,'2000-05-24',0,1,1,11,1),(368,'SANTIAGO ANDRÉS','MEJÍA BERMÚDEZ ',1,'2001-03-14',0,1,1,0,1),(369,'CARLOS DANIEL','MOLINA PARADA',1,'2001-09-10',0,1,7,2,1),(370,'MARIA SMITH','NAVARRO GARCIA',2,'2003-04-26',0,1,1,8,1),(371,'PAULA ANDREA','OJEDA PARRA',2,'2000-12-10',0,1,7,2,1),(372,'DANNA MARCELA','ORTEGA BADILLO ',2,'2001-11-29',0,1,1,3,1),(373,'MIGUEL ANGEL','OTERO VILA',1,'2002-02-24',0,1,7,2,1),(374,'FREDDY ANDRES','PEÑA TORRES',1,'2001-11-27',0,1,3,5,1),(375,'ROSBERG ENRIQUE','PERILLA CASTELLANOS',1,'2002-07-31',0,5,7,8,1),(376,'JOSE RODOLFO','PRADA DAVILA',1,'2002-12-05',0,1,7,11,1),(377,'GINA MARCELA','RAMÍREZ DOMÍNGUEZ',2,'2002-05-30',0,1,1,2,1),(378,'SVEN SEBASTIAN','ROBLES RODRIGUEZ',1,'2001-09-23',0,9,1,18,1),(379,'DANIELA FERNANDA','SANTANA VASQUEZ',2,'2000-08-18',0,1,7,11,1),(380,'ROMAN ALEJANDRO','VALENCIA VELASQUEZ',1,'2001-08-14',0,1,1,4,1),(381,'DANIELA BEATRIZ','VERGARA SALAS',2,'2001-01-31',0,1,1,4,1),(382,'MARGIE DAYANNA','VIDAL ARENAS',2,'2001-02-14',0,1,7,3,1),(383,'ANGIE PAOLA','AMARÍS VANEGAS',2,'2001-01-25',0,1,7,11,1),(384,'YERIS DAYANNA','ARBOLEDA BARRERA',2,'2000-03-16',0,1,1,2,1),(385,'LUIS FERNANDO','ARIAS LEON',1,'1999-08-17',0,1,1,3,1),(386,'DANIELA ANDREA','BENITEZ SANTAMARÍA',2,'2000-08-22',0,1,7,2,1),(387,'MARIA FERNANDA','CASTRO GUERRA',2,'2001-06-09',0,1,7,3,1),(388,'YUEN LEE','CHING PRADA',1,'2000-08-10',0,1,1,4,1),(389,'HANNS ENRIQUE','COLEY CORTINA',1,'2001-04-27',0,1,7,3,1),(390,'ANDERSON','CONTRERAS CRIADO',1,'1998-10-02',0,1,1,11,1),(391,'MABEL FERNANDA','EGEA PERDOMO',2,'2000-01-29',0,1,1,8,1),(392,'DANIELA PAOLA','ESPINOSA RUIZ',2,'1999-09-06',0,1,5,3,1),(393,'SARAI VIVIANA','FERREIRA HIGUERA',2,'2001-04-10',0,1,1,2,1),(394,'MAYRA JULIETH','GALINDO MONTAÑEZ',2,'2000-12-24',0,1,7,3,1),(395,'JHON JAIRO','GARCIA HOYOS',1,'2000-08-17',0,5,1,13,1),(396,'MARLON JULIAN','GARCIA JAIMES',1,'2000-10-01',0,1,7,2,1),(397,'LUZ ADRIANA','HOYOS LAVERDE',2,'1998-09-16',0,1,7,14,3),(398,'CAMILO ANDRES','LOPEZ FUENTES',1,'2001-06-25',0,1,7,2,1),(399,'SEBASTIAN FELIPE','MACIAS DUARTE',1,'1999-03-28',0,1,7,2,1),(400,'DIEGO ANDRES','MOSQUERA JIMENEZ',1,'2001-02-06',0,1,7,2,1),(401,'JHORGI LEANDRO','MUÑOZ GARCÍA',1,'2001-11-26',0,15,7,0,1),(402,'BRAYAN ANDRÉS','NAVARRO GUERRERO',1,'2001-03-17',0,1,7,3,1),(403,'LEIDY TATIANA','NOSSA GAMBOA',2,'2001-03-23',0,16,1,0,1),(404,'SEBASTIÁN','NOVA QUINTERO',1,'2001-08-31',0,9,1,0,1),(405,'YITZATH ALEXÁNDER','OCHOA RANGEL',1,'2000-12-07',0,1,7,3,1),(406,'ANDRÉS JULIÁN','PRADA RIOS',1,'2001-02-25',0,15,7,3,1),(407,'JUAN FELIPE','QUIJANO CONTRERAS',1,'1999-09-12',0,1,1,1,1),(408,'DIEGO ALEJANDRO','RICO SOLANO',1,'2000-04-18',0,1,7,4,1),(409,'MELISSA ROCIO','RODRÍGUEZ ANGULO',2,'2000-11-25',0,1,7,3,1),(410,'SEBASTIAN','ROMERO ORTIZ',1,'2000-08-04',0,1,7,4,1),(411,'JERSON ANDRÉS','RUEDA DIAZ',1,'2001-06-25',0,1,8,2,1),(412,'SULAIMA SAMIRA','SANCHEZ SIMANCA',2,'1999-12-23',0,1,1,2,1),(413,'URIEL DAVID','SANTAMARIA BENITEZ',1,'2001-07-03',0,1,7,3,1),(414,'JAVIER ALONSO','SERRANO CHAVEZ',1,'1998-11-22',0,6,1,15,1),(415,'SILVIA JULIANA','SUAREZ CEBALLOS',2,'2001-03-14',0,1,7,2,1),(416,'EMANUEL ANDRES','TORRES VILLAMIZAR',1,'2001-04-09',0,1,7,3,1),(417,'DANIEL FELIPE','ARCINIEGAS ARBELAEZ',1,'1999-07-27',0,5,2,2,1),(418,'EDSON FERNANDO','ARIAS SAAVEDRA',1,'1998-11-10',0,17,8,1,1),(419,'GABRIELA','BADILLO GARCIA',2,'1998-12-01',0,5,3,2,1),(420,'YIBETH FIORELLA','CADENA REINA',2,'2000-06-30',0,1,7,2,1),(421,'MAYRA ALEJANDRA','CASTAÑEDA OLAYA',2,'2000-05-16',0,17,7,1,1),(422,'KEVIN LEONARDO','DAVILA ZARATE',1,'1998-09-25',0,1,8,3,1),(423,'NIXON FABIAN','DUARTE FRANCO',1,'2000-02-05',0,1,3,3,1),(424,'ANGÉLICA','DURÁN MATUTE',2,'2000-01-05',0,1,3,14,2),(425,'JUAN FELIPE','FLOREZ GUERRERO',1,'1999-09-16',0,5,7,2,1),(426,'JOSE LUIS','FRANCO MENDOZA',1,'1999-08-02',0,1,1,0,1),(427,'MARIA CAMILA','GARZON DUARTE',2,'1999-10-31',0,1,7,11,1),(428,'GIOVANNI ANDRÉS','GIL GIL',1,'2000-10-11',0,1,8,8,1),(429,'JUAN DIEGO','GUTIERREZ BERMEO',1,'2000-03-28',0,1,7,2,1),(430,'CRISTIAN MANUEL','JAIMES ARDILA',1,'1999-08-12',0,1,1,2,1),(431,'MARIA ALEJANDRA','MERINO CARREÑO',2,'1999-09-06',0,1,1,2,1),(432,'DAYAN HERBET','MORA DIAZ',1,'1998-06-20',0,1,7,11,1),(433,'SILVIA FERNANDA','NIÑO HAAD',2,'2000-05-29',0,5,7,2,1),(434,'ANGELICA PAOLA','NOVA BUSTAMANTE',2,'1999-12-16',0,1,3,0,1),(435,'VALENTINA','PATIÑO ANGARITA',2,'2000-05-20',0,1,7,3,1),(436,'JOHAO CARLOS','PEINADO MANTILLA',1,'2000-05-13',0,1,1,3,1),(437,'BRAYAN ESNEIDER','PICO LOZANO',1,'2000-08-06',0,1,1,3,1),(438,'ZHARICK','PINZÓN GIL',2,'2000-08-26',0,9,4,3,1),(439,'JENNIFER GERALDINE','PRADA DAVILA ',2,'1999-09-07',0,1,7,11,1),(440,'WILLIAM CAMILO','QUINTERO QUINTERO',1,'1999-10-08',0,9,7,3,1),(441,'CRISTIAN ANDRÉS','REINA QUICENO',1,'2000-01-13',0,1,7,3,1),(442,'SARA','RIAÑO DUARTE',2,'1998-12-21',0,7,7,3,1),(443,'JEFFRY DAVID','RODRIGUEZ CHAPARRO',1,'2000-04-03',0,18,3,2,1),(444,'ALBERTH YESID','RODRIGUEZ CUADROS',1,'2000-09-19',0,1,7,3,1),(445,'JUAN DAVID','RODRIGUEZ MORENO',1,'1999-11-03',0,1,7,4,1),(446,'PAOLA ANDREA','RODRIGUEZ MORENO',2,'1998-07-05',0,1,1,4,1),(447,'ANA MARÍA','SIERRA ULLOQUE',2,'1999-12-27',0,17,7,16,1),(448,'JOSE MARTIN STIVEN','SOSA MORALES',1,'1998-10-24',0,5,7,3,1),(449,'KEVIN ANDRES','TAUTIVA SALAZAR',1,'1999-09-25',0,1,7,17,1),(450,'JULIO CESAR','TORRES TRESPALACIOS',1,'1998-02-05',0,19,7,3,1),(451,'LUIS CARLOS','TRIANA VERGARA',1,'2000-12-25',0,1,7,3,1),(452,'MITZY KAMILA','VELASQUEZ FLOREZ',2,'1999-07-07',0,1,7,0,1),(453,'HEIDY LEONOR','VESGA MORENO',2,'1999-08-13',0,1,7,4,1),(454,'JHONATAN DANILO','SANTOS BARRERA',1,'2006-09-11',0,1,7,2,1);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terminate_enrollment`
--

DROP TABLE IF EXISTS `terminate_enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terminate_enrollment` (
  `eid` int(11) NOT NULL,
  `date` date NOT NULL,
  `motive` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terminate_enrollment`
--

LOCK TABLES `terminate_enrollment` WRITE;
/*!40000 ALTER TABLE `terminate_enrollment` DISABLE KEYS */;
INSERT INTO `terminate_enrollment` VALUES (567,'2016-02-01','Nunca se presentó a clases'),(512,'2016-03-31','Retiro voluntario por los padres: se trasladan a Barranquilla');
/*!40000 ALTER TABLE `terminate_enrollment` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Withdraw_Student` AFTER INSERT ON `terminate_enrollment` FOR EACH ROW BEGIN
UPDATE enrollment
SET status = 3
WHERE eid = NEW.eid;

UPDATE staccount
SET balance = 0
WHERE eid = NEW.eid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tipo-nivel-educativo`
--

DROP TABLE IF EXISTS `tipo-nivel-educativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo-nivel-educativo` (
  `codtipniv` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_nivel` varchar(60) NOT NULL,
  PRIMARY KEY (`codtipniv`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo-nivel-educativo`
--

LOCK TABLES `tipo-nivel-educativo` WRITE;
/*!40000 ALTER TABLE `tipo-nivel-educativo` DISABLE KEYS */;
INSERT INTO `tipo-nivel-educativo` VALUES (1,'Pedagogico'),(2,'Otro');
/*!40000 ALTER TABLE `tipo-nivel-educativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `total-matricula-sin-pension-de-matricula`
--

DROP TABLE IF EXISTS `total-matricula-sin-pension-de-matricula`;
/*!50001 DROP VIEW IF EXISTS `total-matricula-sin-pension-de-matricula`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `total-matricula-sin-pension-de-matricula` (
  `matid` tinyint NOT NULL,
  `year` tinyint NOT NULL,
  `proc-informes-academicos` tinyint NOT NULL,
  `trabajo-pedagogico` tinyint NOT NULL,
  `aulas-especializadas` tinyint NOT NULL,
  `proyecto-escuelas-culturales-y-deportivas` tinyint NOT NULL,
  `carnet-estudiantil-talonario-pupitre-y-manual-de-convivencia` tinyint NOT NULL,
  `bienestar-estudiantil` tinyint NOT NULL,
  `mantenimiento-de-equipos` tinyint NOT NULL,
  `accion-social` tinyint NOT NULL,
  `bibliobanco` tinyint NOT NULL,
  `asociacion-padres` tinyint NOT NULL,
  `inscripcion-pruebas-estado` tinyint NOT NULL,
  `seguro-estudiantil` tinyint NOT NULL,
  `total` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `paydate` date NOT NULL,
  `regdate` date NOT NULL,
  PRIMARY KEY (`tid`),
  KEY `aid` (`aid`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`aid`) REFERENCES `staccount` (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=813 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,1209,200638.00,'2016-03-15','2016-03-16'),(2,1209,62.00,'2016-03-15','2016-03-16'),(3,1109,200638.00,'2016-03-16','2016-03-16'),(4,1189,200638.00,'2016-03-08','2016-03-16'),(5,1181,200638.00,'2016-02-15','2016-03-16'),(6,1181,200638.00,'2016-03-15','2016-03-16'),(7,1275,200638.00,'2016-02-29','2016-03-16'),(8,1275,200638.00,'2016-03-08','2016-03-16'),(9,1108,200638.00,'2016-02-10','2016-03-16'),(10,1108,200638.00,'2016-03-04','2016-03-16'),(11,1332,211499.00,'2016-03-04','2016-03-16'),(12,1332,211499.00,'2016-03-04','2016-03-16'),(13,1037,166260.00,'2016-02-10','2016-03-16'),(14,1037,166260.00,'2016-03-11','2016-03-16'),(15,1036,166260.00,'2015-11-23','2016-03-16'),(16,1036,166260.00,'2016-03-09','2016-03-16'),(17,1207,200638.00,'2016-02-12','2016-03-16'),(18,1207,200638.00,'2016-03-10','2016-03-16'),(19,1325,211499.00,'2016-02-17','2016-03-16'),(20,1325,211499.00,'2016-03-15','2016-03-16'),(21,1024,169437.00,'2016-02-01','2016-03-16'),(22,1024,169437.00,'2016-03-10','2016-03-16'),(23,1076,200638.00,'2016-02-10','2016-03-16'),(24,1076,200638.00,'2016-03-14','2016-03-16'),(25,1218,200638.00,'2016-02-15','2016-03-16'),(26,1218,200600.00,'2016-03-11','2016-03-16'),(27,1011,176025.00,'2016-01-27','2016-03-16'),(28,1011,176025.00,'2016-03-09','2016-03-16'),(29,1062,166260.00,'2015-11-24','2016-03-16'),(30,1062,166260.00,'2016-02-09','2016-03-16'),(31,1062,166260.00,'2016-03-07','2016-03-16'),(32,1082,200638.00,'2016-02-09','2016-03-16'),(33,1082,200638.00,'2016-03-14','2016-03-16'),(34,1090,200638.00,'2016-03-08','2016-03-16'),(35,1098,200638.00,'2016-03-03','2016-03-16'),(36,1098,200638.00,'2016-03-03','2016-03-16'),(37,1203,200638.00,'2016-02-24','2016-03-16'),(38,1203,200638.00,'2016-03-14','2016-03-16'),(39,1227,200638.00,'2016-02-22','2016-03-16'),(40,1227,200638.00,'2016-03-14','2016-03-16'),(41,1323,211499.00,'2016-02-05','2016-03-16'),(42,1323,211499.00,'2016-03-15','2016-03-16'),(43,1282,200638.00,'2016-02-08','2016-03-16'),(44,1282,200638.00,'2016-03-11','2016-03-16'),(45,1188,200638.00,'2016-01-27','2016-03-16'),(46,1188,200638.00,'2016-03-02','2016-03-16'),(47,1265,200638.00,'2016-02-18','2016-03-16'),(48,1265,200638.00,'2016-03-11','2016-03-16'),(49,1066,166260.00,'2016-02-15','2016-03-16'),(50,1012,176025.00,'2016-02-15','2016-03-16'),(51,1012,176025.00,'2016-02-15','2016-03-16'),(52,1049,166260.00,'2016-03-10','2016-03-16'),(53,1157,200638.00,'2016-02-04','2016-03-16'),(54,1157,200638.00,'2016-03-09','2016-03-16'),(55,1228,200638.00,'2016-02-18','2016-03-16'),(56,1228,200638.00,'2016-03-11','2016-03-16'),(57,1341,211499.00,'2016-02-12','2016-03-16'),(58,1341,211499.00,'2016-03-09','2016-03-16'),(59,1069,166260.00,'2016-02-15','2016-03-16'),(60,1069,166260.00,'2016-02-15','2016-03-16'),(61,1013,176025.00,'2016-02-09','2016-03-16'),(62,1013,176025.00,'2016-03-10','2016-03-16'),(63,1055,166260.00,'2016-02-22','2016-03-16'),(64,1055,166260.00,'2016-03-11','2016-03-16'),(65,1120,200638.00,'2016-01-28','2016-03-16'),(66,1120,200638.00,'2016-03-09','2016-03-16'),(67,1342,211499.00,'2016-01-29','2016-03-16'),(68,1342,211499.00,'2016-03-11','2016-03-16'),(69,1330,211499.00,'2016-03-02','2016-03-16'),(70,1116,200638.00,'2016-01-27','2016-03-16'),(71,1116,200638.00,'2016-03-09','2016-03-16'),(72,1348,211499.00,'2016-03-14','2016-03-16'),(73,1348,211499.00,'2016-03-14','2016-03-16'),(74,1034,169437.00,'2016-02-16','2016-03-16'),(75,1034,169437.00,'2016-03-11','2016-03-16'),(76,1258,200638.00,'2016-02-26','2016-03-16'),(77,1258,200638.00,'2016-03-11','2016-03-16'),(78,1172,200638.00,'2016-02-02','2016-03-16'),(79,1172,200638.00,'2016-03-01','2016-03-16'),(80,1158,200638.00,'2016-02-01','2016-03-18'),(81,1158,200638.00,'2016-03-08','2016-03-18'),(82,1185,200638.00,'2016-02-25','2016-03-18'),(83,1185,200638.00,'2016-03-17','2016-03-18'),(84,1062,166260.00,'2016-02-04','2016-03-18'),(86,1354,166260.00,'2016-02-09','2016-03-18'),(87,1354,166260.00,'2016-03-12','2016-03-18'),(88,1152,200638.00,'2016-02-05','2016-03-18'),(89,1152,200638.00,'2016-03-03','2016-03-18'),(90,1208,200638.00,'2016-02-01','2016-03-18'),(91,1208,200638.00,'2016-03-16','2016-03-18'),(92,1146,200638.00,'2016-03-15','2016-03-18'),(93,1146,200638.00,'2016-03-16','2016-03-18'),(94,1039,166260.00,'2015-11-26','2016-03-18'),(95,1039,166260.00,'2016-02-08','2016-03-18'),(96,1039,166260.00,'2016-03-16','2016-03-18'),(97,1056,166260.00,'2015-11-26','2016-03-18'),(98,1056,166260.00,'2016-02-08','2016-03-18'),(99,1056,166260.00,'2016-03-16','2016-03-18'),(100,1059,166260.00,'2016-02-17','2016-03-18'),(101,1059,166260.00,'2016-03-17','2016-03-18'),(102,1018,169437.00,'2016-02-09','2016-03-18'),(103,1018,169437.00,'2016-03-17','2016-03-18'),(104,1023,169437.00,'2016-01-29','2016-03-18'),(106,1214,200638.00,'2016-02-15','2016-03-18'),(107,1214,200638.00,'2016-03-14','2016-03-18'),(109,1261,200638.00,'2016-02-23','2016-03-18'),(110,1261,200638.00,'2016-03-14','2016-03-18'),(112,1008,176025.00,'2016-02-18','2016-03-18'),(113,1008,176025.00,'2016-03-07','2016-03-18'),(114,1209,200638.00,'2016-03-28','2016-03-28'),(115,1334,211499.00,'2015-12-23','2016-03-28'),(116,1334,211499.00,'2016-02-29','2016-03-28'),(117,1334,211499.00,'2016-03-22','2016-03-28'),(120,1345,211499.00,'2016-02-26','2016-03-28'),(121,1345,211499.00,'2016-03-22','2016-03-28'),(122,1346,211499.00,'2016-02-26','2016-03-28'),(123,1346,211499.00,'2016-03-22','2016-03-28'),(124,1253,200638.00,'2016-02-04','2016-03-28'),(125,1253,200638.00,'2016-03-18','2016-03-28'),(126,1177,200638.00,'2016-02-16','2016-03-29'),(127,1177,200638.00,'2016-03-22','2016-03-29'),(128,1179,200638.00,'2016-02-08','2016-03-29'),(129,1179,200638.00,'2016-03-15','2016-03-29'),(130,1180,200638.00,'2016-01-26','2016-03-29'),(131,1180,200638.00,'2016-02-29','2016-03-29'),(132,1180,200638.00,'2016-03-23','2016-03-29'),(133,1296,211499.00,'2016-02-11','2016-03-29'),(134,1296,211499.00,'2016-03-11','2016-03-29'),(135,1297,211499.00,'2016-02-29','2016-03-29'),(136,1297,211499.00,'2016-03-26','2016-03-29'),(137,1300,211499.00,'2016-02-01','2016-03-29'),(138,1300,211499.00,'2016-03-11','2016-03-29'),(139,1288,211499.00,'2016-01-26','2016-03-29'),(140,1288,211499.00,'2016-02-29','2016-03-29'),(141,1288,211499.00,'2016-03-23','2016-03-29'),(142,1225,200638.00,'2016-02-06','2016-03-29'),(143,1225,200638.00,'2016-03-28','2016-03-29'),(144,1211,200638.00,'2015-12-23','2016-03-29'),(145,1211,200638.00,'2016-02-29','2016-03-29'),(146,1211,200638.00,'2016-03-22','2016-03-29'),(147,1221,200638.00,'2016-02-15','2016-03-29'),(148,1221,200638.00,'2016-03-14','2016-03-29'),(149,1205,200638.00,'2016-02-01','2016-03-29'),(150,1205,200638.00,'2016-03-07','2016-03-29'),(151,1205,200638.00,'2016-03-18','2016-03-29'),(152,1329,422998.00,'2016-03-28','2016-03-29'),(153,1061,166260.00,'2016-02-01','2016-03-29'),(154,1061,166260.00,'2016-03-03','2016-03-29'),(155,1100,200638.00,'2016-02-06','2016-03-29'),(156,1100,200638.00,'2016-03-28','2016-03-29'),(157,1102,200638.00,'2016-03-18','2016-03-29'),(158,1102,200638.00,'2016-03-18','2016-03-29'),(159,1102,200638.00,'2016-03-18','2016-03-29'),(160,1238,200638.00,'2016-02-23','2016-03-29'),(161,1238,200638.00,'2016-03-28','2016-03-29'),(162,1122,200638.00,'2016-02-15','2016-03-29'),(163,1122,200638.00,'2016-03-28','2016-03-29'),(164,1077,200638.00,'2016-02-17','2016-03-29'),(165,1077,200638.00,'2016-03-19','2016-03-29'),(166,1083,200638.00,'2016-03-18','2016-03-29'),(167,1184,200638.00,'2016-02-08','2016-03-29'),(168,1184,200638.00,'2016-03-28','2016-03-29'),(169,1171,200638.00,'2016-02-19','2016-03-29'),(170,1171,200638.00,'2016-03-28','2016-03-29'),(171,1148,200638.00,'2016-02-23','2016-03-29'),(172,1148,200638.00,'2016-03-28','2016-03-29'),(173,1119,200638.00,'2016-02-01','2016-03-29'),(174,1119,200638.00,'2016-02-29','2016-03-29'),(175,1043,166260.00,'2016-02-29','2016-03-29'),(176,1043,166260.00,'2016-03-22','2016-03-29'),(177,1232,200638.00,'2016-02-29','2016-03-29'),(178,1232,200638.00,'2016-03-28','2016-03-29'),(179,1239,200638.00,'2016-03-02','2016-03-29'),(180,1239,200638.00,'2016-03-20','2016-03-29'),(181,1040,166260.00,'2016-02-15','2016-03-29'),(182,1040,166260.00,'2016-03-28','2016-03-29'),(183,1295,211499.00,'2016-02-05','2016-03-29'),(184,1295,211499.00,'2016-02-29','2016-03-29'),(185,1295,211499.00,'2016-03-22','2016-03-29'),(186,1026,169437.00,'2016-12-04','2016-03-29'),(187,1026,169437.00,'2016-03-29','2016-03-29'),(188,1140,200638.00,'2016-12-04','2016-03-29'),(189,1140,200638.00,'2016-03-29','2016-03-29'),(190,1330,1903491.00,'2016-03-28','2016-03-29'),(191,1337,211499.00,'2016-02-11','2016-03-29'),(192,1337,211499.00,'2016-03-16','2016-03-29'),(193,1281,200638.00,'2016-02-20','2016-03-29'),(194,1281,200638.00,'2016-03-17','2016-03-29'),(195,1247,200638.00,'2016-02-03','2016-03-29'),(196,1247,200638.00,'2016-03-02','2016-03-29'),(197,1303,211499.00,'2016-03-28','2016-03-29'),(198,1303,211499.00,'2016-03-28','2016-03-29'),(199,1289,422998.00,'2016-03-28','2016-03-29'),(200,1307,211499.00,'2016-02-25','2016-03-29'),(201,1307,422998.00,'2016-03-28','2016-03-29'),(202,1302,211500.00,'2016-02-17','2016-03-29'),(203,1302,211500.00,'2016-03-28','2016-03-29'),(204,1335,211499.00,'2016-01-26','2016-03-29'),(205,1335,211499.00,'2016-02-29','2016-03-29'),(206,1335,211499.00,'2016-03-28','2016-03-29'),(207,1311,211499.00,'2016-03-05','2016-03-29'),(208,1311,211499.00,'2016-03-29','2016-03-29'),(209,1328,211499.00,'2016-02-18','2016-03-29'),(210,1328,211499.00,'2016-03-16','2016-03-29'),(211,1301,211499.00,'2016-02-12','2016-03-29'),(212,1301,211499.00,'2016-03-23','2016-03-29'),(213,1091,200638.00,'2015-11-23','2016-03-29'),(214,1091,200638.00,'2016-03-07','2016-03-29'),(215,1097,200638.00,'2016-03-01','2016-03-29'),(216,1097,200638.00,'2016-03-28','2016-03-29'),(217,1306,211499.00,'2016-03-02','2016-03-29'),(218,1306,211499.00,'2016-03-02','2016-03-29'),(219,1306,211499.00,'2016-03-29','2016-03-29'),(220,1208,200638.00,'2016-03-29','2016-03-30'),(221,1016,169437.00,'2016-03-29','2016-03-30'),(222,1016,169437.00,'2016-02-10','2016-03-30'),(223,1074,166260.00,'2016-03-29','2016-03-30'),(224,1074,166260.00,'2016-02-18','2016-03-30'),(225,1204,200638.00,'2016-03-29','2016-03-30'),(226,1204,200638.00,'2016-02-16','2016-03-30'),(227,1204,200638.00,'2016-03-29','2016-03-30'),(228,1201,200638.00,'2016-02-22','2016-03-30'),(229,1201,200638.00,'2016-03-28','2016-03-30'),(230,1275,200638.00,'2016-03-29','2016-03-30'),(231,1275,100.00,'2016-03-29','2016-03-30'),(232,1081,200638.00,'2016-02-01','2016-03-31'),(233,1081,200638.00,'2016-02-26','2016-03-31'),(234,1081,200638.00,'2016-03-30','2016-03-31'),(235,1137,200638.00,'2016-02-05','2016-03-31'),(236,1137,200400.00,'2016-03-09','2016-03-31'),(237,1075,166260.00,'2016-02-09','2016-03-31'),(238,1075,166260.00,'2016-03-10','2016-03-31'),(239,1066,166260.00,'2016-03-29','2016-03-31'),(240,1022,169437.00,'2016-02-23','2016-03-31'),(241,1022,169437.00,'2016-03-28','2016-03-31'),(242,1260,200638.00,'2016-02-23','2016-03-31'),(243,1260,200638.00,'2016-03-28','2016-03-31'),(244,1331,211499.00,'2016-01-27','2016-03-31'),(245,1331,211499.00,'2016-03-01','2016-03-31'),(246,1331,211499.00,'2016-03-26','2016-03-31'),(249,1270,601914.00,'2016-03-29','2016-03-31'),(250,1033,169437.00,'2016-02-16','2016-03-31'),(251,1033,169437.00,'2016-03-16','2016-03-31'),(252,1236,200638.00,'2016-01-28','2016-03-31'),(253,1236,200638.00,'2016-02-26','2016-03-31'),(254,1236,200638.00,'2016-03-30','2016-03-31'),(255,1133,200638.00,'2016-02-17','2016-03-31'),(256,1133,802552.00,'2016-03-07','2016-03-31'),(257,1136,200638.00,'2016-01-26','2016-03-31'),(258,1136,401276.00,'2016-03-30','2016-03-31'),(259,1293,211499.00,'2015-11-12','2016-03-31'),(260,1293,211499.00,'2016-03-02','2016-03-31'),(261,1293,211499.00,'2016-03-30','2016-03-31'),(262,1320,211499.00,'2016-02-11','2016-03-31'),(263,1320,211499.00,'2016-03-08','2016-03-31'),(264,1269,200638.00,'2016-02-02','2016-03-31'),(265,1269,200638.00,'2016-02-29','2016-03-31'),(266,1269,200638.00,'2016-03-30','2016-03-31'),(267,1272,200638.00,'2016-02-29','2016-03-31'),(268,1272,200638.00,'2016-03-30','2016-03-31'),(269,1280,200638.00,'2016-02-09','2016-03-31'),(270,1280,200638.00,'2016-03-15','2016-03-31'),(271,1267,200638.00,'2016-02-17','2016-03-31'),(272,1267,601914.00,'2016-03-07','2016-03-31'),(273,1198,200638.00,'2016-03-01','2016-03-31'),(274,1198,200638.00,'2016-03-30','2016-03-31'),(275,1190,401276.00,'2016-03-28','2016-03-31'),(276,1130,200638.00,'2016-01-28','2016-03-31'),(277,1130,200638.00,'2016-03-10','2016-03-31'),(278,1212,200638.00,'2016-02-04','2016-03-31'),(279,1212,200638.00,'2016-03-08','2016-03-31'),(280,1212,200638.00,'2016-03-30','2016-03-31'),(281,1002,176025.00,'2015-11-12','2016-03-31'),(282,1002,176025.00,'2016-03-02','2016-03-31'),(283,1002,176025.00,'2016-03-30','2016-03-31'),(284,1052,166260.00,'2016-02-08','2016-03-31'),(285,1052,166260.00,'2016-03-03','2016-03-31'),(286,1052,166260.00,'2016-03-30','2016-03-31'),(287,1196,200638.00,'2016-01-29','2016-03-31'),(288,1196,200638.00,'2016-03-14','2016-03-31'),(289,1135,200638.00,'2016-03-30','2016-03-31'),(290,1119,200638.00,'2016-03-31','2016-03-31'),(291,1138,200638.00,'2016-03-31','2016-03-31'),(292,1318,211499.00,'2015-11-25','2016-03-31'),(293,1318,211500.00,'2016-02-24','2016-03-31'),(294,1318,423000.00,'2016-03-18','2016-03-31'),(295,1321,211499.00,'2016-02-08','2016-03-31'),(296,1321,211499.00,'2016-02-26','2016-03-31'),(297,1321,211499.00,'2016-03-31','2016-03-31'),(298,1187,200638.00,'2016-03-31','2016-03-31'),(299,1073,166260.00,'2016-03-01','2016-03-31'),(300,1073,166260.00,'2016-03-30','2016-03-31'),(301,1183,200638.00,'2016-02-08','2016-04-01'),(302,1183,200638.00,'2016-03-08','2016-04-01'),(303,1183,200638.00,'2016-03-31','2016-04-01'),(304,1266,200638.00,'2016-02-18','2016-04-01'),(305,1266,200700.00,'2016-03-22','2016-04-01'),(306,1277,200638.00,'2016-02-09','2016-04-01'),(307,1277,200638.00,'2016-03-02','2016-04-01'),(308,1277,200638.00,'2016-03-31','2016-04-01'),(309,1194,200638.00,'2016-02-29','2016-04-01'),(310,1194,200638.00,'2016-03-31','2016-04-01'),(311,1291,211499.00,'2016-02-05','2016-04-01'),(312,1291,211499.00,'2016-03-08','2016-04-01'),(313,1141,200638.00,'2016-02-11','2016-04-01'),(314,1141,206000.00,'2016-03-09','2016-04-01'),(315,1139,200638.00,'2016-02-10','2016-04-01'),(316,1139,230000.00,'2016-03-31','2016-04-01'),(317,1023,167437.00,'2016-03-30','2016-04-01'),(318,1017,169437.00,'2016-02-02','2016-04-01'),(319,1017,338874.00,'2016-03-22','2016-04-01'),(320,1020,169437.00,'2016-01-29','2016-04-01'),(321,1020,169437.00,'2016-02-26','2016-04-01'),(322,1020,169437.00,'2016-03-30','2016-04-01'),(323,1242,200638.00,'2016-03-01','2016-04-01'),(324,1242,200638.00,'2016-04-01','2016-04-01'),(325,1262,200638.00,'2016-02-04','2016-04-01'),(326,1262,200638.00,'2016-03-07','2016-04-01'),(327,1262,200638.00,'2016-04-01','2016-04-01'),(328,1003,176025.00,'2016-02-04','2016-04-01'),(329,1003,176025.00,'2016-03-07','2016-04-01'),(330,1003,176025.00,'2016-04-01','2016-04-01'),(331,1256,200638.00,'2015-12-01','2016-04-01'),(332,1256,200638.00,'2016-03-01','2016-04-01'),(333,1256,200638.00,'2016-03-31','2016-04-01'),(334,1051,166260.00,'2015-11-19','2016-04-01'),(335,1051,166260.00,'2016-03-09','2016-04-01'),(336,1051,166260.00,'2016-03-31','2016-04-01'),(337,1045,166260.00,'2016-02-01','2016-04-01'),(338,1045,166260.00,'2016-02-29','2016-04-01'),(339,1045,166260.00,'2016-04-01','2016-04-01'),(340,1110,200638.00,'2016-02-11','2016-04-01'),(341,1110,200638.00,'2016-04-01','2016-04-01'),(342,1048,166260.00,'2016-02-02','2016-04-01'),(343,1048,166260.00,'2016-03-02','2016-04-01'),(344,1048,166260.00,'2016-04-01','2016-04-01'),(345,1186,200638.00,'2016-02-01','2016-04-01'),(346,1186,200638.00,'2016-02-29','2016-04-01'),(347,1186,200638.00,'2016-04-01','2016-04-01'),(348,1215,200638.00,'2016-02-02','2016-04-01'),(349,1215,200638.00,'2016-03-02','2016-04-01'),(350,1215,200638.00,'2016-04-01','2016-04-01'),(351,1294,211499.00,'2016-01-26','2016-04-04'),(352,1294,211499.00,'2016-03-07','2016-04-04'),(353,1294,211499.00,'2016-04-04','2016-04-04'),(354,1271,401276.00,'2016-04-04','2016-04-04'),(355,1231,200638.00,'2016-01-20','2016-04-04'),(356,1231,200638.00,'2016-03-04','2016-04-04'),(357,1231,200638.00,'2016-04-04','2016-04-04'),(358,1088,200638.00,'2016-02-10','2016-04-04'),(359,1088,401276.00,'2016-04-04','2016-04-04'),(360,1104,401276.00,'2016-02-01','2016-04-04'),(361,1104,200638.00,'2016-04-04','2016-04-04'),(362,1200,200638.00,'2016-02-04','2016-04-04'),(363,1200,200638.00,'2016-03-03','2016-04-04'),(364,1200,200638.00,'2016-04-01','2016-04-04'),(365,1065,1662600.00,'2016-01-18','2016-04-04'),(366,1057,166260.00,'2015-11-18','2016-04-04'),(367,1057,1496340.00,'2016-02-19','2016-04-04'),(368,1124,200638.00,'2016-01-20','2016-04-04'),(369,1124,1805742.00,'2016-02-18','2016-04-04'),(370,1339,2114990.00,'2016-02-23','2016-04-04'),(371,1127,2006380.00,'2016-02-29','2016-04-04'),(373,1044,1330000.00,'2015-11-24','2016-04-04'),(374,1014,847185.00,'2015-11-23','2016-04-04'),(375,1083,200638.00,'2016-04-01','2016-04-04'),(376,1054,166260.00,'2016-02-01','2016-04-04'),(377,1054,166260.00,'2016-03-04','2016-04-04'),(378,1054,166260.00,'2016-04-04','2016-04-04'),(379,1286,211499.00,'2016-02-06','2016-04-04'),(380,1286,211499.00,'2016-02-29','2016-04-04'),(381,1286,211499.00,'2016-03-31','2016-04-04'),(382,1263,200638.00,'2016-02-04','2016-04-04'),(383,1263,200638.00,'2016-02-22','2016-04-04'),(384,1263,200638.00,'2016-04-04','2016-04-04'),(385,1338,211499.00,'2016-01-29','2016-04-04'),(386,1338,211499.00,'2016-03-07','2016-04-04'),(387,1338,211499.00,'2016-04-04','2016-04-04'),(388,1229,200638.00,'2016-02-01','2016-04-04'),(389,1229,200638.00,'2016-03-01','2016-04-04'),(390,1229,200638.00,'2016-04-01','2016-04-04'),(391,1224,200638.00,'2016-02-15','2016-04-04'),(392,1224,200638.00,'2016-04-04','2016-04-04'),(393,1234,200638.00,'2016-02-02','2016-04-04'),(394,1234,200638.00,'2016-03-07','2016-04-04'),(395,1332,422998.00,'2016-04-04','2016-04-06'),(396,1313,211499.00,'2016-02-03','2016-04-06'),(397,1313,211499.00,'2016-03-03','2016-04-06'),(398,1313,211499.00,'2016-04-04','2016-04-06'),(399,1285,211499.00,'2016-03-03','2016-04-06'),(400,1285,211499.00,'2016-04-05','2016-04-06'),(401,1245,200638.00,'2016-02-02','2016-04-06'),(402,1245,200638.00,'2016-03-01','2016-04-06'),(403,1245,200638.00,'2016-04-01','2016-04-06'),(404,1160,200638.00,'2016-02-01','2016-04-06'),(405,1160,200638.00,'2016-03-07','2016-04-06'),(406,1160,200638.00,'2016-04-05','2016-04-06'),(407,1168,200638.00,'2016-02-03','2016-04-06'),(408,1168,200638.00,'2016-03-02','2016-04-06'),(409,1168,200638.00,'2016-04-04','2016-04-06'),(410,1132,200638.00,'2016-02-04','2016-04-06'),(411,1132,200638.00,'2016-03-04','2016-04-06'),(412,1132,200638.00,'2016-04-05','2016-04-06'),(413,1142,200638.00,'2016-01-28','2016-04-06'),(414,1142,200638.00,'2016-03-01','2016-04-06'),(415,1142,200638.00,'2016-04-01','2016-04-06'),(416,1326,211499.00,'2016-02-22','2016-04-06'),(417,1326,211499.00,'2016-04-04','2016-04-06'),(418,1336,211499.00,'2016-02-05','2016-04-06'),(419,1336,211499.00,'2016-03-07','2016-04-06'),(420,1336,211499.00,'2016-04-04','2016-04-06'),(422,1292,211499.00,'2016-04-04','2016-04-06'),(423,1292,211500.00,'2016-04-04','2016-04-06'),(424,1300,211499.00,'2016-04-04','2016-04-06'),(425,1253,200638.00,'2016-04-05','2016-04-06'),(426,1278,200638.00,'2016-01-29','2016-04-06'),(427,1278,200638.00,'2016-03-01','2016-04-06'),(428,1278,200638.00,'2016-04-04','2016-04-06'),(429,1244,200638.00,'2016-02-05','2016-04-06'),(430,1244,200638.00,'2016-03-01','2016-04-06'),(431,1244,200638.00,'2016-04-04','2016-04-06'),(432,1202,200638.00,'2016-02-15','2016-04-06'),(433,1202,200638.00,'2016-03-02','2016-04-06'),(434,1202,200638.00,'2016-04-04','2016-04-06'),(435,1195,200638.00,'2016-02-09','2016-04-06'),(436,1195,200638.00,'2016-03-09','2016-04-06'),(437,1195,200638.00,'2016-04-04','2016-04-06'),(438,1175,200638.00,'2015-12-04','2016-04-06'),(439,1175,200638.00,'2016-03-04','2016-04-06'),(440,1175,200638.00,'2016-04-04','2016-04-06'),(441,1089,200638.00,'2016-02-06','2016-04-06'),(442,1089,200638.00,'2016-03-08','2016-04-06'),(443,1089,200638.00,'2016-04-06','2016-04-06'),(444,1305,211499.00,'2016-02-06','2016-04-06'),(445,1305,211499.00,'2016-03-08','2016-04-06'),(446,1305,211499.00,'2016-04-06','2016-04-06'),(447,1046,166260.00,'2016-01-29','2016-04-06'),(448,1046,166260.00,'2016-02-26','2016-04-06'),(449,1046,166260.00,'2016-04-04','2016-04-06'),(450,1159,200638.00,'2016-02-03','2016-04-06'),(451,1159,200638.00,'2016-03-03','2016-04-06'),(452,1159,200638.00,'2016-04-04','2016-04-06'),(453,1084,200638.00,'2016-02-13','2016-04-06'),(454,1084,200638.00,'2016-03-03','2016-04-06'),(455,1084,200638.00,'2016-04-05','2016-04-06'),(456,1129,200638.00,'2016-01-19','2016-04-06'),(457,1129,200638.00,'2016-03-09','2016-04-06'),(458,1129,200638.00,'2016-04-05','2016-04-06'),(459,1125,200638.00,'2016-02-05','2016-04-06'),(460,1125,200638.00,'2016-03-07','2016-04-06'),(461,1125,200638.00,'2016-04-04','2016-04-06'),(462,1047,166260.00,'2016-02-05','2016-04-06'),(463,1047,166260.00,'2016-03-04','2016-04-06'),(464,1047,166260.00,'2016-04-05','2016-04-06'),(465,1019,169437.00,'2016-02-09','2016-04-06'),(466,1019,169437.00,'2016-03-07','2016-04-06'),(467,1019,169437.00,'2016-04-04','2016-04-06'),(468,1015,169437.00,'2016-02-04','2016-04-06'),(469,1015,169437.00,'2016-03-04','2016-04-06'),(470,1015,169437.00,'2016-04-01','2016-04-06'),(471,1143,401276.00,'2016-01-18','2016-04-06'),(472,1143,200638.00,'2016-04-01','2016-04-06'),(473,1009,176025.00,'2016-02-18','2016-04-06'),(474,1009,176025.00,'2016-03-03','2016-04-06'),(475,1009,176025.00,'2016-04-04','2016-04-06'),(476,1299,211499.00,'2016-11-25','2016-04-06'),(477,1299,422998.00,'2016-04-05','2016-04-06'),(478,1233,200638.00,'2016-02-02','2016-04-06'),(479,1233,200638.00,'2016-03-01','2016-04-06'),(480,1233,200638.00,'2016-04-05','2016-04-06'),(481,1220,200638.00,'2016-02-01','2016-04-06'),(482,1220,200638.00,'2016-02-29','2016-04-06'),(483,1220,200638.00,'2016-04-01','2016-04-06'),(484,1192,200638.00,'2016-02-09','2016-04-06'),(485,1192,200638.00,'2016-03-08','2016-04-06'),(486,1192,200638.00,'2016-04-05','2016-04-06'),(487,1145,200638.00,'2016-02-02','2016-04-06'),(488,1145,200638.00,'2016-03-04','2016-04-06'),(489,1145,200638.00,'2016-04-05','2016-04-06'),(490,1112,200638.00,'2016-02-05','2016-04-06'),(491,1112,200638.00,'2016-03-04','2016-04-06'),(492,1112,200638.00,'2016-04-05','2016-04-06'),(493,1140,200638.00,'2016-04-06','2016-04-06'),(494,1026,169437.00,'2016-04-06','2016-04-06'),(495,1182,401276.00,'2016-02-23','2016-04-06'),(496,1182,401276.00,'2016-04-04','2016-04-06'),(497,1240,200638.00,'2016-02-13','2016-04-06'),(498,1240,200638.00,'2016-03-04','2016-04-06'),(499,1240,200638.00,'2016-04-04','2016-04-06'),(500,1117,200638.00,'2016-01-28','2016-04-06'),(501,1117,200638.00,'2016-03-08','2016-04-06'),(502,1117,200638.00,'2016-04-04','2016-04-06'),(503,1319,422998.00,'2016-02-11','2016-04-06'),(504,1319,211499.00,'2016-04-01','2016-04-06'),(505,1001,352050.00,'2016-02-11','2016-04-06'),(506,1001,176025.00,'2016-04-01','2016-04-06'),(507,1249,200638.00,'2016-02-10','2016-04-06'),(508,1249,200638.00,'2016-03-07','2016-04-06'),(509,1249,200638.00,'2016-04-04','2016-04-06'),(510,1068,166260.00,'2016-01-29','2016-04-06'),(511,1068,332520.00,'2016-04-01','2016-04-06'),(512,1128,200638.00,'2016-02-04','2016-04-06'),(513,1128,200638.00,'2016-03-04','2016-04-06'),(514,1128,200638.00,'2016-04-02','2016-04-06'),(515,1283,211499.00,'2016-02-06','2016-04-06'),(516,1283,211499.00,'2016-03-07','2016-04-06'),(517,1283,211499.00,'2016-04-04','2016-04-06'),(518,1268,200638.00,'2016-02-15','2016-04-06'),(519,1268,200638.00,'2016-03-02','2016-04-06'),(520,1268,200638.00,'2016-04-04','2016-04-06'),(521,1206,200638.00,'2016-02-08','2016-04-06'),(522,1206,200638.00,'2016-02-29','2016-04-06'),(523,1206,200638.00,'2016-04-04','2016-04-06'),(524,1179,200638.00,'2016-04-05','2016-04-06'),(525,1075,166260.00,'2016-04-05','2016-04-06'),(526,1029,169437.00,'2016-02-04','2016-04-06'),(527,1029,169437.00,'2016-03-04','2016-04-06'),(528,1029,169437.00,'2016-04-04','2016-04-06'),(529,1050,166260.00,'2016-02-02','2016-04-06'),(530,1050,166260.00,'2016-03-04','2016-04-06'),(531,1050,166260.00,'2016-04-04','2016-04-06'),(532,1064,166260.00,'2016-04-04','2016-04-06'),(533,1080,200638.00,'2016-02-10','2016-04-06'),(534,1080,200638.00,'2016-03-07','2016-04-06'),(535,1080,200638.00,'2016-04-04','2016-04-06'),(536,1147,200638.00,'2016-02-06','2016-04-06'),(537,1147,200638.00,'2016-03-07','2016-04-06'),(538,1147,200638.00,'2016-04-04','2016-04-06'),(539,1131,200638.00,'2016-02-08','2016-04-06'),(540,1131,200638.00,'2016-03-04','2016-04-06'),(541,1237,401276.00,'2016-02-12','2016-04-06'),(542,1237,401276.00,'2016-04-06','2016-04-06'),(543,1000,176025.00,'2016-02-02','2016-04-06'),(544,1000,176025.00,'2016-03-01','2016-04-06'),(546,1000,176050.00,'2016-04-05','2016-04-06'),(547,1274,200638.00,'2016-02-04','2016-04-06'),(548,1274,200638.00,'2016-03-08','2016-04-06'),(549,1274,200638.00,'2016-03-30','2016-04-06'),(550,1163,200638.00,'2016-02-08','2016-04-06'),(551,1163,200638.00,'2016-03-08','2016-04-06'),(552,1163,200638.00,'2016-04-06','2016-04-06'),(553,1086,200638.00,'2016-02-05','2016-04-06'),(554,1086,200638.00,'2016-03-08','2016-04-06'),(555,1086,200638.00,'2016-04-06','2016-04-06'),(556,1085,200638.00,'2016-02-05','2016-04-06'),(557,1085,200638.00,'2016-03-08','2016-04-06'),(558,1085,200638.00,'2016-04-06','2016-04-06'),(559,1151,200638.00,'2016-02-06','2016-04-07'),(560,1151,200638.00,'2016-03-08','2016-04-07'),(561,1151,200638.00,'2016-04-06','2016-04-07'),(562,1036,166260.00,'2016-04-01','2016-04-07'),(563,1078,200638.00,'2016-02-15','2016-04-07'),(564,1078,200650.00,'2016-03-02','2016-04-07'),(565,1078,200638.00,'2016-04-06','2016-04-07'),(566,1354,166260.00,'2016-04-07','2016-04-07'),(567,1223,200638.00,'2016-02-08','2016-04-07'),(568,1223,200638.00,'2016-03-05','2016-04-07'),(569,1223,200638.00,'2016-04-05','2016-04-07'),(570,1284,211499.00,'2016-02-17','2016-04-07'),(571,1284,211499.00,'2016-03-02','2016-04-07'),(572,1284,211499.00,'2016-04-05','2016-04-07'),(573,1153,200638.00,'2016-02-04','2016-04-07'),(574,1153,200638.00,'2016-03-10','2016-04-07'),(575,1153,200650.00,'2016-04-06','2016-04-07'),(576,1213,200638.00,'2016-11-30','2016-04-07'),(577,1213,200650.00,'2016-03-03','2016-04-07'),(578,1213,200650.00,'2016-04-06','2016-04-07'),(579,1023,167437.00,'2016-03-07','2016-03-18'),(580,1018,169437.00,'2016-04-06','2016-04-07'),(581,1261,200638.00,'2016-04-06','2016-04-07'),(582,1166,200638.00,'2016-02-22','2016-04-07'),(583,1166,200638.00,'2016-03-07','2016-04-07'),(584,1166,200638.00,'2016-04-06','2016-04-07'),(585,1193,200638.00,'2016-02-15','2016-04-08'),(586,1193,200638.00,'2016-03-07','2016-04-08'),(587,1193,200638.00,'2016-04-06','2016-04-08'),(588,1150,200638.00,'2016-01-22','2016-04-08'),(589,1150,200638.00,'2016-03-07','2016-04-08'),(590,1150,200638.00,'2016-04-06','2016-04-08'),(591,1072,166260.00,'2016-11-24','2016-04-08'),(592,1072,166260.00,'2016-03-02','2016-04-08'),(593,1072,166260.00,'2016-03-28','2016-04-08'),(594,1053,166260.00,'2016-02-08','2016-04-08'),(595,1053,166260.00,'2016-03-03','2016-04-08'),(596,1053,166260.00,'2016-04-06','2016-04-08'),(597,1149,200638.00,'2016-02-25','2016-04-08'),(598,1149,200638.00,'2016-04-07','2016-04-08'),(599,1118,200638.00,'2016-02-04','2016-04-08'),(600,1118,200638.00,'2016-03-08','2016-04-08'),(601,1118,200638.00,'2016-04-06','2016-04-08'),(602,1152,200638.00,'2016-04-05','2016-04-08'),(603,1226,200638.00,'2016-02-11','2016-04-08'),(604,1226,200638.00,'2016-03-08','2016-04-08'),(605,1226,200638.00,'2016-04-07','2016-04-08'),(606,1228,200638.00,'2016-04-07','2016-04-08'),(607,1243,601914.00,'2016-02-09','2016-04-08'),(608,1013,176025.00,'2016-04-08','2016-04-08'),(609,1095,200638.00,'2016-02-05','2016-04-08'),(610,1095,200638.00,'2016-03-07','2016-04-08'),(611,1095,200638.00,'2016-04-06','2016-04-08'),(612,1096,200638.00,'2016-02-05','2016-04-08'),(613,1096,200638.00,'2016-03-07','2016-04-08'),(614,1096,200638.00,'2016-04-06','2016-04-08'),(615,1087,200638.00,'2016-02-10','2016-04-08'),(616,1087,200638.00,'2016-03-04','2016-04-08'),(617,1087,200638.00,'2016-04-07','2016-04-08'),(618,1157,200638.00,'2016-04-07','2016-04-08'),(619,1265,200638.00,'2016-04-07','2016-04-08'),(620,1282,200638.00,'2016-04-07','2016-04-08'),(622,1310,422998.00,'2016-01-19','2016-04-08'),(623,1310,211499.00,'2016-04-01','2016-04-08'),(624,1308,211499.00,'2016-02-03','2016-04-08'),(625,1308,211499.00,'2016-03-05','2016-04-08'),(626,1308,211499.00,'2016-04-07','2016-04-08'),(627,1314,211499.00,'2016-02-05','2016-04-08'),(628,1314,211499.00,'2016-02-29','2016-04-08'),(629,1314,211499.00,'2016-04-05','2016-04-08'),(630,1349,211499.00,'2016-02-02','2016-04-08'),(631,1349,211499.00,'2016-03-03','2016-04-08'),(632,1349,211499.00,'2016-04-07','2016-04-08'),(633,1343,211499.00,'2016-02-29','2016-04-08'),(634,1343,211499.00,'2016-04-04','2016-04-08'),(635,1320,211499.00,'2016-04-07','2016-04-08'),(636,1035,169437.00,'2015-11-23','2016-04-08'),(637,1035,169437.00,'2016-03-07','2016-04-08'),(638,1035,169437.00,'2016-04-08','2016-04-08'),(639,1061,166260.00,'2016-04-08','2016-04-08'),(640,1058,166260.00,'2016-02-02','2016-04-08'),(641,1058,166260.00,'2016-03-05','2016-04-08'),(642,1058,166260.00,'2016-04-07','2016-04-08'),(643,1222,200638.00,'2016-03-04','2016-04-08'),(644,1222,200638.00,'2016-04-07','2016-04-08'),(645,1042,166260.00,'2016-02-03','2016-04-11'),(646,1042,166260.00,'2016-03-09','2016-04-11'),(647,1042,166260.00,'2016-04-08','2016-04-11'),(648,1011,176025.00,'2016-04-07','2016-04-11'),(649,1108,200638.00,'2016-04-06','2016-04-11'),(650,1070,166260.00,'2016-02-15','2016-04-11'),(651,1070,332520.00,'2016-03-09','2016-04-11'),(652,1144,200638.00,'2016-02-10','2016-04-11'),(653,1144,200638.00,'2016-03-07','2016-04-11'),(654,1144,200638.00,'2016-04-07','2016-04-11'),(655,1203,200638.00,'2016-04-08','2016-04-11'),(656,1131,200638.00,'2016-04-11','2016-04-11'),(657,1139,200638.00,'2016-04-08','2016-04-11'),(658,1257,200638.00,'2016-02-02','2016-04-11'),(659,1257,200638.00,'2016-03-02','2016-04-11'),(660,1257,200638.00,'2016-04-06','2016-04-11'),(661,1024,169437.00,'2016-04-08','2016-04-11'),(663,1197,401276.00,'2016-02-29','2016-04-11'),(664,1197,200638.00,'2016-04-08','2016-04-11'),(665,1126,200638.00,'2016-01-29','2016-04-11'),(666,1126,200638.00,'2016-03-04','2016-04-11'),(667,1126,200638.00,'2016-04-08','2016-04-11'),(668,1038,166260.00,'2016-02-17','2016-04-11'),(669,1038,166260.00,'2016-03-08','2016-04-11'),(670,1038,166260.00,'2016-04-08','2016-04-11'),(671,1201,200638.00,'2016-04-08','2016-04-11'),(672,1176,200638.00,'2016-02-17','2016-04-11'),(673,1176,200638.00,'2016-03-08','2016-04-11'),(674,1176,200638.00,'2016-04-08','2016-04-11'),(675,1007,352050.00,'2016-03-08','2016-04-11'),(676,1007,176025.00,'2016-04-11','2016-04-11'),(677,1008,176025.00,'2016-04-11','2016-04-11'),(678,1347,211499.00,'2016-11-27','2016-04-11'),(679,1347,211499.00,'2016-02-26','2016-04-11'),(680,1347,211499.00,'2016-04-11','2016-04-11'),(681,1171,200638.00,'2016-04-11','2016-04-11'),(682,1248,200638.00,'2016-02-04','2016-04-11'),(683,1248,200638.00,'2016-03-08','2016-04-11'),(684,1248,200638.00,'2016-04-11','2016-04-11'),(685,1251,200638.00,'2016-02-03','2016-04-11'),(686,1251,200638.00,'2016-03-07','2016-04-11'),(687,1251,200638.00,'2016-04-06','2016-04-11'),(688,1059,166260.00,'2016-04-08','2016-04-11'),(689,1055,166260.00,'2016-04-08','2016-04-11'),(690,1325,211499.00,'2016-04-11','2016-04-11'),(691,1037,166260.00,'2016-04-11','2016-04-12'),(692,1111,200638.00,'2016-02-01','2016-04-12'),(693,1111,200638.00,'2016-03-01','2016-04-12'),(694,1111,200638.00,'2016-04-04','2016-04-12'),(695,1116,200638.00,'2016-04-07','2016-04-12'),(696,1141,206000.00,'2016-04-11','2016-04-12'),(697,1247,200638.00,'2016-04-04','2016-04-12'),(698,1255,1203828.00,'2016-02-15','2016-04-12'),(699,1273,200638.00,'2016-02-04','2016-04-12'),(700,1273,200638.00,'2016-03-09','2016-04-12'),(701,1273,200638.00,'2016-04-11','2016-04-12'),(702,1337,211499.00,'2016-04-11','2016-04-12'),(703,1217,200638.00,'2016-02-09','2016-04-12'),(704,1217,200638.00,'2016-03-07','2016-04-12'),(705,1217,200638.00,'2016-04-11','2016-04-12'),(706,1137,200000.00,'2016-04-09','2016-04-12'),(707,1093,200638.00,'2016-02-05','2016-04-12'),(708,1093,200638.00,'2016-03-07','2016-04-12'),(709,1093,200638.00,'2016-04-07','2016-04-12'),(710,1155,200638.00,'2016-02-03','2016-04-12'),(711,1155,200638.00,'2016-03-08','2016-04-12'),(712,1196,200638.00,'2016-04-11','2016-04-12'),(713,1227,200638.00,'2016-04-11','2016-04-12'),(714,1028,169437.00,'2016-02-08','2016-04-12'),(715,1028,169437.00,'2016-03-07','2016-04-12'),(716,1028,169437.00,'2016-04-08','2016-04-12'),(717,1076,200638.00,'2016-04-11','2016-04-12'),(718,1097,200638.00,'2016-04-11','2016-04-12'),(719,1091,200638.00,'2016-04-07','2016-04-12'),(720,1082,200638.00,'2016-04-11','2016-04-12'),(721,1106,601914.00,'2016-02-19','2016-04-12'),(723,1106,601914.00,'2016-04-12','2016-04-12'),(724,1030,169437.00,'2016-02-17','2016-04-12'),(725,1030,338874.00,'2016-04-12','2016-04-12'),(726,1210,401276.00,'2016-03-02','2016-04-13'),(727,1210,200638.00,'2016-04-12','2016-04-13'),(728,1317,211499.00,'2016-02-02','2016-04-13'),(729,1317,211499.00,'2016-03-07','2016-04-13'),(730,1317,211499.00,'2016-04-05','2016-04-13'),(731,1174,200638.00,'2016-02-02','2016-04-13'),(732,1174,200638.00,'2016-03-07','2016-04-13'),(733,1174,200638.00,'2016-04-05','2016-04-13'),(734,1165,200638.00,'2015-12-16','2016-04-13'),(735,1165,200638.00,'2016-03-01','2016-04-13'),(736,1165,200638.00,'2016-04-13','2016-04-13'),(737,1169,200638.00,'2016-03-03','2016-04-18'),(739,1034,169437.00,'2016-04-12','2016-04-14'),(740,1130,200638.00,'2016-04-12','2016-04-14'),(741,1181,401276.00,'2016-04-12','2016-04-14'),(742,1323,211499.00,'2016-04-13','2016-04-14'),(743,1167,200638.00,'2016-02-08','2016-04-14'),(744,1167,200638.00,'2016-03-05','2016-04-14'),(745,1167,200638.00,'2016-04-05','2016-04-14'),(746,1340,211499.00,'2016-02-09','2016-04-14'),(747,1340,211499.00,'2016-03-09','2016-04-14'),(748,1340,211499.00,'2016-04-12','2016-04-14'),(749,1214,200638.00,'2016-04-12','2016-04-14'),(750,1041,166260.00,'2016-02-05','2016-04-14'),(751,1041,166260.00,'2016-03-07','2016-04-14'),(752,1041,166260.00,'2016-04-07','2016-04-14'),(753,1040,166260.00,'2016-04-13','2016-04-14'),(754,1122,200638.00,'2016-04-11','2016-04-14'),(755,1079,200638.00,'2016-02-17','2016-04-14'),(756,1079,200638.00,'2016-03-07','2016-04-14'),(757,1079,200638.00,'2016-04-13','2016-04-14'),(758,1121,200638.00,'2016-02-17','2016-04-14'),(759,1121,200638.00,'2016-03-14','2016-04-14'),(760,1121,200638.00,'2016-04-13','2016-04-14'),(761,1216,401276.00,'2016-02-15','2016-04-15'),(762,1216,401276.00,'2016-04-14','2016-04-15'),(763,1191,200638.00,'2016-02-09','2016-04-15'),(764,1191,200650.00,'2016-03-09','2016-04-15'),(765,1191,200650.00,'2016-04-12','2016-04-15'),(766,1290,211499.00,'2016-02-04','2016-04-15'),(767,1290,211499.00,'2016-03-10','2016-04-15'),(768,1290,211499.00,'2016-04-13','2016-04-15'),(769,1230,401276.00,'2016-04-14','2016-04-15'),(770,1280,200638.00,'2016-04-13','2016-04-15'),(771,1234,200638.00,'2016-04-12','2016-04-15'),(772,1110,200638.00,'2016-04-18','2016-04-18'),(773,1006,176025.00,'2016-02-17','2016-04-18'),(774,1006,176025.00,'2016-04-18','2016-04-18'),(775,1156,200638.00,'2016-02-17','2016-04-18'),(776,1156,200638.00,'2016-04-18','2016-04-18'),(777,1289,211499.00,'2016-04-13','2016-04-18'),(778,1312,211499.00,'2016-01-30','2016-04-18'),(779,1312,211499.00,'2016-03-07','2016-04-18'),(780,1312,211499.00,'2016-04-12','2016-04-18'),(781,1302,211500.00,'2016-04-18','2016-04-18'),(782,1218,200600.00,'2016-04-14','2016-04-18'),(783,1250,401276.00,'2016-02-29','2016-04-18'),(784,1250,200638.00,'2016-04-16','2016-04-18'),(785,1219,601914.00,'2016-04-18','2016-04-18'),(786,1173,200638.00,'2016-02-15','2016-04-18'),(787,1173,200638.00,'2016-04-11','2016-04-18'),(788,1173,200700.00,'2016-04-12','2016-04-18'),(789,1049,166260.00,'2016-04-14','2016-04-18'),(790,1135,210000.00,'2016-04-13','2016-04-18'),(791,1169,200638.00,'2016-03-23','2016-04-18'),(792,1169,200638.00,'2016-04-12','2016-04-18'),(793,1304,211499.00,'2016-02-03','2016-04-19'),(794,1304,211499.00,'2016-03-03','2016-04-19'),(795,1304,211499.00,'2016-04-18','2016-04-19'),(796,1221,200638.00,'2016-04-18','2016-04-19'),(797,1109,200638.00,'2016-04-19','2016-04-19'),(798,1342,211499.00,'2016-04-18','2016-04-19'),(799,1074,166260.00,'2016-04-18','2016-04-19'),(800,1064,166260.00,'2016-04-18','2016-04-19'),(801,1301,211499.00,'2016-04-18','2016-04-19'),(802,1099,401276.00,'2016-03-08','2016-04-19'),(803,1099,200638.00,'2016-04-19','2016-04-19'),(804,1123,200638.00,'2016-02-17','2016-04-19'),(805,1123,200638.00,'2016-03-08','2016-04-19'),(806,1123,200638.00,'2016-04-19','2016-04-19'),(807,1353,211499.00,'2016-03-02','2016-04-19'),(808,1353,211499.00,'2016-04-07','2016-04-19'),(809,1353,211499.00,'2016-04-19','2016-04-19'),(810,1266,200700.00,'2016-04-16','2016-04-20'),(811,1164,200638.00,'2016-02-29','2016-04-20'),(812,1164,200638.00,'2016-04-18','2016-04-20');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `CalcBalance` AFTER INSERT ON `transaction` FOR EACH ROW BEGIN
UPDATE staccount
SET balance = balance - NEW.amount
WHERE aid = NEW.aid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `CalcCorrection` AFTER UPDATE ON `transaction` FOR EACH ROW BEGIN

UPDATE staccount
SET balance = balance + OLD.amount
WHERE aid = OLD.aid;

UPDATE staccount
SET balance = balance - NEW.amount
WHERE aid = NEW.aid;

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `CalcRefund` AFTER DELETE ON `transaction` FOR EACH ROW BEGIN
UPDATE staccount
SET balance = balance + OLD.amount
WHERE aid = OLD.aid;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `total-matricula-sin-pension-de-matricula`
--

/*!50001 DROP TABLE IF EXISTS `total-matricula-sin-pension-de-matricula`*/;
/*!50001 DROP VIEW IF EXISTS `total-matricula-sin-pension-de-matricula`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total-matricula-sin-pension-de-matricula` AS select `matricula-cost`.`matid` AS `matid`,`matricula-cost`.`year` AS `year`,`matricula-cost`.`proc-informes-academicos` AS `proc-informes-academicos`,`matricula-cost`.`trabajo-pedagogico` AS `trabajo-pedagogico`,`matricula-cost`.`aulas-especializadas` AS `aulas-especializadas`,`matricula-cost`.`proyecto-escuelas-culturales-y-deportivas` AS `proyecto-escuelas-culturales-y-deportivas`,`matricula-cost`.`carnet-estudiantil-talonario-pupitre-y-manual-de-convivencia` AS `carnet-estudiantil-talonario-pupitre-y-manual-de-convivencia`,`matricula-cost`.`bienestar-estudiantil` AS `bienestar-estudiantil`,`matricula-cost`.`mantenimiento-de-equipos` AS `mantenimiento-de-equipos`,`matricula-cost`.`accion-social` AS `accion-social`,`matricula-cost`.`bibliobanco` AS `bibliobanco`,`matricula-cost`.`asociacion-padres` AS `asociacion-padres`,`matricula-cost`.`inscripcion-pruebas-estado` AS `inscripcion-pruebas-estado`,`matricula-cost`.`seguro-estudiantil` AS `seguro-estudiantil`,(((((((((((`matricula-cost`.`proc-informes-academicos` + `matricula-cost`.`trabajo-pedagogico`) + `matricula-cost`.`aulas-especializadas`) + `matricula-cost`.`proyecto-escuelas-culturales-y-deportivas`) + `matricula-cost`.`carnet-estudiantil-talonario-pupitre-y-manual-de-convivencia`) + `matricula-cost`.`bienestar-estudiantil`) + `matricula-cost`.`mantenimiento-de-equipos`) + `matricula-cost`.`accion-social`) + `matricula-cost`.`bibliobanco`) + `matricula-cost`.`asociacion-padres`) + `matricula-cost`.`inscripcion-pruebas-estado`) + `matricula-cost`.`seguro-estudiantil`) AS `total` from `matricula-cost` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-20  9:21:01
