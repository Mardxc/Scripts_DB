CREATE DATABASE  IF NOT EXISTS `barandilla` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `barandilla`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: barandilla
-- ------------------------------------------------------
-- Server version	5.5.24-log

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
-- Table structure for table `bas_barrios`
--

DROP TABLE IF EXISTS `bas_barrios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_barrios` (
  `id_barrio` int(11) NOT NULL AUTO_INCREMENT,
  `barrio` varchar(30) NOT NULL,
  `id_colonia` int(11) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  PRIMARY KEY (`id_barrio`),
  KEY `barrio_municipio_idx` (`id_municipio`),
  CONSTRAINT `barrio_municipio` FOREIGN KEY (`id_municipio`) REFERENCES `gen_municipio` (`id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_barrios`
--

LOCK TABLES `bas_barrios` WRITE;
/*!40000 ALTER TABLE `bas_barrios` DISABLE KEYS */;
INSERT INTO `bas_barrios` VALUES (1,'78',1,1);
/*!40000 ALTER TABLE `bas_barrios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_colonia`
--

DROP TABLE IF EXISTS `bas_colonia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_colonia` (
  `id_colonia` int(11) NOT NULL AUTO_INCREMENT,
  `colonia` varchar(45) NOT NULL,
  PRIMARY KEY (`id_colonia`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_colonia`
--

LOCK TABLES `bas_colonia` WRITE;
/*!40000 ALTER TABLE `bas_colonia` DISABLE KEYS */;
INSERT INTO `bas_colonia` VALUES (1,'CENTRO'),(2,'NORTE');
/*!40000 ALTER TABLE `bas_colonia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_corporacion`
--

DROP TABLE IF EXISTS `bas_corporacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_corporacion` (
  `id_corporacion` int(11) NOT NULL AUTO_INCREMENT,
  `corporacion` varchar(30) NOT NULL,
  `descripcion` varchar(30) NOT NULL,
  PRIMARY KEY (`id_corporacion`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_corporacion`
--

LOCK TABLES `bas_corporacion` WRITE;
/*!40000 ALTER TABLE `bas_corporacion` DISABLE KEYS */;
INSERT INTO `bas_corporacion` VALUES (1,'SEGURIDAD PUBLICA','Alto mando'),(2,'SEGURIDAD MUNICIAL','Oficial Primero');
/*!40000 ALTER TABLE `bas_corporacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_motivos`
--

DROP TABLE IF EXISTS `bas_motivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_motivos` (
  `id_motivo` int(11) NOT NULL AUTO_INCREMENT,
  `motivo` varchar(20) NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  `gravedad` varchar(20) NOT NULL,
  PRIMARY KEY (`id_motivo`),
  UNIQUE KEY `id_motivo_UNIQUE` (`id_motivo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_motivos`
--

LOCK TABLES `bas_motivos` WRITE;
/*!40000 ALTER TABLE `bas_motivos` DISABLE KEYS */;
INSERT INTO `bas_motivos` VALUES (1,'ROBO','Robo a mano Armada','ALTA'),(2,'ESTADO DE EBRIEDAD','desorden publico','MENOR');
/*!40000 ALTER TABLE `bas_motivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_oficiales`
--

DROP TABLE IF EXISTS `bas_oficiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_oficiales` (
  `id_oficial` int(11) NOT NULL AUTO_INCREMENT,
  `grado` varchar(15) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `ape_pat` varchar(20) NOT NULL,
  `ape_mat` varchar(20) NOT NULL,
  `telefono` int(11) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `estado_civil` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`id_oficial`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_oficiales`
--

LOCK TABLES `bas_oficiales` WRITE;
/*!40000 ALTER TABLE `bas_oficiales` DISABLE KEYS */;
INSERT INTO `bas_oficiales` VALUES (1,'Bachillerato','Juan','Torres','Torres',2147483647,'masculino','1998-01-10','soltero','juantorres@hotmail.c'),(2,'secundaria','Jesus','Alvarado','Rangel',2147483647,'masculino','1993-10-05','casado','JesusAlvarado@hotmai'),(3,'Bachillerato','Melissa','Haipen','Hernandez',2147483647,'femenino','1990-01-03','soltera','melissaHaipen@hotmai'),(4,'Bachillerato','Jazmin Yanet','Perez','Jimenez',2147483645,'femenino','1995-06-12','soltera','JazminPerez@hotmail.'),(6,'Bachillerato','Nadia','Gonzales','Vidales',2147483647,'femenino','1990-06-20','casada','NadiaGon@gmail.com'),(7,'Secundaria','Amber Nicol','Montemayor','Rincon',2147483647,'Femenino','1985-03-09','soltera','amber.niki@gmail.com'),(8,'Secundaria','Francisco','Hernandez','Martinez',2147483647,'Masculino','1970-02-26','casado','fran.hdz@gmail.com');
/*!40000 ALTER TABLE `bas_oficiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bas_zona`
--

DROP TABLE IF EXISTS `bas_zona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bas_zona` (
  `id_zona` int(11) NOT NULL AUTO_INCREMENT,
  `zona` varchar(15) NOT NULL,
  PRIMARY KEY (`id_zona`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bas_zona`
--

LOCK TABLES `bas_zona` WRITE;
/*!40000 ALTER TABLE `bas_zona` DISABLE KEYS */;
INSERT INTO `bas_zona` VALUES (1,'MEDIA'),(2,'HUASTECA');
/*!40000 ALTER TABLE `bas_zona` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cruge_authassignment`
--

DROP TABLE IF EXISTS `cruge_authassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cruge_authassignment` (
  `userid` int(11) NOT NULL,
  `bizrule` text,
  `data` text,
  `itemname` varchar(64) NOT NULL,
  PRIMARY KEY (`userid`,`itemname`),
  KEY `fk_cruge_authassignment_cruge_authitem1` (`itemname`),
  KEY `fk_cruge_authassignment_user` (`userid`),
  CONSTRAINT `fk_cruge_authassignment_cruge_authitem1` FOREIGN KEY (`itemname`) REFERENCES `cruge_authitem` (`name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cruge_authassignment_user` FOREIGN KEY (`userid`) REFERENCES `cruge_user` (`iduser`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cruge_authassignment`
--

LOCK TABLES `cruge_authassignment` WRITE;
/*!40000 ALTER TABLE `cruge_authassignment` DISABLE KEYS */;
/*!40000 ALTER TABLE `cruge_authassignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cruge_authitem`
--

DROP TABLE IF EXISTS `cruge_authitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cruge_authitem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cruge_authitem`
--

LOCK TABLES `cruge_authitem` WRITE;
/*!40000 ALTER TABLE `cruge_authitem` DISABLE KEYS */;
INSERT INTO `cruge_authitem` VALUES ('action_basCorporacion_admin',0,'',NULL,'N;'),('action_basZona_admin',0,'',NULL,'N;'),('action_basZona_create',0,'',NULL,'N;'),('action_detAlias_AddAlias',0,'',NULL,'N;'),('action_detalias_admin',0,'',NULL,'N;'),('action_detAlias_listadoPersona',0,'',NULL,'N;'),('action_detDetencionesOficiales_admin',0,'',NULL,'N;'),('action_detDetenciones_admin',0,'',NULL,'N;'),('action_detDetenciones_guardarDetenido',0,'',NULL,'N;'),('action_detDetenciones_listadoColonia',0,'',NULL,'N;'),('action_detDetenciones_registrar',0,'',NULL,'N;'),('action_detDetenciones_registrar2',0,'',NULL,'N;'),('action_detMotivos_AddMotivo',0,'',NULL,'N;'),('action_reporte_admin',0,'',NULL,'N;'),('action_reporte_printList',0,'',NULL,'N;');
/*!40000 ALTER TABLE `cruge_authitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cruge_authitemchild`
--

DROP TABLE IF EXISTS `cruge_authitemchild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cruge_authitemchild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `crugeauthitemchild_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `cruge_authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `crugeauthitemchild_ibfk_2` FOREIGN KEY (`child`) REFERENCES `cruge_authitem` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cruge_authitemchild`
--

LOCK TABLES `cruge_authitemchild` WRITE;
/*!40000 ALTER TABLE `cruge_authitemchild` DISABLE KEYS */;
/*!40000 ALTER TABLE `cruge_authitemchild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cruge_field`
--

DROP TABLE IF EXISTS `cruge_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cruge_field` (
  `idfield` int(11) NOT NULL AUTO_INCREMENT,
  `fieldname` varchar(20) NOT NULL,
  `longname` varchar(50) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `required` int(11) DEFAULT '0',
  `fieldtype` int(11) DEFAULT '0',
  `fieldsize` int(11) DEFAULT '20',
  `maxlength` int(11) DEFAULT '45',
  `showinreports` int(11) DEFAULT '0',
  `useregexp` varchar(512) DEFAULT NULL,
  `useregexpmsg` varchar(512) DEFAULT NULL,
  `predetvalue` mediumblob,
  PRIMARY KEY (`idfield`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cruge_field`
--

LOCK TABLES `cruge_field` WRITE;
/*!40000 ALTER TABLE `cruge_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `cruge_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cruge_fieldvalue`
--

DROP TABLE IF EXISTS `cruge_fieldvalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cruge_fieldvalue` (
  `idfieldvalue` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `idfield` int(11) NOT NULL,
  `value` blob,
  PRIMARY KEY (`idfieldvalue`),
  KEY `fk_cruge_fieldvalue_cruge_user1` (`iduser`),
  KEY `fk_cruge_fieldvalue_cruge_field1` (`idfield`),
  CONSTRAINT `fk_cruge_fieldvalue_cruge_field1` FOREIGN KEY (`idfield`) REFERENCES `cruge_field` (`idfield`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_cruge_fieldvalue_cruge_user1` FOREIGN KEY (`iduser`) REFERENCES `cruge_user` (`iduser`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cruge_fieldvalue`
--

LOCK TABLES `cruge_fieldvalue` WRITE;
/*!40000 ALTER TABLE `cruge_fieldvalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `cruge_fieldvalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cruge_session`
--

DROP TABLE IF EXISTS `cruge_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cruge_session` (
  `idsession` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `created` bigint(30) DEFAULT NULL,
  `expire` bigint(30) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `ipaddress` varchar(45) DEFAULT NULL,
  `usagecount` int(11) DEFAULT '0',
  `lastusage` bigint(30) DEFAULT NULL,
  `logoutdate` bigint(30) DEFAULT NULL,
  `ipaddressout` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsession`),
  KEY `crugesession_iduser` (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cruge_session`
--

LOCK TABLES `cruge_session` WRITE;
/*!40000 ALTER TABLE `cruge_session` DISABLE KEYS */;
INSERT INTO `cruge_session` VALUES (1,1,1512706334,1512708134,1,'::1',1,1512706334,NULL,NULL),(2,1,1512751690,1512753490,0,'::1',1,1512751690,NULL,NULL),(3,1,1512753783,1512755583,1,'::1',1,1512753783,NULL,NULL),(4,1,1512849597,1512851397,0,'::1',1,1512849597,NULL,NULL),(5,1,1512852431,1512854231,0,'::1',1,1512852431,NULL,NULL),(6,1,1512854488,1512856288,0,'::1',1,1512854488,NULL,NULL),(7,1,1512946311,1512948111,0,'::1',1,1512946311,NULL,NULL),(8,1,1513018021,1513019821,0,'::1',1,1513018021,NULL,NULL);
/*!40000 ALTER TABLE `cruge_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cruge_system`
--

DROP TABLE IF EXISTS `cruge_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cruge_system` (
  `idsystem` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `largename` varchar(45) DEFAULT NULL,
  `sessionmaxdurationmins` int(11) DEFAULT '30',
  `sessionmaxsameipconnections` int(11) DEFAULT '10',
  `sessionreusesessions` int(11) DEFAULT '1' COMMENT '1yes 0no',
  `sessionmaxsessionsperday` int(11) DEFAULT '-1',
  `sessionmaxsessionsperuser` int(11) DEFAULT '-1',
  `systemnonewsessions` int(11) DEFAULT '0' COMMENT '1yes 0no',
  `systemdown` int(11) DEFAULT '0',
  `registerusingcaptcha` int(11) DEFAULT '0',
  `registerusingterms` int(11) DEFAULT '0',
  `terms` blob,
  `registerusingactivation` int(11) DEFAULT '1',
  `defaultroleforregistration` varchar(64) DEFAULT NULL,
  `registerusingtermslabel` varchar(100) DEFAULT NULL,
  `registrationonlogin` int(11) DEFAULT '1',
  PRIMARY KEY (`idsystem`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cruge_system`
--

LOCK TABLES `cruge_system` WRITE;
/*!40000 ALTER TABLE `cruge_system` DISABLE KEYS */;
INSERT INTO `cruge_system` VALUES (1,'default',NULL,30,10,1,-1,-1,0,0,0,0,'',0,'','',1);
/*!40000 ALTER TABLE `cruge_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cruge_user`
--

DROP TABLE IF EXISTS `cruge_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cruge_user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `regdate` bigint(30) DEFAULT NULL,
  `actdate` bigint(30) DEFAULT NULL,
  `logondate` bigint(30) DEFAULT NULL,
  `username` varchar(64) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL COMMENT 'Hashed password',
  `authkey` varchar(100) DEFAULT NULL COMMENT 'llave de autentificacion',
  `state` int(11) DEFAULT '0',
  `totalsessioncounter` int(11) DEFAULT '0',
  `currentsessioncounter` int(11) DEFAULT '0',
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cruge_user`
--

LOCK TABLES `cruge_user` WRITE;
/*!40000 ALTER TABLE `cruge_user` DISABLE KEYS */;
INSERT INTO `cruge_user` VALUES (1,NULL,NULL,1513018021,'admin','admin@tucorreo.com','admin',NULL,1,0,0),(2,NULL,NULL,NULL,'invitado','invitado','nopassword',NULL,1,0,0);
/*!40000 ALTER TABLE `cruge_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `det_alias`
--

DROP TABLE IF EXISTS `det_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `det_alias` (
  `id_det_alias` int(11) NOT NULL AUTO_INCREMENT,
  `id_persona` int(11) NOT NULL,
  `alias` varchar(45) NOT NULL,
  PRIMARY KEY (`id_det_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det_alias`
--

LOCK TABLES `det_alias` WRITE;
/*!40000 ALTER TABLE `det_alias` DISABLE KEYS */;
INSERT INTO `det_alias` VALUES (1,7,'ARIEL'),(2,7,'TUNAS'),(3,7,'otro'),(4,2,'aa'),(5,2,'aa');
/*!40000 ALTER TABLE `det_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `det_bandas`
--

DROP TABLE IF EXISTS `det_bandas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `det_bandas` (
  `id_bandas` int(11) NOT NULL AUTO_INCREMENT,
  `banda` varchar(30) NOT NULL,
  `colonia` varchar(20) NOT NULL,
  PRIMARY KEY (`id_bandas`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det_bandas`
--

LOCK TABLES `det_bandas` WRITE;
/*!40000 ALTER TABLE `det_bandas` DISABLE KEYS */;
INSERT INTO `det_bandas` VALUES (1,'NINGUNA','85'),(2,'VATOS LOCOS','1');
/*!40000 ALTER TABLE `det_bandas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `det_canalizaciones`
--

DROP TABLE IF EXISTS `det_canalizaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `det_canalizaciones` (
  `id_canalizacion` int(11) NOT NULL AUTO_INCREMENT,
  `juez_calificador` bit(1) DEFAULT NULL,
  `fuero_comun` bit(1) DEFAULT NULL,
  `transito_municipal` bit(1) DEFAULT NULL,
  `tutelar_menores` bit(1) DEFAULT NULL,
  `migracion` bit(1) DEFAULT NULL,
  `otro` varchar(45) DEFAULT NULL,
  `mixta` bit(1) DEFAULT NULL,
  `fuero_federal` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id_canalizacion`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det_canalizaciones`
--

LOCK TABLES `det_canalizaciones` WRITE;
/*!40000 ALTER TABLE `det_canalizaciones` DISABLE KEYS */;
INSERT INTO `det_canalizaciones` VALUES (1,'\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'','',NULL,'','','','',''),(4,'','\0',NULL,'\0','\0','asd','\0','\0'),(5,'\0','\0',NULL,'','\0','','\0',''),(6,'\0','\0',NULL,'','\0','','\0',''),(7,'\0','\0',NULL,'','\0','','\0',''),(8,'\0','\0',NULL,'','\0','','\0',''),(9,'\0','\0',NULL,'','\0','','\0',''),(10,'','\0',NULL,'\0','\0','AS','\0','\0'),(11,'','\0',NULL,'\0','\0','AS','\0','\0'),(12,'','\0',NULL,'\0','\0','AS','\0','\0');
/*!40000 ALTER TABLE `det_canalizaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `det_condiciones_fisicas`
--

DROP TABLE IF EXISTS `det_condiciones_fisicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `det_condiciones_fisicas` (
  `id_condicion` int(11) NOT NULL AUTO_INCREMENT,
  `condicion` varchar(20) NOT NULL,
  PRIMARY KEY (`id_condicion`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det_condiciones_fisicas`
--

LOCK TABLES `det_condiciones_fisicas` WRITE;
/*!40000 ALTER TABLE `det_condiciones_fisicas` DISABLE KEYS */;
INSERT INTO `det_condiciones_fisicas` VALUES (1,'INTOXICADO'),(2,'ESTADO DE EBRIEDAD'),(3,'NORMAL');
/*!40000 ALTER TABLE `det_condiciones_fisicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `det_detenciones`
--

DROP TABLE IF EXISTS `det_detenciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `det_detenciones` (
  `id_detencion` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `modus_operandi` varchar(30) DEFAULT NULL,
  `bienes_afectados` varchar(100) DEFAULT NULL,
  `monto_aproximado_afectacion` decimal(8,2) DEFAULT NULL,
  `detenido_en` varchar(30) DEFAULT NULL,
  `ocupacion` varchar(20) DEFAULT NULL,
  `id_condicion` int(11) DEFAULT NULL,
  `id_identificacion` int(11) DEFAULT '0',
  `id_banda` int(11) DEFAULT '0',
  `id_persona` int(11) DEFAULT NULL,
  `id_dinero` int(11) DEFAULT NULL,
  `id_objetos_porta` int(11) DEFAULT NULL,
  `id_canalizacion` int(11) DEFAULT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  `id_corporacion` int(11) DEFAULT NULL,
  `id_lugar` int(11) DEFAULT NULL,
  `id_zona` int(11) DEFAULT NULL,
  `hora` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_detencion`),
  KEY `detenciones_condicion_idx` (`id_condicion`),
  KEY `detenciones_identificacion_idx` (`id_identificacion`),
  KEY `detenciones_dinero_idx` (`id_dinero`),
  KEY `detenciones_objetos_idx` (`id_objetos_porta`),
  KEY `detenciones_canalizacion_idx` (`id_canalizacion`),
  KEY `detenciones_municipio_idx` (`id_municipio`),
  KEY `detenciones_corporacion_idx` (`id_corporacion`),
  KEY `detenciones_lugar_idx` (`id_lugar`),
  KEY `detenciones_zona_idx` (`id_zona`),
  CONSTRAINT `detenciones_canalizacion` FOREIGN KEY (`id_canalizacion`) REFERENCES `det_canalizaciones` (`id_canalizacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `detenciones_corporacion` FOREIGN KEY (`id_corporacion`) REFERENCES `bas_corporacion` (`id_corporacion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `detenciones_dinero` FOREIGN KEY (`id_dinero`) REFERENCES `det_dinero` (`id_dinero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `detenciones_identificacion` FOREIGN KEY (`id_identificacion`) REFERENCES `det_identificacion` (`id_identificaciones`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `detenciones_lugar` FOREIGN KEY (`id_lugar`) REFERENCES `det_lugar_aseguramiento` (`id_lugar`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `detenciones_municipio` FOREIGN KEY (`id_municipio`) REFERENCES `gen_municipio` (`id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `detenciones_objetos` FOREIGN KEY (`id_objetos_porta`) REFERENCES `det_objetos_porta` (`id_objetos_porta`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `detenciones_zona` FOREIGN KEY (`id_zona`) REFERENCES `bas_zona` (`id_zona`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `detencion_condicion` FOREIGN KEY (`id_condicion`) REFERENCES `det_condiciones_fisicas` (`id_condicion`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det_detenciones`
--

LOCK TABLES `det_detenciones` WRITE;
/*!40000 ALTER TABLE `det_detenciones` DISABLE KEYS */;
INSERT INTO `det_detenciones` VALUES (1,'2017-12-09',NULL,NULL,NULL,'RECORRIDO','ASD',1,1,1,1,NULL,7,5,1,1,37,1,'16:16'),(2,'2017-12-09',NULL,NULL,NULL,'RECORRIDO','ASD',1,1,2,2,NULL,8,6,1,1,38,1,'16:16'),(3,'2017-12-09',NULL,NULL,NULL,'RECORRIDO','ASD',1,1,1,3,NULL,9,7,1,1,39,1,'16:16'),(4,'2017-12-09',NULL,NULL,NULL,'RECORRIDO','ASD',1,1,2,4,NULL,10,8,1,1,40,1,'16:16'),(5,'2017-12-09',NULL,NULL,NULL,'RECORRIDO','ASD',1,1,1,5,NULL,11,9,1,1,41,1,'16:16'),(7,'0000-00-00','  asd','asd',0.00,'RECORRIDO','ASD',2,1,2,7,NULL,13,11,NULL,2,43,1,'16:37'),(8,'2017-12-09',NULL,NULL,NULL,'RECORRIDO','ASD',2,1,1,8,NULL,14,12,NULL,2,44,1,'16:37');
/*!40000 ALTER TABLE `det_detenciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `det_detenciones_afectado`
--

DROP TABLE IF EXISTS `det_detenciones_afectado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `det_detenciones_afectado` (
  `id_det_afectado` int(11) NOT NULL AUTO_INCREMENT,
  `id_detencion` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_domicilio` int(11) NOT NULL,
  PRIMARY KEY (`id_det_afectado`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det_detenciones_afectado`
--

LOCK TABLES `det_detenciones_afectado` WRITE;
/*!40000 ALTER TABLE `det_detenciones_afectado` DISABLE KEYS */;
INSERT INTO `det_detenciones_afectado` VALUES (1,7,8,7);
/*!40000 ALTER TABLE `det_detenciones_afectado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `det_detenciones_oficiales`
--

DROP TABLE IF EXISTS `det_detenciones_oficiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `det_detenciones_oficiales` (
  `id_det_oficiales` int(11) NOT NULL AUTO_INCREMENT,
  `responsable` varchar(30) NOT NULL,
  `id_oficial` int(11) NOT NULL,
  `id_detencion` int(11) NOT NULL,
  PRIMARY KEY (`id_det_oficiales`),
  KEY `det_oficiales_oficial_idx` (`id_oficial`),
  CONSTRAINT `det_oficiales_oficial` FOREIGN KEY (`id_oficial`) REFERENCES `bas_oficiales` (`id_oficial`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det_detenciones_oficiales`
--

LOCK TABLES `det_detenciones_oficiales` WRITE;
/*!40000 ALTER TABLE `det_detenciones_oficiales` DISABLE KEYS */;
/*!40000 ALTER TABLE `det_detenciones_oficiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `det_dinero`
--

DROP TABLE IF EXISTS `det_dinero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `det_dinero` (
  `id_dinero` int(11) NOT NULL AUTO_INCREMENT,
  `billetes` bit(1) DEFAULT NULL,
  `monedas` bit(1) DEFAULT NULL,
  `dolares` bit(1) DEFAULT NULL,
  `otros` bit(1) DEFAULT NULL,
  `total` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id_dinero`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det_dinero`
--

LOCK TABLES `det_dinero` WRITE;
/*!40000 ALTER TABLE `det_dinero` DISABLE KEYS */;
INSERT INTO `det_dinero` VALUES (1,'','','','',1200.00);
/*!40000 ALTER TABLE `det_dinero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `det_identificacion`
--

DROP TABLE IF EXISTS `det_identificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `det_identificacion` (
  `id_identificaciones` int(11) NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(20) NOT NULL,
  PRIMARY KEY (`id_identificaciones`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det_identificacion`
--

LOCK TABLES `det_identificacion` WRITE;
/*!40000 ALTER TABLE `det_identificacion` DISABLE KEYS */;
INSERT INTO `det_identificacion` VALUES (1,'INE'),(2,'Cartilla');
/*!40000 ALTER TABLE `det_identificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `det_lugar_aseguramiento`
--

DROP TABLE IF EXISTS `det_lugar_aseguramiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `det_lugar_aseguramiento` (
  `id_lugar` int(11) NOT NULL AUTO_INCREMENT,
  `id_colonia` int(11) DEFAULT NULL,
  `calle` varchar(30) DEFAULT NULL,
  `num_int` int(11) DEFAULT NULL,
  `num_ext` int(11) DEFAULT NULL,
  `entre_calle` varchar(30) DEFAULT NULL,
  `y_la_calle` varchar(30) DEFAULT NULL,
  `a_la_altura` varchar(30) DEFAULT NULL,
  `id_barrio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_lugar`),
  KEY `lugar_barrio_idx` (`id_barrio`),
  CONSTRAINT `lugar_barrio` FOREIGN KEY (`id_barrio`) REFERENCES `bas_barrios` (`id_barrio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det_lugar_aseguramiento`
--

LOCK TABLES `det_lugar_aseguramiento` WRITE;
/*!40000 ALTER TABLE `det_lugar_aseguramiento` DISABLE KEYS */;
INSERT INTO `det_lugar_aseguramiento` VALUES (1,0,'aldama',12,1,'jimenez','abasolo','morelos',NULL),(2,0,'asd',NULL,NULL,'asd1','asd','asd',NULL),(3,0,'asd',NULL,NULL,'asd1','asd','asd',NULL),(4,0,'asd',NULL,NULL,'asd1','asd','asd',NULL),(5,0,'asd',NULL,NULL,'asd','asd','asd',NULL),(6,0,'asd',NULL,NULL,'asd','asd','asd',NULL),(7,0,'asd',NULL,NULL,'asd','asd','asd',NULL),(8,0,'asd',NULL,NULL,'asd','asd','asd',NULL),(9,0,'asd',NULL,NULL,'asd','asd','asd',NULL),(10,0,'asd',NULL,NULL,'asd','asd','asd',NULL),(11,0,'asd',NULL,NULL,'asd','asd','asd',NULL),(12,0,'asd',NULL,NULL,'asd','asd','asd',NULL),(13,0,'asd',NULL,NULL,'asd','asd','asd',NULL),(14,0,'',NULL,NULL,'','','',NULL),(15,0,'',NULL,NULL,'','','',NULL),(16,0,'',NULL,NULL,'','','',NULL),(17,0,'',NULL,NULL,'','','',NULL),(18,0,'',NULL,NULL,'','','',NULL),(19,0,'',NULL,NULL,'','','',NULL),(20,0,'adfa',NULL,NULL,'asfda','asfda','asfas',NULL),(21,0,'adfa',NULL,NULL,'asfda','asfda','asfas',NULL),(22,NULL,'Porfirtio',NULL,NULL,'Aldama','Calle','Alv',NULL),(23,0,'adfa',NULL,NULL,'asfda','asfda','asfas',NULL),(24,0,'adfa',NULL,NULL,'asfda','asfda','asfas',NULL),(25,0,'qwe',NULL,NULL,'qwe','qwe','qwe',NULL),(26,0,'GAMA',NULL,NULL,'ESCANDON','REYES','CENTRO',NULL),(27,0,'GAMA',NULL,NULL,'ESCANDON','REYES','CENTRO',NULL),(28,1,'Porfirtio',NULL,NULL,'Aldama','Calle','Alv',NULL),(29,1,'Porfirtio',NULL,NULL,'Aldama','Calle','Alv',NULL),(30,1,'Porfirtio',NULL,NULL,'Aldama','Calle','Alv',NULL),(31,1,'Porfirtio',NULL,NULL,'Aldama','Calle','Alv',NULL),(32,1,'Porfirtio',NULL,NULL,'Aldama','Calle','Alv',NULL),(33,1,'Porfirtio',NULL,NULL,'Aldama','Calle','Alv',NULL),(34,1,'Porfirtio',NULL,NULL,'Aldama','Calle','Alv',NULL),(35,1,'asd',NULL,NULL,'asd','as','as',NULL),(36,1,'asd',NULL,NULL,'asd','as','as',NULL),(37,1,'ASD',NULL,NULL,'ASDAS','ASD','ASD',NULL),(38,1,'ASD',NULL,NULL,'ASDAS','ASD','ASD',NULL),(39,1,'ASD',NULL,NULL,'ASDAS','ASD','ASD',NULL),(40,1,'ASD',NULL,NULL,'ASDAS','ASD','ASD',NULL),(41,1,'ASD',NULL,NULL,'ASDAS','ASD','ASD',NULL),(42,2,'ASDF',NULL,NULL,'AS','SAD','ASD',NULL),(43,2,'ASDF',NULL,NULL,'AS','SAD','ASD',NULL),(44,NULL,'ASDF',NULL,NULL,'AS','SAD','ASD',NULL);
/*!40000 ALTER TABLE `det_lugar_aseguramiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `det_motivos`
--

DROP TABLE IF EXISTS `det_motivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `det_motivos` (
  `id_det_motivos` int(11) NOT NULL AUTO_INCREMENT,
  `id_motivo` int(11) DEFAULT NULL,
  `id_detencion` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_det_motivos`),
  KEY `motivo_detmotivo_idx` (`id_motivo`),
  CONSTRAINT `motivo_detmotivo` FOREIGN KEY (`id_motivo`) REFERENCES `bas_motivos` (`id_motivo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det_motivos`
--

LOCK TABLES `det_motivos` WRITE;
/*!40000 ALTER TABLE `det_motivos` DISABLE KEYS */;
INSERT INTO `det_motivos` VALUES (1,1,7),(2,1,7),(3,2,7);
/*!40000 ALTER TABLE `det_motivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `det_objetos`
--

DROP TABLE IF EXISTS `det_objetos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `det_objetos` (
  `id_objeto` int(11) NOT NULL AUTO_INCREMENT,
  `objeto` varchar(15) NOT NULL,
  `caracteristicas` varchar(30) NOT NULL,
  `id_detencion` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  PRIMARY KEY (`id_objeto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det_objetos`
--

LOCK TABLES `det_objetos` WRITE;
/*!40000 ALTER TABLE `det_objetos` DISABLE KEYS */;
INSERT INTO `det_objetos` VALUES (1,'bici','rodada 20 color gris',0,0),(2,'radio','chevrolet mod 1999 color gris',0,0),(3,'','',0,0);
/*!40000 ALTER TABLE `det_objetos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `det_objetos_porta`
--

DROP TABLE IF EXISTS `det_objetos_porta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `det_objetos_porta` (
  `id_objetos_porta` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(1000) DEFAULT NULL,
  `camisa` bit(1) DEFAULT NULL,
  `pantalon` bit(1) DEFAULT NULL,
  `playera` bit(1) DEFAULT NULL,
  `chamarra` bit(1) DEFAULT NULL,
  `tenis` bit(1) DEFAULT NULL,
  `zapatos` bit(1) DEFAULT NULL,
  `botas` bit(1) DEFAULT NULL,
  `sombrero` bit(1) DEFAULT NULL,
  `cadena` bit(1) DEFAULT NULL,
  `pulsera` bit(1) DEFAULT NULL,
  `gorra` bit(1) DEFAULT NULL,
  `cinturon` bit(1) DEFAULT NULL,
  `cartera` bit(1) DEFAULT NULL,
  `lentes` bit(1) DEFAULT NULL,
  `otros` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id_objetos_porta`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `det_objetos_porta`
--

LOCK TABLES `det_objetos_porta` WRITE;
/*!40000 ALTER TABLE `det_objetos_porta` DISABLE KEYS */;
INSERT INTO `det_objetos_porta` VALUES (1,'camisa rosa','','',NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL),(2,'','','','','','','','','','','','','','','',''),(3,'','','','','','','','','','','','','','','',''),(4,'','','','','','','','','','','','','','','',''),(5,'','','','','','','','','','','','','','','',''),(6,'asdas','','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0',''),(7,'','\0','\0','\0','\0','','','','\0','\0','\0','\0','\0','\0','\0','\0'),(8,'','\0','\0','\0','\0','','','','\0','\0','\0','\0','\0','\0','\0','\0'),(9,'','\0','\0','\0','\0','','','','\0','\0','\0','\0','\0','\0','\0','\0'),(10,'','\0','\0','\0','\0','','','','\0','\0','\0','\0','\0','\0','\0','\0'),(11,'','\0','\0','\0','\0','','','','\0','\0','\0','\0','\0','\0','\0','\0'),(12,'AS','','','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0',''),(13,'AS','','','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0',''),(14,'AS','','','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','');
/*!40000 ALTER TABLE `det_objetos_porta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_escolaridad`
--

DROP TABLE IF EXISTS `gen_escolaridad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_escolaridad` (
  `id_escolaridad` int(11) NOT NULL AUTO_INCREMENT,
  `escolaridad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_escolaridad`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_escolaridad`
--

LOCK TABLES `gen_escolaridad` WRITE;
/*!40000 ALTER TABLE `gen_escolaridad` DISABLE KEYS */;
INSERT INTO `gen_escolaridad` VALUES (1,'Primaria');
/*!40000 ALTER TABLE `gen_escolaridad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_estado`
--

DROP TABLE IF EXISTS `gen_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_estado` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(20) NOT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_estado`
--

LOCK TABLES `gen_estado` WRITE;
/*!40000 ALTER TABLE `gen_estado` DISABLE KEYS */;
INSERT INTO `gen_estado` VALUES (1,'Aguascalientes'),(2,'Baja California'),(3,'Baja California Sur'),(4,'Campeche'),(5,'Coahuila de Zaragoza'),(6,'Colima'),(7,'Chiapas'),(8,'Chihuahua'),(9,'Distrito Federal'),(10,'Durango'),(11,'Guanajuato'),(12,'Guerrero'),(13,'Hidalgo'),(14,'Jalisco'),(15,'México'),(16,'Michoacán de Ocampo'),(17,'Morelos'),(18,'Nayarit'),(19,'Nuevo León'),(20,'Oaxaca de Juárez'),(21,'Puebla'),(22,'Querétaro'),(23,'Quintana Roo'),(24,'San Luis Potosí'),(25,'Sinaloa'),(26,'Sonora'),(27,'Tabasco'),(28,'Tamaulipas'),(29,'Tlaxcala'),(30,'Veracruz de Ignacio '),(31,'Yucatán'),(32,'Zacatecas');
/*!40000 ALTER TABLE `gen_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_localidad`
--

DROP TABLE IF EXISTS `gen_localidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_localidad` (
  `id_localidad` int(11) NOT NULL AUTO_INCREMENT,
  `localidad` varchar(30) NOT NULL,
  `id_municipio` int(11) NOT NULL,
  PRIMARY KEY (`id_localidad`),
  KEY `localidad_municipio_idx` (`id_municipio`),
  CONSTRAINT `localidad_municipio` FOREIGN KEY (`id_municipio`) REFERENCES `gen_municipio` (`id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_localidad`
--

LOCK TABLES `gen_localidad` WRITE;
/*!40000 ALTER TABLE `gen_localidad` DISABLE KEYS */;
INSERT INTO `gen_localidad` VALUES (1,'el Serranito',1);
/*!40000 ALTER TABLE `gen_localidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_municipio`
--

DROP TABLE IF EXISTS `gen_municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_municipio` (
  `id_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `municipio` varchar(30) NOT NULL,
  `id_estado` int(11) NOT NULL,
  PRIMARY KEY (`id_municipio`),
  KEY `municipio_estado_idx` (`id_estado`),
  CONSTRAINT `municipio_estado` FOREIGN KEY (`id_estado`) REFERENCES `gen_estado` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_municipio`
--

LOCK TABLES `gen_municipio` WRITE;
/*!40000 ALTER TABLE `gen_municipio` DISABLE KEYS */;
INSERT INTO `gen_municipio` VALUES (1,'Real Valle',1);
/*!40000 ALTER TABLE `gen_municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `per_descripcion_fisica`
--

DROP TABLE IF EXISTS `per_descripcion_fisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `per_descripcion_fisica` (
  `id_descripcion` int(11) NOT NULL AUTO_INCREMENT,
  `estatura` varchar(10) DEFAULT NULL,
  `color_piel` varchar(10) DEFAULT NULL,
  `cejas` varchar(10) DEFAULT NULL,
  `color_ojos` varchar(10) DEFAULT NULL,
  `color_pelo` varchar(10) DEFAULT NULL,
  `menton` varchar(15) DEFAULT NULL,
  `frente` varchar(10) DEFAULT NULL,
  `complexion` varchar(10) DEFAULT NULL,
  `id_persona` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_descripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `per_descripcion_fisica`
--

LOCK TABLES `per_descripcion_fisica` WRITE;
/*!40000 ALTER TABLE `per_descripcion_fisica` DISABLE KEYS */;
INSERT INTO `per_descripcion_fisica` VALUES (1,NULL,'ASD','ASD','ASD','ASD','ASD','ASD','ASD',NULL),(2,NULL,'ASD','ASD','ASD','ASD','ASD','ASD','ASD',4),(3,'123','ASD','ASD','ASD','ASD','ASD','ASD','ASD',5),(4,'123','SADF','ASDF','ASDF','ASDF','ASDF','ASDF','ASDF',6),(5,'123','SADF','ASDF','ASDF','ASDF','ASDF','ASDF','ASDF',7),(6,'123','SADF','ASDF','ASDF','ASDF','ASDF','ASDF','ASDF',8);
/*!40000 ALTER TABLE `per_descripcion_fisica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `per_domicilios`
--

DROP TABLE IF EXISTS `per_domicilios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `per_domicilios` (
  `id_domicilio` int(11) NOT NULL AUTO_INCREMENT,
  `calle` varchar(30) DEFAULT NULL,
  `id_colonia` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `id_municipio` int(11) DEFAULT NULL,
  `id_persona` int(11) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_domicilio`),
  KEY `municipio_domicilio_idx` (`id_municipio`),
  CONSTRAINT `domicilio_municipio` FOREIGN KEY (`id_municipio`) REFERENCES `gen_municipio` (`id_municipio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `per_domicilios`
--

LOCK TABLES `per_domicilios` WRITE;
/*!40000 ALTER TABLE `per_domicilios` DISABLE KEYS */;
INSERT INTO `per_domicilios` VALUES (1,'ASD',2,NULL,1,1,NULL),(2,'ASD',2,NULL,1,2,NULL),(3,'ASD',2,NULL,1,3,NULL),(4,'ASD',2,NULL,1,4,NULL),(5,'ASD',2,NULL,1,5,NULL),(6,'ASD',1,NULL,1,6,NULL),(7,'ASD',NULL,NULL,NULL,7,NULL),(8,'ASD',NULL,NULL,NULL,8,NULL);
/*!40000 ALTER TABLE `per_domicilios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `per_huella`
--

DROP TABLE IF EXISTS `per_huella`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `per_huella` (
  `id_huella` int(11) NOT NULL AUTO_INCREMENT,
  `huella` blob NOT NULL,
  `id_persona` int(11) NOT NULL,
  PRIMARY KEY (`id_huella`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `per_huella`
--

LOCK TABLES `per_huella` WRITE;
/*!40000 ALTER TABLE `per_huella` DISABLE KEYS */;
/*!40000 ALTER TABLE `per_huella` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `per_personas`
--

DROP TABLE IF EXISTS `per_personas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `per_personas` (
  `id_persona` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `ape_pat` varchar(20) DEFAULT NULL,
  `ape_mat` varchar(20) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `estado_civil` varchar(10) DEFAULT NULL,
  `nacionalidad` varchar(20) DEFAULT NULL,
  `señas_particulares` varchar(200) DEFAULT NULL,
  `lesiones_presenta` varchar(200) DEFAULT NULL,
  `id_escolaridad` int(11) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_persona`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `per_personas`
--

LOCK TABLES `per_personas` WRITE;
/*!40000 ALTER TABLE `per_personas` DISABLE KEYS */;
INSERT INTO `per_personas` VALUES (1,'JUAN','PEREZ','PEREZ',NULL,'HOMBRE',NULL,'SOLTERO/A','ASDF','ASD','ASD',1,12),(2,'JUAN','PEREZ','PEREZ',NULL,'HOMBRE',NULL,'SOLTERO/A','ASDF','ASD','ASD',1,12),(3,'JUAN','PEREZ','PEREZ',NULL,'HOMBRE',NULL,'SOLTERO/A','ASDF','ASD','ASD',1,12),(4,'JUAN','PEREZ','PEREZ',NULL,'HOMBRE',NULL,'SOLTERO/A','ASDF','ASD','ASD',1,12),(5,'JUAN','PEREZ','PEREZ',NULL,'HOMBRE',NULL,'SOLTERO/A','ASDF','ASD','ASD',1,12),(6,'QWER','QWE','QWER',NULL,'MUJER',NULL,'CASADO/A','ASD',' ASD','ASDF',1,12),(7,'QWER','QWE','QWER',NULL,'MUJER',NULL,'CASADO/A','ASD','   ASD','ASDF',1,12),(8,'QWER','QWE','QWER',NULL,'MUJER','0000-00-00','CASADO/A','ASD','   ASD','ASDF',1,12);
/*!40000 ALTER TABLE `per_personas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-12  9:56:03
