-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: homeswe1_web_dos
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
-- Table structure for table `hshv_avantio_rates_acommodation`
--

DROP TABLE IF EXISTS `hshv_avantio_rates_acommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avantio_rates_acommodation` (
  `id` int(11) NOT NULL,
  `id_avantio_acommodation` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`id_avantio_acommodation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Accomodation rates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hshv_avantio_rates_acommodation`
--

LOCK TABLES `hshv_avantio_rates_acommodation` WRITE;
/*!40000 ALTER TABLE `hshv_avantio_rates_acommodation` DISABLE KEYS */;
INSERT INTO `hshv_avantio_rates_acommodation` VALUES (0,55),(0,56),(0,60),(0,63),(0,66),(0,67),(0,68),(0,69),(0,70),(0,71),(0,72),(0,73),(0,74),(0,75),(0,76),(0,77),(0,80),(0,81),(0,82),(0,83),(0,84),(0,85),(0,86),(0,87),(0,88),(0,89),(0,90),(0,91),(0,92),(0,93),(0,94),(0,95),(0,96),(0,97),(0,98),(0,99),(0,100),(0,101),(0,102),(0,105),(0,106),(0,107),(0,108),(0,109),(0,110),(0,111),(0,112),(0,113),(0,114),(0,115),(0,116),(0,117),(0,118),(0,119),(0,120),(0,121),(0,122),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,21),(22,22),(23,23),(24,24),(25,25),(26,26),(27,27),(28,28),(29,29),(30,30),(31,31),(32,32),(33,33),(34,34),(35,35),(36,36),(37,37),(38,38),(39,39),(40,40),(41,41),(42,42),(43,43),(44,44),(45,45),(46,46),(47,47),(48,48),(49,49),(50,50),(51,51),(52,52),(53,53),(54,54),(55,57),(56,58),(57,59),(62,61),(63,62),(64,64),(65,65),(66,103),(67,104);
/*!40000 ALTER TABLE `hshv_avantio_rates_acommodation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hshv_avantio_rates_names`
--

DROP TABLE IF EXISTS `hshv_avantio_rates_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avantio_rates_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hshv_avantio_rates_names`
--

LOCK TABLES `hshv_avantio_rates_names` WRITE;
/*!40000 ALTER TABLE `hshv_avantio_rates_names` DISABLE KEYS */;
INSERT INTO `hshv_avantio_rates_names` VALUES (45,'Can Pau'),(44,'Es Coloms'),(4,'Green Bay'),(6,'Son Lan'),(15,'Punta de Sa Torre'),(7,'Can Windo'),(11,'Sa Terra'),(10,'Sa Figuera'),(13,'Can Tamarells'),(14,'La Brise'),(16,'Can Garbi'),(17,'Sa Capelleta'),(20,'Can Encanto'),(22,'Villa Nilo'),(23,'Can Porroig'),(24,'Sa Calma'),(25,'Can Vicent'),(27,'Can Olaia'),(28,'Can Ferran'),(29,'Can Lloret'),(32,'Son Boronat'),(33,'Es Llamp'),(34,'El Oasis'),(35,'Bon Aire'),(41,'Finca Son Real'),(46,'Petit Bay'),(40,'Es Racó'),(39,'Son Bou'),(38,'Finca Son Valls'),(36,'Son Nou'),(37,'Son Matge '),(31,'Finca Sa Olivera'),(30,'Coco Luxe'),(26,'Can Jaume'),(21,'Can Aigua'),(19,'Ocean Sun'),(18,'Can Savina'),(9,'Can Corralet'),(5,'Sa Costa'),(3,'Can Serra'),(2,'Can Mestre'),(12,'sa punta'),(47,'Maison Flamingos'),(42,'Son Blau'),(43,'La Perla'),(48,'Can Pep Xica'),(49,'Can Pratts'),(50,'Can Pujolet'),(51,'Son Blava'),(52,'Villa Coral'),(53,'Ses Salines'),(54,'Casa Yulia'),(55,'Petit Boronat'),(56,'Villa Paradiso'),(57,'Casa Bohemia'),(62,'prueba uno'),(63,'prueba dos'),(61,'tarifa david'),(64,'Ses Olivers'),(65,'Sa LLavanera'),(66,'Casa Bambú'),(67,'Punta de la Mona');
/*!40000 ALTER TABLE `hshv_avantio_rates_names` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-07 17:40:43
