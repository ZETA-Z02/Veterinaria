/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.6.2-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: veterinaria
-- ------------------------------------------------------
-- Server version	11.6.2-MariaDB-log

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
  PRIMARY KEY (`idcita`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citas`
--

LOCK TABLES `citas` WRITE;
/*!40000 ALTER TABLE `citas` DISABLE KEYS */;
INSERT INTO `citas` VALUES
(1,11,11,'2024-11-01','09:00:00',1),
(2,12,12,'2024-11-01','10:00:00',1),
(3,14,14,'2024-11-01','11:00:00',1),
(4,11,14,'2024-11-01','12:00:00',1),
(5,11,14,'2024-11-02','09:00:00',1),
(6,11,14,'2024-11-02','10:00:00',1),
(7,11,15,'2024-11-02','11:00:00',1),
(8,11,16,'2024-11-02','12:00:00',1),
(9,12,11,'2024-11-03','09:00:00',1),
(10,10,10,'2024-11-03','10:00:00',1),
(11,11,11,'2024-11-03','11:00:00',1),
(12,12,12,'2024-11-03','12:00:00',1),
(13,13,13,'2024-11-04','09:00:00',1),
(14,14,14,'2024-11-04','10:00:00',1),
(15,15,15,'2024-11-04','11:00:00',1),
(16,16,16,'2024-11-04','12:00:00',1),
(17,17,17,'2024-11-05','09:00:00',1),
(18,18,18,'2024-11-05','10:00:00',1),
(19,19,19,'2024-11-05','11:00:00',1),
(20,20,20,'2024-11-05','12:00:00',1),
(21,1,21,'2024-11-06','09:00:00',1),
(22,2,22,'2024-11-06','10:00:00',1),
(23,2,23,'2024-11-06','11:00:00',1),
(24,2,24,'2024-11-06','12:00:00',1),
(25,2,25,'2024-11-07','09:00:00',1),
(26,2,26,'2024-11-07','10:00:00',1),
(27,2,27,'2024-11-07','11:00:00',1),
(28,2,28,'2024-11-07','12:00:00',1),
(29,11,29,'2024-11-08','09:00:00',1),
(30,10,30,'2024-11-08','10:00:00',1),
(31,11,31,'2024-11-08','11:00:00',1),
(32,12,32,'2024-11-08','12:00:00',1),
(33,13,33,'2024-11-09','09:00:00',1),
(34,14,34,'2024-11-09','10:00:00',1),
(35,15,35,'2024-11-09','11:00:00',1),
(36,16,36,'2024-11-09','12:00:00',1),
(37,17,37,'2024-11-10','09:00:00',1),
(38,18,38,'2024-11-10','10:00:00',1),
(39,19,39,'2024-11-10','11:00:00',1),
(40,20,40,'2024-11-10','12:00:00',1),
(41,11,28,'2024-11-11','09:00:00',1),
(42,13,26,'2024-11-11','10:00:00',1),
(43,13,29,'2024-11-11','11:00:00',1),
(44,14,39,'2024-11-11','12:00:00',1),
(45,13,38,'2024-11-12','09:00:00',1),
(46,13,37,'2024-11-12','10:00:00',1),
(47,13,41,'2024-11-12','11:00:00',1),
(48,13,39,'2024-11-12','12:00:00',1),
(49,13,32,'2024-11-13','09:00:00',1),
(50,10,11,'2024-11-13','10:00:00',1),
(51,11,1,'2024-11-13','11:00:00',1),
(52,12,2,'2024-11-13','12:00:00',1),
(53,13,9,'2024-11-14','09:00:00',1),
(54,14,18,'2024-11-14','10:00:00',1),
(55,15,19,'2024-11-14','11:00:00',1),
(56,16,6,'2024-11-14','12:00:00',1),
(57,17,7,'2024-11-15','09:00:00',1),
(58,18,8,'2024-11-15','10:00:00',1),
(59,19,9,'2024-11-15','11:00:00',1),
(60,20,10,'2024-11-15','12:00:00',1),
(61,1,11,'2024-11-16','09:00:00',1),
(62,13,12,'2024-11-16','10:00:00',1),
(63,12,13,'2024-11-16','11:00:00',1),
(64,12,14,'2024-11-16','12:00:00',1),
(65,11,15,'2024-11-17','09:00:00',1),
(66,12,16,'2024-11-17','10:00:00',1),
(67,11,17,'2024-11-17','11:00:00',1),
(68,12,18,'2024-11-17','12:00:00',1),
(69,12,19,'2024-11-18','09:00:00',1),
(70,10,20,'2024-11-18','10:00:00',1),
(71,11,21,'2024-11-18','11:00:00',1),
(72,12,22,'2024-11-18','12:00:00',1),
(73,13,23,'2024-11-19','09:00:00',1),
(74,14,24,'2024-11-19','10:00:00',1),
(75,15,25,'2024-11-19','11:00:00',1),
(76,16,26,'2024-11-19','12:00:00',1),
(77,17,27,'2024-11-20','09:00:00',1),
(78,18,28,'2024-11-20','10:00:00',1),
(79,19,29,'2024-11-20','11:00:00',1),
(80,20,30,'2024-11-20','12:00:00',1),
(81,11,31,'2024-11-21','09:00:00',1),
(82,12,32,'2024-11-21','10:00:00',1),
(83,13,33,'2024-11-21','11:00:00',1),
(84,14,34,'2024-11-21','12:00:00',1),
(85,15,35,'2024-11-22','09:00:00',1),
(86,11,36,'2024-11-22','10:00:00',1),
(87,11,37,'2024-11-22','11:00:00',1),
(88,11,38,'2024-11-22','12:00:00',1),
(89,10,39,'2024-11-23','09:00:00',1),
(90,10,11,'2024-11-23','10:00:00',1),
(91,11,22,'2024-11-23','11:00:00',1),
(92,12,33,'2024-11-23','12:00:00',1),
(93,13,22,'2024-11-24','09:00:00',1),
(94,14,33,'2024-11-24','10:00:00',1),
(95,15,22,'2024-11-24','11:00:00',1),
(96,16,11,'2024-11-24','12:00:00',1),
(97,17,41,'2024-11-25','09:00:00',1),
(98,18,23,'2024-11-25','10:00:00',1),
(99,19,34,'2024-11-25','11:00:00',1),
(100,20,40,'2024-11-25','12:00:00',1),
(101,1,11,'2024-11-26','09:00:00',1),
(102,11,21,'2024-11-26','10:00:00',1),
(103,11,37,'2024-11-26','11:00:00',1),
(104,11,11,'2024-11-26','12:00:00',1),
(105,11,25,'2024-11-27','09:00:00',0),
(106,11,29,'2024-11-27','10:00:00',0),
(107,11,7,'2024-11-27','11:00:00',0),
(108,11,8,'2024-11-27','12:00:00',0),
(109,11,9,'2024-11-28','09:00:00',0),
(110,10,10,'2024-11-28','10:00:00',0),
(111,11,11,'2024-11-28','11:00:00',0),
(112,12,12,'2024-11-28','12:00:00',0),
(113,13,13,'2024-11-29','09:00:00',0),
(114,14,14,'2024-11-29','10:00:00',0),
(115,15,15,'2024-11-29','11:00:00',0),
(116,16,16,'2024-11-29','12:00:00',0),
(117,17,17,'2024-11-30','09:00:00',0),
(118,18,18,'2024-11-30','10:00:00',0),
(119,19,19,'2024-11-30','11:00:00',0),
(120,20,20,'2024-11-30','12:00:00',0),
(121,11,1,'2024-11-19','10:11:00',1),
(123,11,2,'2024-11-19','14:11:00',1),
(124,13,6,'2024-11-19','10:00:00',1),
(125,14,7,'2024-11-19','10:00:00',1),
(126,14,8,'2024-11-19','10:00:00',1),
(127,14,9,'2024-10-18','10:00:00',1),
(128,14,10,'2024-10-26','10:00:00',1),
(129,15,11,'2024-10-30','10:00:00',1),
(130,15,12,'2024-10-30','10:00:00',1),
(131,15,13,'2024-10-30','10:00:00',1),
(132,15,14,'2024-10-23','10:00:00',1),
(133,11,16,'2024-10-01','10:00:00',1),
(134,11,17,'2024-10-01','10:00:00',1),
(135,11,18,'2024-10-02','10:00:00',1),
(136,11,19,'2024-10-02','10:00:00',1),
(137,11,20,'2024-10-02','10:00:00',1),
(138,11,21,'2024-10-03','10:00:00',1),
(139,11,22,'2024-10-03','10:00:00',1),
(140,11,23,'2024-10-03','10:00:00',1),
(150,11,24,'2024-10-03','10:00:00',1),
(151,11,26,'2024-10-05','10:00:00',1),
(152,11,27,'2024-10-05','10:00:00',1),
(153,11,28,'2024-10-05','10:00:00',1),
(154,11,29,'2024-10-05','10:00:00',1),
(155,11,30,'2024-10-06','15:00:00',1),
(156,11,31,'2024-10-07','10:00:00',1),
(157,11,32,'2024-10-31','15:00:00',1),
(158,9,35,'2024-11-01','14:00:00',1),
(159,11,36,'2024-11-01','14:00:00',1),
(160,10,37,'2024-11-07','10:00:00',1),
(161,1,38,'2024-11-01','15:00:00',1),
(162,1,39,'2024-11-01','10:00:00',1),
(163,11,40,'2024-11-03','15:00:00',1),
(164,12,41,'2024-11-20','15:00:00',1),
(165,13,42,'2024-11-20','11:00:00',1),
(166,14,43,'2024-11-20','10:00:00',1),
(167,15,40,'2024-11-20','14:00:00',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
(9,'ROBERT ANTHONY','ROJAS GARCIA','73267453','932648362'),
(10,'ROBERT ANTHONY','ROJAS GARCIA','73267459','932648362'),
(11,'OMAR LUIS','ZANABRIA TICONA','75936417','982379846'),
(12,'RENZO PAOLO','MORENO HUAMAN','74236548','567365464'),
(13,'YOBANI LYSBETH','MEGO ROMERO','73328648','983946598'),
(14,'ANA MARIA','HAYAY ESPINOZA','71235432','972873648'),
(15,'JANZEN FAUSTO','TRUJILLO VALVERDE','70837643','937498687'),
(16,'Luis','Mendoza','72562314','987654321'),
(17,'Carla','Gómez','74258693','964123789'),
(18,'Jorge','Pérez','71859634','951357462'),
(19,'Ana','Torres','73641265','987456321'),
(20,'Jorge','Pérez','71859623','951357462'),
(21,'Ana','Torres','73641265','987456321');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
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
(21,19,'zz','zz','zz'),
(22,18,'zz','zz','zz'),
(23,17,'zz','zz','zz'),
(24,16,'zz','zz','zz'),
(26,18,'ll','ll','l'),
(27,17,'ll','ll','l'),
(28,16,'ll','ll','l'),
(29,20,'ll','ll','l'),
(30,19,'pp','pp','pp'),
(31,18,'qq','qq','qq'),
(32,17,'jer','jer','jer'),
(35,9,'josue','josue','jouse'),
(36,16,'zuru','zuru','zuru'),
(37,10,'','',''),
(38,1,'zeta','zeta','zeta'),
(39,1,'zeta','zeta','zeta'),
(40,11,'lolo','lolo','lolo'),
(41,12,'manolo','manolo','manolo'),
(42,13,'yoba','yoba','yoba'),
(43,14,'ana','ana','ana'),
(44,15,'fausto','fausto','fausto');
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
(25,'ROSA ANGELICA','TORRES PEZO','72635634','963875687','jr no se'),
(28,'CAMILA CIELO','TURPO MAURICIO','73572154','964387584','jr tupac yupanqui');
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

-- Dump completed on 2024-11-29 11:24:30
