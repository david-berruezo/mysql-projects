-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: pisosenm_inmobiliaria
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.38-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dynamic_gallery_empresa_banner`
--

DROP TABLE IF EXISTS `dynamic_gallery_empresa_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_gallery_empresa_banner` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador de la galeria',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Titulo',
  `zipstatus` varchar(255) DEFAULT NULL COMMENT 'Zip Status',
  `text_alt` varchar(255) DEFAULT NULL COMMENT 'Text alt',
  `image_principal` varchar(255) DEFAULT NULL COMMENT 'Image principal',
  `text_importada` varchar(255) DEFAULT NULL COMMENT 'Text importada',
  `imagethn_principal` varchar(255) DEFAULT NULL COMMENT 'Imageth principal',
  `status` varchar(128) DEFAULT 'ACTIVED',
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Galería empresa baner';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamic_gallery_empresa_banner`
--

LOCK TABLES `dynamic_gallery_empresa_banner` WRITE;
/*!40000 ALTER TABLE `dynamic_gallery_empresa_banner` DISABLE KEYS */;
INSERT INTO `dynamic_gallery_empresa_banner` VALUES (1,'es','Restaurant Las Vegas',NULL,NULL,'banner.jpg',NULL,NULL,'ACTIVED',0),(2,'es','QUINZE',NULL,NULL,'banner.jpg',NULL,NULL,'ACTIVED',1),(4,'es','Bages 964 Oller del Mas',NULL,NULL,'banner.jpg',NULL,NULL,'ACTIVED',2),(12,'es','Restaurante Canonge',NULL,NULL,'banner.jpg',NULL,NULL,'ACTIVED',3),(13,'es','Restaurant Niwaka',NULL,NULL,'banner.jpg',NULL,NULL,'ACTIVED',4),(15,'es','La Cuina',NULL,NULL,'banner.jpg',NULL,NULL,'ACTIVED',5);
/*!40000 ALTER TABLE `dynamic_gallery_empresa_banner` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-26 10:49:59
