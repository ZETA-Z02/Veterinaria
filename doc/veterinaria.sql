/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.5.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: veterinaria
-- ------------------------------------------------------
-- Server version	11.5.2-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `citas`
--

DROP TABLE IF EXISTS `citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `citas` (
  `idcita` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) DEFAULT NULL,
  `idmascota` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`idcita`),
  KEY `idcliente` (`idcliente`),
  KEY `idmascota` (`idmascota`),
  CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`),
  CONSTRAINT `citas_ibfk_2` FOREIGN KEY (`idmascota`) REFERENCES `mascota` (`idmascota`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
INSERT INTO `citas` VALUES
(1,1,1,'2024-10-25','10:11:00',1),
(2,2,2,'2024-10-24','14:11:00',1),
(3,1,6,'2024-10-31','10:00:00',0),
(4,1,7,'2024-10-19','10:00:00',0),
(5,1,8,'2024-10-19','10:00:00',0),
(6,1,9,'2024-10-18','10:00:00',0),
(7,1,10,'2024-10-26','10:00:00',0),
(8,1,11,'2024-10-30','10:00:00',0),
(9,3,12,'2024-10-30','10:00:00',0),
(10,3,13,'2024-10-30','10:00:00',0),
(11,3,14,'2024-10-23','10:00:00',0),
(12,1,16,'2024-10-01','10:00:00',0),
(13,1,17,'2024-10-01','10:00:00',0),
(14,3,18,'2024-10-02','10:00:00',0),
(15,3,19,'2024-10-02','10:00:00',0),
(16,3,20,'2024-10-02','10:00:00',0),
(17,1,21,'2024-10-03','10:00:00',0),
(18,1,22,'2024-10-03','10:00:00',0),
(19,1,23,'2024-10-03','10:00:00',0),
(20,1,24,'2024-10-03','10:00:00',0),
(21,1,26,'2024-10-05','10:00:00',0),
(22,1,27,'2024-10-05','10:00:00',0),
(23,1,28,'2024-10-05','10:00:00',0),
(24,1,29,'2024-10-05','10:00:00',0),
(25,1,30,'2024-10-06','15:00:00',0),
(26,1,31,'2024-10-07','10:00:00',0),
(27,1,32,'2024-10-31','15:00:00',0),
(28,9,35,'2024-11-01','14:00:00',0);
/*!40000 ALTER TABLE `citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES
(1,'JERSSON PELAYO','QUISPE APAZA','72535244','998777712'),
(2,'JERSSON PELAYO','QUISPE APAZA','72535244','998777712'),
(3,'JOHAN VICTOR','QUISPE APAZA','72535242','998777732'),
(9,'ROBERT ANTHONY','ROJAS GARCIA','73267453','932648362');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `idlogin` int(11) NOT NULL AUTO_INCREMENT,
  `idpersonal` int(11) NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `password` varchar(300) NOT NULL,
  `nivel` tinyint(4) DEFAULT 1,
  `estado` tinyint(4) DEFAULT 1,
  PRIMARY KEY (`idlogin`),
  KEY `idpersonal` (`idpersonal`),
  CONSTRAINT `login_ibfk_1` FOREIGN KEY (`idpersonal`) REFERENCES `personal` (`idpersonal`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES
(1,2,'zeta','zeta',1,1),
(2,3,'yojan','yojan',0,0),
(3,4,'','',NULL,NULL),
(4,25,'maria','maria',0,1),
(5,28,'camila','camila',0,1);
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascota`
--

DROP TABLE IF EXISTS `mascota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mascota` (
  `idmascota` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `especie` varchar(50) DEFAULT NULL,
  `raza` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idmascota`),
  KEY `idcliente` (`idcliente`),
  CONSTRAINT `mascota_ibfk_1` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascota`
--

LOCK TABLES `mascota` WRITE;
/*!40000 ALTER TABLE `mascota` DISABLE KEYS */;
INSERT INTO `mascota` VALUES
(1,1,'firulais','perro','pastor'),
(2,2,'fido','perro','lazy'),
(6,1,'zeta','zeta','zeta'),
(7,1,'zeta','zeta','zeta'),
(8,1,'zeta','zeta','zeta'),
(9,1,'zeta1','zeta1','zeta1'),
(10,1,'jersson','jersson','jersson'),
(11,1,'jersson','jersson','jersson'),
(12,3,'johan','johan','johan'),
(13,3,'johan','johan','johan'),
(14,3,'zeta','zetra','zeta'),
(16,1,'percy','percy','percy'),
(17,1,'percy','percy','percy'),
(18,3,'no se ','nose ','nose '),
(19,3,'no se ','nose ','nose '),
(20,3,'no se ','nose ','nose '),
(21,1,'zz','zz','zz'),
(22,1,'zz','zz','zz'),
(23,1,'zz','zz','zz'),
(24,1,'zz','zz','zz'),
(26,1,'ll','ll','l'),
(27,1,'ll','ll','l'),
(28,1,'ll','ll','l'),
(29,1,'ll','ll','l'),
(30,1,'pp','pp','pp'),
(31,1,'qq','qq','qq'),
(32,1,'jer','jer','jer'),
(35,9,'josue','josue','jouse');
/*!40000 ALTER TABLE `mascota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal`
--

DROP TABLE IF EXISTS `personal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal` (
  `idpersonal` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idpersonal`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal`
--

LOCK TABLES `personal` WRITE;
/*!40000 ALTER TABLE `personal` DISABLE KEYS */;
INSERT INTO `personal` VALUES
(2,'JERSSON PELAYO','QUISPE APAZA','72535244','998777712','JR. Tupac Yupanqui'),
(3,'YOJAN VICTOR','QUISPE APAZA','72535242','932187631','barrio miraflores'),
(4,'','','','',''),
(25,'ROSA ANGELICA','TORRES PEZO','72635634','963875687','jr no se'),
(28,'CAMILA CIELO','TURPO MAURICIO','73572154','964387584','jr nice');
/*!40000 ALTER TABLE `personal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2024-10-26 20:06:19
