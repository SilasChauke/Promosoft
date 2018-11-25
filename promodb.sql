-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: promodb
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulos` (
  `Id_Art` int(255) NOT NULL AUTO_INCREMENT,
  `Nom_Art` varchar(255) NOT NULL,
  `Id_Proy` int(255) DEFAULT NULL,
  `Nom_Proy` varchar(255) DEFAULT NULL,
  `Des_Proy` varchar(500) DEFAULT NULL,
  `Tec_Proy` varchar(500) DEFAULT NULL,
  `Nom_Usu` varchar(255) DEFAULT NULL,
  `Id_Usu` int(255) DEFAULT NULL,
  `Func_Proy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id_Art`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formularios`
--

DROP TABLE IF EXISTS `formularios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formularios` (
  `Id_Form` int(255) NOT NULL AUTO_INCREMENT,
  `Nom_Form` varchar(255) NOT NULL,
  `Nom_Usu` varchar(255) DEFAULT NULL,
  `CURP_Usu` varchar(255) DEFAULT NULL,
  `Nom_Proy` varchar(255) DEFAULT NULL,
  `Des_Proy` varchar(500) DEFAULT NULL,
  `Tec_Proy` varchar(500) DEFAULT NULL,
  `Time_Proy` varchar(255) DEFAULT NULL,
  `Func_Proy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id_Form`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formularios`
--

LOCK TABLES `formularios` WRITE;
/*!40000 ALTER TABLE `formularios` DISABLE KEYS */;
/*!40000 ALTER TABLE `formularios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proyectos`
--

DROP TABLE IF EXISTS `proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proyectos` (
  `Id_Proy` int(255) NOT NULL AUTO_INCREMENT,
  `Nom_Proy` varchar(255) NOT NULL,
  `Id_Usu` int(255) NOT NULL,
  `Id_Form` int(255) NOT NULL,
  `Id_Art` int(255) NOT NULL,
  PRIMARY KEY (`Id_Proy`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proyectos`
--

LOCK TABLES `proyectos` WRITE;
/*!40000 ALTER TABLE `proyectos` DISABLE KEYS */;
INSERT INTO `proyectos` VALUES (1,'Hilfe',2,1,1),(2,'Promosoft',3,2,2);
/*!40000 ALTER TABLE `proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolusuario`
--

DROP TABLE IF EXISTS `rolusuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rolusuario` (
  `Id_Rol` int(255) NOT NULL AUTO_INCREMENT,
  `Rol_Usu` varchar(255) NOT NULL,
  PRIMARY KEY (`Id_Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolusuario`
--

LOCK TABLES `rolusuario` WRITE;
/*!40000 ALTER TABLE `rolusuario` DISABLE KEYS */;
INSERT INTO `rolusuario` VALUES (1,'Administrador'),(2,'Profesor'),(3,'Alumno');
/*!40000 ALTER TABLE `rolusuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `Id_Usu` int(11) NOT NULL AUTO_INCREMENT,
  `Nom_Usu` varchar(255) NOT NULL,
  `Id_Rol` int(255) NOT NULL,
  `CURP_Usu` varchar(255) NOT NULL,
  `proy_usu` int(11) DEFAULT NULL,
  `Mail_usu` varbinary(255) NOT NULL,
  `pass_usu` varbinary(300) DEFAULT NULL,
  PRIMARY KEY (`Id_Usu`),
  UNIQUE KEY `Id_Usu` (`Id_Usu`),
  UNIQUE KEY `Nom_Usu` (`Nom_Usu`),
  UNIQUE KEY `Mail_usu` (`Mail_usu`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (2,'Alberto',3,'COOA010712HDFVSLA5',NULL,'~\�\�8ͻ\�ؠM*�w','\�t5\�6D�\�z6�nBS�'),(3,'asd',3,'asd',NULL,'Mu?Z\��\�F\Z\�','Ry�5\�j\�mI@Bӟ'),(4,'el',2,'nibba',NULL,'V�G�n\�\r�U\r |k�','\�t5\�6D�\�z6�nBS�'),(5,'Daniel Hernandez',1,'asdf',NULL,'�{�b�\�=�\�m7\�\�By','�@\�O\�hHcHR޽'),(8,'Daniela Hernandez',1,'XSXSXSXSXSXS',NULL,'�\��y��H�s\�\�@','Ê\�&��W\�b�v'),(9,'Woody Perez',2,'CASD12341AHDFGadkas',NULL,'\�\�\�\�={5\"?\�$�m\�','Ê\�&��W\�b�v'),(11,'Camara',1,'Crack',NULL,'�q/l��T0��,\�\�B','}�L�&;\�c~�J��Q'),(12,'a',1,'a',NULL,'[:x��\�=�\�\�F�ѳw','}�L�&;\�c~�J��Q'),(13,'as',1,'as',NULL,'��o\�05���B׎\�','}�L�&;\�c~�J��Q'),(14,'Hola',1,'Como',NULL,'\�\r�N�\\�\�p\�g�%','��o\�05���B׎\�'),(16,'caca',1,'a',NULL,'}�L�&;\�c~�J��Q','}�L�&;\�c~�J��Q'),(19,'asdffff',1,'uwu',NULL,'?�֖֞\���hu+V�','DV���Ҕ�\�\��[�L1'),(24,'Raul Osorio',1,'DAb123',NULL,'\Zn�\�c\�\\\"gd�]g\��','�\�j\�J\0\�&r�D�~\�a'),(25,'sara',1,'carpenter',NULL,'���s��L\Z\�#�Ws\��','i \�ȗEk�\�.�Gmh{'),(29,'Fernando Garcia',1,'AAAAAAAAAAS',NULL,'i\��l�\�ג�\�l�:�!X��FՓE��\�','J�2������%|)\�K�');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-23 10:22:49
