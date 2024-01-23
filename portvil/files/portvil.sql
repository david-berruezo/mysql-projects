-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: phpandfr_portvil
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


alter table avantio_occupation_rules ADD COLUMN `id_season` tinyint(3) COMMENT 'temporadas';

# alter table avantio_acocomoations_locations
alter table avantio_accomodations_locations CHANGE COLUMN `loc_where` `text_loc_where` varchar(255) NOT NULL DEFAULT '' COMMENT 'where';
alter table avantio_accomodations_locations CHANGE COLUMN `loc_howto` `text_loc_howto` varchar(255) NOT NULL DEFAULT '' COMMENT 'howto';
alter table avantio_accomodations_locations CHANGE COLUMN `loc_desc1` `text_loc_desc1` varchar(255) NOT NULL DEFAULT '' COMMENT 'descripción 1';
alter table avantio_accomodations_locations CHANGE COLUMN `loc_desc2` `text_loc_desc2` varchar(255) NOT NULL DEFAULT '' COMMENT 'descripción 2';
alter table avantio_accomodations_locations CHANGE COLUMN `beach_name` `text_beach_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Beach name';
alter table avantio_accomodations_locations CHANGE COLUMN `beach_dist` `number_beach_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Beach distance';
alter table avantio_accomodations_locations CHANGE COLUMN `beach_dist_unit` `text_beach_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance beach unit';
alter table avantio_accomodations_locations CHANGE COLUMN `golf_name` `text_golf_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Golf name';
alter table avantio_accomodations_locations CHANGE COLUMN `golf_dist` `number_golf_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Golf distance';
alter table avantio_accomodations_locations CHANGE COLUMN `golf_dist_unit` `text_golf_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance golf unit';
alter table avantio_accomodations_locations CHANGE COLUMN `city_name` `text_city_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'City Name';
alter table avantio_accomodations_locations CHANGE COLUMN  `city_dist` `number_city_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'City Distance';
alter table avantio_accomodations_locations CHANGE COLUMN `city_dist_unit` `text_city_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance city unit';
alter table avantio_accomodations_locations CHANGE COLUMN `super_name` `text_super_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Super name';
alter table avantio_accomodations_locations CHANGE COLUMN `super_dist` `number_super_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Super Distance';
alter table avantio_accomodations_locations CHANGE COLUMN `super_dist_unit` `text_super_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance super unit';
alter table avantio_accomodations_locations CHANGE COLUMN `airport_name` `text_airport_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Airport Name';
alter table avantio_accomodations_locations CHANGE COLUMN `airport_dist` `number_airport_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Airport Distance';
alter table avantio_accomodations_locations CHANGE COLUMN `airport_dist_unit` `text_airport_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance airport unit';
alter table avantio_accomodations_locations CHANGE COLUMN `train_name` `text_train_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Train Name';
alter table avantio_accomodations_locations CHANGE COLUMN `train_dist` `number_train_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Train Distance';
alter table avantio_accomodations_locations CHANGE COLUMN `train_dist_unit` `text_train_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance train unit';
alter table avantio_accomodations_locations CHANGE COLUMN `bus_name` `text_bus_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Bus name';
alter table avantio_accomodations_locations CHANGE COLUMN `bus_dist` `number_bus_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Bus Distance';
alter table avantio_accomodations_locations CHANGE COLUMN `bus_dist_unit` `text_bus_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance bus unit';
alter table avantio_accomodations_locations CHANGE COLUMN `view_to_beach` `checkbox_view_to_beach` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View To Beach';
alter table avantio_accomodations_locations CHANGE COLUMN `view_to_swimming_pool` `checkbox_view_to_swimming_pool` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to swimming pool';
alter table avantio_accomodations_locations CHANGE COLUMN `view_to_golf` `checkbox_view_to_golf` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View To golf';
alter table avantio_accomodations_locations CHANGE COLUMN `view_to_garden` `checkbox_view_to_garden` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to garden';
alter table avantio_accomodations_locations CHANGE COLUMN `view_to_river` `checkbox_view_to_river` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to river';
alter table avantio_accomodations_locations CHANGE COLUMN `view_to_mountain` `checkbox_view_to_mountain` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to mountain';
alter table avantio_accomodations_locations CHANGE COLUMN `view_to_lake` `checkbox_view_to_lake` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to lake';
alter table avantio_accomodations_locations CHANGE COLUMN `first_line_beach` `checkbox_first_line_beach` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'First line beach';
alter table avantio_accomodations_locations CHANGE COLUMN `first_line_golf` `checkbox_first_line_golf` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'First Line golf';


alter table hshv_avantio_accomodations_locations CHANGE COLUMN `loc_where` `text_loc_where` varchar(255) NOT NULL DEFAULT '' COMMENT 'where';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `loc_howto` `text_loc_howto` varchar(255) NOT NULL DEFAULT '' COMMENT 'howto';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `loc_desc1` `text_loc_desc1` varchar(255) NOT NULL DEFAULT '' COMMENT 'descripción 1';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `loc_desc2` `text_loc_desc2` varchar(255) NOT NULL DEFAULT '' COMMENT 'descripción 2';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `beach_name` `text_beach_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Beach name';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `beach_dist` `number_beach_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Beach distance';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `beach_dist_unit` `text_beach_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance beach unit';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `golf_name` `text_golf_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Golf name';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `golf_dist` `number_golf_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Golf distance';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `golf_dist_unit` `text_golf_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance golf unit';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `city_name` `text_city_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'City Name';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN  `city_dist` `number_city_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'City Distance';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `city_dist_unit` `text_city_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance city unit';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `super_name` `text_super_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Super name';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `super_dist` `number_super_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Super Distance';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `super_dist_unit` `text_super_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance super unit';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `airport_name` `text_airport_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Airport Name';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `airport_dist` `number_airport_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Airport Distance';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `airport_dist_unit` `text_airport_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance airport unit';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `train_name` `text_train_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Train Name';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `train_dist` `number_train_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Train Distance';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `train_dist_unit` `text_train_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance train unit';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `bus_name` `text_bus_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Bus name';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `bus_dist` `number_bus_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Bus Distance';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `bus_dist_unit` `text_bus_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance bus unit';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `view_to_beach` `checkbox_view_to_beach` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View To Beach';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `view_to_swimming_pool` `checkbox_view_to_swimming_pool` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to swimming pool';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `view_to_golf` `checkbox_view_to_golf` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View To golf';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `view_to_garden` `checkbox_view_to_garden` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to garden';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `view_to_river` `checkbox_view_to_river` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to river';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `view_to_mountain` `checkbox_view_to_mountain` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to mountain';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `view_to_lake` `checkbox_view_to_lake` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to lake';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `first_line_beach` `checkbox_first_line_beach` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'First line beach';
alter table hshv_avantio_accomodations_locations CHANGE COLUMN `first_line_golf` `checkbox_first_line_golf` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'First Line golf';

SELECT DISTINCT(avantio_pricemodifiers.id)
FROM avantio_pricemodifiers
JOIN avantio_accomodations ON avantio_accomodations.avantio_pricemodifiers = avantio_pricemodifiers.id;

SELECT DISTINCT(avantio_pricemodifiers.id)
FROM avantio_accomodations
JOIN avantio_pricemodifiers ON avantio_pricemodifiers.id = avantio_accomodations.avantio_pricemodifiers;

SELECT DISTINCT(id)
FROM avantio_pricemodifiers;

SELECT name
FROM avantio_pricemodifiers
group by avantio_pricemodifiers.id;

/*
SELECCIONE `gender` FROM` members` GROUP BY `gender`;
Descuento Costa Brava F1
Descuento Mayo Costa Brava D2
Descuento Julio Brisamar
Descuentaos Paulina Abril y Mayo
Descuentos Carolina Mayo
Desucntos Santi Abril y Mayo
Desucnetos linia mayo
*/

# delete fields
delete from avantio_accomodations checkbox_piscina_interior_climatizada;
delete from avantio_accomodations checkbox_piscina_climatizada;
delete from avantio_accomodations checkbox_piscina_de_agua_salada;
delete from avantio_accomodations checkbox_cerca_del_mar;
delete from avantio_accomodations checkbox_acceso_directo_mar;
delete from avantio_accomodations checkbox_fibra_optica;
delete from avantio_accomodations checkbox_internet_por_cable;
delete from avantio_accomodations checkbox_internet_velocidad_lenta;
delete from avantio_accomodations checkbox_internet_velocidad_media;
delete from avantio_accomodations checkbox_internet_velocidad_rapida;
delete from avantio_accomodations checkbox_distancias_playa_arena;
delete from avantio_accomodations checkbox_distancias_playa_roca;
delete from avantio_accomodations checkbox_distancias_golf;
delete from avantio_accomodations checkbox_distancias_pueblo;
delete from avantio_accomodations checkbox_distancias_supermercado;
delete from avantio_accomodations checkbox_distancias_aeropuerto;
delete from avantio_accomodations text_tipo_descuento;


alter table avantio_accomodations drop column checkbox_piscina_interior_climatizada;
alter table avantio_accomodations drop column checkbox_piscina_climatizada;
alter table avantio_accomodations drop column checkbox_piscina_de_agua_salada;
alter table avantio_accomodations drop column checkbox_cerca_del_mar;
alter table avantio_accomodations drop column checkbox_acceso_directo_mar;
alter table avantio_accomodations drop column checkbox_fibra_optica;
alter table avantio_accomodations drop column checkbox_internet_por_cable;
alter table avantio_accomodations drop column checkbox_internet_velocidad_lenta;
alter table avantio_accomodations drop column checkbox_internet_velocidad_media;
alter table avantio_accomodations drop column checkbox_internet_velocidad_rapida;
alter table avantio_accomodations drop column checkbox_distancias_playa_arena;
alter table avantio_accomodations drop column checkbox_distancias_playa_roca;
alter table avantio_accomodations drop column checkbox_distancias_golf;
alter table avantio_accomodations drop column checkbox_distancias_pueblo;
alter table avantio_accomodations drop column checkbox_distancias_supermercado;
alter table avantio_accomodations drop column checkbox_distancias_aeropuerto;
alter table avantio_accomodations drop column text_tipo_descuento;



alter table hshv_avantio_accomodations drop column checkbox_piscina_interior_climatizada;
alter table hshv_avantio_accomodations drop column checkbox_piscina_climatizada;
alter table hshv_avantio_accomodations drop column checkbox_piscina_de_agua_salada;
alter table hshv_avantio_accomodations drop column checkbox_cerca_del_mar;
alter table hshv_avantio_accomodations drop column checkbox_acceso_directo_mar;
alter table hshv_avantio_accomodations drop column checkbox_fibra_optica;
alter table hshv_avantio_accomodations drop column checkbox_internet_por_cable;
alter table hshv_avantio_accomodations drop column checkbox_internet_velocidad_lenta;
alter table hshv_avantio_accomodations drop column checkbox_internet_velocidad_media;
alter table hshv_avantio_accomodations drop column checkbox_internet_velocidad_rapida;
alter table hshv_avantio_accomodations drop column checkbox_distancias_playa_arena;
alter table hshv_avantio_accomodations drop column checkbox_distancias_playa_roca;
alter table hshv_avantio_accomodations drop column checkbox_distancias_golf;
alter table hshv_avantio_accomodations drop column checkbox_distancias_pueblo;
alter table hshv_avantio_accomodations drop column checkbox_distancias_supermercado;
alter table hshv_avantio_accomodations drop column checkbox_distancias_aeropuerto;
alter table hshv_avantio_accomodations drop column text_tipo_descuento;




--
-- Table structure for table `automatizacion`
--
DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `test` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`id_usuario` int(11) DEFAULT '0',
`language` varchar(3) NOT NULL DEFAULT 'es',
`nombre` varchar(255) DEFAULT NULL,
`fecha` datetime DEFAULT NULL,
PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='test';
/*!40101 SET character_set_client = @saved_cs_client */;


DROP TABLE IF EXISTS `dynamic_franquicia`;
CREATE TABLE `dynamic_franquicia` (
`id` int(11) NOT NULL DEFAULT '0',
`language` varchar(3) NOT NULL DEFAULT 'es',
`dynamic_gallery_franquicia` int(11) DEFAULT '0' COMMENT 'Galeria Franquicia',
`text_title` varchar(75) DEFAULT NULL COMMENT 'Título Cabecera',
`number_telf` int(11) DEFAULT '0' COMMENT 'Número de teléfono',
`number_mobile` int(11) DEFAULT '0' COMMENT 'Número de movil',
`number_fax` int(11) DEFAULT '0' COMMENT 'Número de fax',
`text_direccion` varchar(255) DEFAULT NULL COMMENT 'Dirección de la agencia',
`text_email` varchar(255) DEFAULT NULL COMMENT 'Email',
`text_website` varchar(255) DEFAULT NULL COMMENT 'Web',
`text_facebook` varchar(255) DEFAULT NULL COMMENT 'Facebook',
`text_twitter` varchar(255) DEFAULT NULL COMMENT 'Twitter',
`text_instagram` varchar(255) DEFAULT NULL COMMENT 'Instagram',
`text_pinterest` varchar(255) DEFAULT NULL COMMENT 'Pinterest',
`text_google_plus` varchar(255) DEFAULT NULL COMMENT 'Google Plus',
`text_body_title` varchar(75) DEFAULT NULL COMMENT 'Título de la página',
`textarea_description` text COMMENT 'Contenido de la página',
`text_latitud` varchar(20) DEFAULT '0' COMMENT 'Latitud google maps',
`text_longitud` varchar(20) DEFAULT '0' COMMENT 'Longitud google maps',
`text_page_title` varchar(75) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
`text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
`auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
`text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
`text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
`text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
`textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
`textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
`status` varchar(128) DEFAULT "ACTIVED",
`position` int(11) NOT NULL DEFAULT '0',
PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Franquicia';


--
-- Table structure for table `dynamic_gallery_agencia_principal`
--
DROP TABLE IF EXISTS `dynamic_gallery_franquicia`;
CREATE TABLE `dynamic_gallery_franquicia` (
`id` int(11) NOT NULL DEFAULT '0',
`text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
`zip_status` varchar(128) DEFAULT NULL,
`text_title_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
`text_alt_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
`image_1` varchar(255) DEFAULT NULL COMMENT 'imagen 1',
`status` varchar(128) DEFAULT "ACTIVED",
`position` int(11) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Galería Franquicia';


DROP TABLE IF EXISTS `dynamic_agencia`;
CREATE TABLE `dynamic_agencia` (
`id` int(11) NOT NULL DEFAULT '0',
`language` varchar(3) NOT NULL DEFAULT 'es',
`dynamic_gallery_agencia` int(11) DEFAULT '0' COMMENT 'Galeria Franquicia',
`text_title` varchar(75) DEFAULT NULL COMMENT 'Título Cabecera',
`number_telf` int(11) DEFAULT '0' COMMENT 'Número de teléfono',
`number_mobile` int(11) DEFAULT '0' COMMENT 'Número de movil',
`number_fax` int(11) DEFAULT '0' COMMENT 'Número de fax',
`text_direccion` varchar(255) DEFAULT NULL COMMENT 'Dirección de la agencia',
`text_email` varchar(255) DEFAULT NULL COMMENT 'Email',
`text_website` varchar(255) DEFAULT NULL COMMENT 'Web',
`text_facebook` varchar(255) DEFAULT NULL COMMENT 'Facebook',
`text_twitter` varchar(255) DEFAULT NULL COMMENT 'Twitter',
`text_instagram` varchar(255) DEFAULT NULL COMMENT 'Instagram',
`text_pinterest` varchar(255) DEFAULT NULL COMMENT 'Pinterest',
`text_google_plus` varchar(255) DEFAULT NULL COMMENT 'Google Plus',
`text_body_title` varchar(75) DEFAULT NULL COMMENT 'Título de la página',
`textarea_description` text COMMENT 'Contenido de la página',
`text_latitud` varchar(20) DEFAULT '0' COMMENT 'Latitud google maps',
`text_longitud` varchar(20) DEFAULT '0' COMMENT 'Longitud google maps',
`text_page_title` varchar(75) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
`text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
`auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
`text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
`text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
`text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
`textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
`textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
`status` varchar(128) DEFAULT "ACTIVED",
`position` int(11) NOT NULL DEFAULT '0',
PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Agencias Turísticas';



DROP TABLE IF EXISTS `dynamic_agencia_empleado`;
# siempre se craea una agencia se crea DROP TABLE IF EXISTS `dynamic_agencia`;un usuario y un empleado
CREATE TABLE `dynamic_agencia_empleado` (
`id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador empleado',
`language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
`dynamic_agencia` int(11) DEFAULT NULL COMMENT 'Identificador de agencia',
`dynamic_gallery_agencia_empleado` int(11) unique  DEFAULT '0' COMMENT 'Galeria Empleado',
`text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
`text_email` varchar(20) DEFAULT NULL COMMENT 'Dirección de email',
`text_website` varchar(255) DEFAULT NULL COMMENT 'Web',
`text_facebook` varchar(255) DEFAULT NULL COMMENT 'Facebook',
`text_twitter` varchar(255) DEFAULT NULL COMMENT 'Twitter',
`text_instagram` varchar(255) DEFAULT NULL COMMENT 'Instagram',
`text_pinterest` varchar(255) DEFAULT NULL COMMENT 'Pinterest',
`text_google_plus` varchar(255) DEFAULT NULL COMMENT 'Google Plus',
`number_telf` int(10) DEFAULT '0' COMMENT 'Telefono Agente inmobiliario',
`number_mobile` int(10) DEFAULT '0' COMMENT 'Telefono movil',
`number_fax` int(10) DEFAULT '0' COMMENT 'Fax',
`textarea_description` text COMMENT 'Descripción',
`text_page_title` varchar(255) DEFAULT NULL COMMENT 'Título sobre el alojamiento',
`auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
`text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
`text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 characters)',
`text_meta_robots` varchar(255) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
`text_meta_description` text COMMENT 'Meta Description (max 255 characters)',
`textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
`textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
`status` varchar(128) DEFAULT NULL,
`position` int(11) NOT NULL DEFAULT '0',
PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Empleados Agencia';


--
-- Table structure for table `dynamic_gallery_agencia_principal`
--
DROP TABLE IF EXISTS `dynamic_gallery_agencia`;
CREATE TABLE `dynamic_gallery_agencia` (
`id` int(11) NOT NULL DEFAULT '0',
`text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
`zip_status` varchar(128) DEFAULT NULL,
`text_title_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
`text_alt_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
`image_1` varchar(255) DEFAULT NULL COMMENT 'imagen 1',
`status` varchar(128) DEFAULT "ACTIVED",
`position` int(11) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Galería Agencia';



# una foto de empleado
CREATE TABLE `dynamic_gallery_agencia_empleado` (
`id` int(11) NOT NULL DEFAULT '0',
`language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
`text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
`zipstatus` varchar(128) DEFAULT NULL,
`text_title_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
`text_alt_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
`image_1` varchar(255) DEFAULT NULL COMMENT 'imagen 1',
`status` varchar(128) DEFAULT "ACTIVED",
`position` int(11) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Galería Empleado Agencia';




DROP TABLE IF EXISTS `dynamic_propietario_empleado`;
# siempre se craea una agencia se crea DROP TABLE IF EXISTS `dynamic_agencia`;un usuario y un empleado
CREATE TABLE `dynamic_propietario_empleado` (
`id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador empleado',
`language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
`dynamic_agencia` int(11) DEFAULT NULL COMMENT 'Identificador de agencia',
`dynamic_gallery_propietario_empleado` int(11) unique  DEFAULT '0' COMMENT 'Galeria Empleado',
`text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
`text_email` varchar(20) DEFAULT NULL COMMENT 'Dirección de email',
`text_website` varchar(255) DEFAULT NULL COMMENT 'Web',
`text_facebook` varchar(255) DEFAULT NULL COMMENT 'Facebook',
`text_twitter` varchar(255) DEFAULT NULL COMMENT 'Twitter',
`text_instagram` varchar(255) DEFAULT NULL COMMENT 'Instagram',
`text_pinterest` varchar(255) DEFAULT NULL COMMENT 'Pinterest',
`text_google_plus` varchar(255) DEFAULT NULL COMMENT 'Google Plus',
`number_telf` int(10) DEFAULT '0' COMMENT 'Telefono Agente inmobiliario',
`number_mobile` int(10) DEFAULT '0' COMMENT 'Telefono movil',
`number_fax` int(10) DEFAULT '0' COMMENT 'Fax',
`textarea_description` text COMMENT 'Descripción',
`text_page_title` varchar(255) DEFAULT NULL COMMENT 'Título sobre el alojamiento',
`auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
`text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
`text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 characters)',
`text_meta_robots` varchar(255) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
`text_meta_description` text COMMENT 'Meta Description (max 255 characters)',
`textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
`textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
`status` varchar(128) DEFAULT NULL,
`position` int(11) NOT NULL DEFAULT '0',
PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Empleados Agencia';


--
-- Table structure for table `dynamic_agencia`
--

DROP TABLE IF EXISTS `dynamic_propietario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_propietario` (
`id` int(11) NOT NULL DEFAULT '0',
`language` varchar(3) NOT NULL DEFAULT 'es',
`dynamic_gallery_propietario` int(11) DEFAULT '0' COMMENT 'Galeria Propietario',
`text_title` varchar(75) DEFAULT NULL COMMENT 'Título Cabecera',
`number_telf` int(11) DEFAULT '0' COMMENT 'Número de teléfono',
`number_mobile` int(11) DEFAULT '0' COMMENT 'Número de movil',
`number_fax` int(11) DEFAULT '0' COMMENT 'Número de fax',
`text_direccion` varchar(255) DEFAULT NULL COMMENT 'Dirección del propietario',
`text_email` varchar(255) DEFAULT NULL COMMENT 'Email',
`text_website` varchar(255) DEFAULT NULL COMMENT 'Web',
`text_facebook` varchar(255) DEFAULT NULL COMMENT 'Facebook',
`text_twitter` varchar(255) DEFAULT NULL COMMENT 'Twitter',
`text_instagram` varchar(255) DEFAULT NULL COMMENT 'Instagram',
`text_pinterest` varchar(255) DEFAULT NULL COMMENT 'Pinterest',
`text_google_plus` varchar(255) DEFAULT NULL COMMENT 'Google Plus',
`text_body_title` varchar(75) DEFAULT NULL COMMENT 'Título de la página',
`textarea_description` text COMMENT 'Contenido de la página',
`text_page_title` varchar(75) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
`text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
`auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
`text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
`text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
`text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
`textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
`textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
`status` varchar(128) DEFAULT "ACTIVED",
`position` int(11) NOT NULL DEFAULT '0',
PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Propietrio';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_gallery_agencia_principal`
--

DROP TABLE IF EXISTS `dynamic_gallery_propietario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_gallery_propietario` (
`id` int(11) NOT NULL DEFAULT '0',
`text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
`zip_status` varchar(128) DEFAULT NULL,
`text_title_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
`text_alt_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
`image_1` varchar(255) DEFAULT NULL COMMENT 'imagen 1',
`status` varchar(128) DEFAULT "ACTIVED",
`position` int(11) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Galeria propietario';


# una foto de empleado
DROP TABLE IF EXISTS `dynamic_gallery_propietario_empleado`;
CREATE TABLE `dynamic_gallery_propietario_empleado` (
`id` int(11) NOT NULL DEFAULT '0',
`language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
`text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
`zipstatus` varchar(128) DEFAULT NULL,
`text_title_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
`text_alt_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
`image_1` varchar(255) DEFAULT NULL COMMENT 'imagen 1',
`status` varchar(128) DEFAULT "ACTIVED",
`position` int(11) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Galería Empleado Propietario';


--
-- Table structure for table `automatizacion`
--
DROP TABLE IF EXISTS `automatizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `automatizacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `nombre` varchar(255) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='Automatización fichero';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_accomodations`
--

DROP TABLE IF EXISTS `avantio_accomodations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_accomodations` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador inmueble',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'language',
  `text_title` varchar(255) DEFAULT '' COMMENT 'Nombre del alojamiento',
  `text_referencia` varchar(45) DEFAULT NULL COMMENT 'Referencia',
  `text_userid` varchar(75) DEFAULT '' COMMENT 'Id usuario',
  `text_company` varchar(75) DEFAULT '' COMMENT 'Nombre compañia',
  `number_companyid` int(10) unsigned DEFAULT '0' COMMENT 'Id compañia',
  `text_numero_registro_turistico` varchar(255) DEFAULT '' COMMENT 'Número de registro turístico',
  `avantio_occupation_rules` int(11) unsigned DEFAULT NULL COMMENT 'Regla de ocupación',
  `avantio_pricemodifiers` int(11) unsigned DEFAULT NULL COMMENT 'Modificador de precio',
  `avantio_gallery` int(11) unsigned DEFAULT NULL COMMENT 'Galería',
  `dynamic_taxonomy` int(11) DEFAULT NULL COMMENT 'Taxonomía (Kinds)',
  `dynamic_geocountry` int(11) DEFAULT NULL COMMENT 'País',
  `dynamic_georegion` int(11) DEFAULT NULL COMMENT 'Región',
  `dynamic_geocity` int(11) DEFAULT NULL COMMENT 'Ciudad',
  `dynamic_geolocality` int(11) DEFAULT NULL COMMENT 'Localidad',
  `dynamic_geodistrict` int(11) DEFAULT NULL COMMENT 'Distrito',
  `text_geo_cp` text COMMENT 'Código Postal',
  `text_geo_tipo_calle` varchar(20) DEFAULT NULL COMMENT 'Nombre de vía',
  `text_geo_calle` varchar(255) DEFAULT NULL COMMENT 'Calle',
  `text_geo_numero` varchar(20) DEFAULT NULL COMMENT 'Número',
  `text_geo_bloque` varchar(20) DEFAULT NULL COMMENT 'Piso / Letra',
  `text_geo_puerta` varchar(20) DEFAULT NULL COMMENT 'Puerta',
  `text_geo_piso` varchar(20) DEFAULT NULL COMMENT 'Piso',
  `text_geo_latitud` varchar(45) DEFAULT NULL COMMENT 'GPS Latitud',
  `text_geo_longitud` varchar(45) DEFAULT NULL COMMENT 'GPS Longitud',
  `number_geo_zoom` int(11) unsigned DEFAULT NULL COMMENT 'Zoom Google Maps',
  `number_unidades` smallint(11) unsigned DEFAULT '0' COMMENT 'Número de alojamientos',
  `number_habitaciones` int(11) unsigned DEFAULT '1' COMMENT 'Número de habitaciones',
  `number_camas_doble` int(11) unsigned DEFAULT '0' COMMENT 'Número de camas dobles',
  `number_camas_individual` int(11) unsigned DEFAULT '0' COMMENT 'Número de camas individuales',
  `number_sofas_cama` int(11) unsigned DEFAULT '0' COMMENT 'Número de sofás cama',
  `number_sofas_cama_doble` int(11) unsigned DEFAULT '0' COMMENT 'Número de sofás cama doble',
  `number_literas` int(11) unsigned DEFAULT '0' COMMENT 'Número de literas',
  `number_dormitorios_personal` int(11) DEFAULT NULL COMMENT 'Dormitorios de personal',
  `number_camas_supletorias` int(11) DEFAULT NULL COMMENT 'Camas supletorias',
  `number_aseos` int(11) unsigned DEFAULT '0' COMMENT 'Número de aseos',
  `number_banyos_banyera` int(11) unsigned DEFAULT '0' COMMENT 'Número de baños con bañera',
  `number_banyos_ducha` int(11) unsigned DEFAULT '0' COMMENT 'Número de baños con ducha',
  `number_metros_cuadrados` int(11) unsigned DEFAULT '0' COMMENT 'Superficie parcela',
  `number_metros_cuadrados_utiles` int(11) unsigned DEFAULT '0' COMMENT 'Superficie vivienda',
  `number_metros_cuadrados_construidos` int(11) unsigned DEFAULT '0' COMMENT 'Metros cuadrados, superfície construida',
  `number_metros_cuadrados_terraza` int(11) unsigned DEFAULT '0' COMMENT 'Metros cuadrados, terraza',
  `number_capacidad_maxima` int(11) unsigned DEFAULT '1' COMMENT 'Ocupación máxima adultos con niños',
  `number_capacidad_minima` int(11) unsigned DEFAULT '1' COMMENT 'Ocupación mínima',
  `number_capacidad_sin_suplemento` int(11) DEFAULT NULL COMMENT 'Ocupación sin suplemento',
  `number_cocinas` int(11) unsigned DEFAULT '0' COMMENT 'Número cocinas',
  `number_fun` int(11) DEFAULT NULL COMMENT 'ventilador',
  `text_cocina_clase` varchar(75) DEFAULT '' COMMENT 'Clase de cocina',
  `text_cocina_tipo` varchar(75) DEFAULT '' COMMENT 'Tipo de cocina',
  `text_orientacion` varchar(75) DEFAULT NULL COMMENT 'Orientación',
  `checkbox_grups` tinyint(4) unsigned DEFAULT '0' COMMENT 'grupos',
  `checkbox_aparcamiento` tinyint(4) DEFAULT NULL COMMENT 'aparcamiento',
  `number_plazas_aparcamiento` int(11) DEFAULT NULL COMMENT 'plazas de aparcamiento',
  `checkbox_piscina` tinyint(4) unsigned DEFAULT '0' COMMENT 'piscina',
  `text_dimensiones_piscina` varchar(75) DEFAULT NULL COMMENT 'dimensiones piscina',
  `text_tipo_piscina` varchar(255) DEFAULT '' COMMENT 'Tipo piscina',
  `checkbox_piscina_interior_climatizada` tinyint(4) DEFAULT NULL COMMENT 'piscina interior climatizada',
  `checkbox_piscina_climatizada` tinyint(4) DEFAULT NULL COMMENT 'piscina climatizada',
  `checkbox_piscina_de_agua_salada` tinyint(4) DEFAULT NULL COMMENT 'piscina agua salada',
  `checkbox_tv` tinyint(4) unsigned DEFAULT '0' COMMENT 'tv',
  `checkbox_jardin` tinyint(4) unsigned DEFAULT '0' COMMENT 'jardín',
  `checkbox_muebles_jardin` tinyint(4) unsigned DEFAULT '0' COMMENT 'muebles de jardín',
  `checkbox_plancha` tinyint(4) unsigned DEFAULT '0' COMMENT 'plancha',
  `checkbox_chimenea` tinyint(4) unsigned DEFAULT '0' COMMENT 'chimenea',
  `checkbox_barbacoa` tinyint(4) unsigned DEFAULT '0' COMMENT 'barbacoa',
  `checkbox_radio` tinyint(4) unsigned DEFAULT '0' COMMENT 'radio',
  `checkbox_minibar` tinyint(4) unsigned DEFAULT '0' COMMENT 'mini-bar',
  `checkbox_terraza` tinyint(4) unsigned DEFAULT '0' COMMENT 'terraza',
  `checkbox_parcela_vallada` tinyint(4) unsigned DEFAULT '0' COMMENT 'parcela vallada',
  `checkbox_caja_seguridad` tinyint(4) unsigned DEFAULT '0' COMMENT 'caja fuerte',
  `checkbox_ascensor` tinyint(4) unsigned DEFAULT '0' COMMENT 'ascensor',
  `checkbox_dvd` tinyint(4) unsigned DEFAULT '0' COMMENT 'reproductor de DVD',
  `checkbox_balcon` tinyint(4) unsigned DEFAULT '0' COMMENT 'balcón',
  `checkbox_exprimidor` tinyint(4) unsigned DEFAULT '0' COMMENT 'exprimidor',
  `checkbox_hervidor_electrico` tinyint(4) unsigned DEFAULT '0' COMMENT 'hervidor electrico',
  `checkbox_secador_pelo` tinyint(4) unsigned DEFAULT '0' COMMENT 'secador de pelo',
  `checkbox_zona_ninos` tinyint(4) unsigned DEFAULT '0' COMMENT 'zona para niños',
  `checkbox_gimnasio` tinyint(4) unsigned DEFAULT '0' COMMENT 'gimnasio',
  `checkbox_alarma` tinyint(4) unsigned DEFAULT '0' COMMENT 'alarma',
  `checkbox_tennis` tinyint(4) unsigned DEFAULT '0' COMMENT 'pista de tenis',
  `checkbox_squash` tinyint(4) unsigned DEFAULT '0' COMMENT 'squash',
  `checkbox_paddel` tinyint(4) unsigned DEFAULT '0' COMMENT 'paddel',
  `checkbox_sauna` tinyint(4) unsigned DEFAULT '0' COMMENT 'sauna',
  `checkbox_jacuzzi` tinyint(4) unsigned DEFAULT '0' COMMENT 'jacuzzi',
  `checkbox_apta_discapacitados` tinyint(4) unsigned DEFAULT '0' COMMENT 'Apta para discapacitados',
  `checkbox_nevera` tinyint(4) unsigned DEFAULT '0' COMMENT 'nevera',
  `checkbox_congelador` tinyint(4) unsigned DEFAULT '0' COMMENT 'congelador',
  `checkbox_lavavajillas` tinyint(4) unsigned DEFAULT '0' COMMENT 'lavavajillas',
  `checkbox_lavadora` tinyint(4) unsigned DEFAULT '0' COMMENT 'lavadora',
  `checkbox_secadora` tinyint(4) unsigned DEFAULT '0' COMMENT 'secadora',
  `checkbox_cafetera` tinyint(4) unsigned DEFAULT '0' COMMENT 'cafetera',
  `checkbox_tostadora` tinyint(4) unsigned DEFAULT '0' COMMENT 'tostadora',
  `checkbox_microondas` tinyint(4) unsigned DEFAULT '0' COMMENT 'microondas',
  `checkbox_horno` tinyint(4) unsigned DEFAULT '0' COMMENT 'horno',
  `checkbox_vajilla` tinyint(4) unsigned DEFAULT '0' COMMENT 'vajilla',
  `checkbox_utensilios_cocina` tinyint(4) unsigned DEFAULT '0' COMMENT 'utensilios de concina',
  `id_avantio` tinyint(3) DEFAULT NULL COMMENT 'id avantio',
  `dynamic_taxonomy_geographic_language_fields_customitzation` int(11) DEFAULT NULL COMMENT 'extra field',
  `checkbox_cerca_del_mar` tinyint(4) DEFAULT NULL COMMENT 'cerca del mar',
  `checkbox_acceso_directo_mar` tinyint(4) DEFAULT NULL COMMENT 'acceso directo mar',
  `checkbox_batidora` tinyint(4) DEFAULT NULL COMMENT 'batidora',
  `checkbox_extra_nevera` tinyint(4) DEFAULT NULL COMMENT 'extra nevera',
  `checkbox_vinoteca` tinyint(4) DEFAULT NULL COMMENT 'vinoteca / frigorifico vinos',
  `checkbox_hervidor_agua` tinyint(4) DEFAULT NULL COMMENT 'hervidor de agua',
  `checkbox_cafetera_nespresso` tinyint(4) DEFAULT NULL COMMENT 'cafetera nespresso',
  `checkbox_wifi` tinyint(4) DEFAULT NULL COMMENT 'wifi',
  `checkbox_fibra_optica` tinyint(4) DEFAULT NULL COMMENT 'fibra optica',
  `checkbox_internet_por_cable` tinyint(4) DEFAULT NULL COMMENT 'internet por cable',
  `checkbox_internet_velocidad_lenta` tinyint(4) DEFAULT NULL COMMENT 'internet velocidad lenta',
  `checkbox_internet_velocidad_media` tinyint(4) DEFAULT NULL COMMENT 'internet velocidad media',
  `checkbox_internet_velocidad_rapida` tinyint(4) DEFAULT NULL COMMENT 'internet velocidad rapida',
  `checkbox_aire_acondicionado` tinyint(4) DEFAULT NULL COMMENT 'aire acondicionado',
  `checkbox_ventilador` tinyint(4) DEFAULT NULL COMMENT 'ventilador',
  `checkbox_calefacion_central` tinyint(4) DEFAULT NULL COMMENT 'calefacion central',
  `checkbox_bomba_aire` tinyint(4) DEFAULT NULL COMMENT 'bomba aire frio/calor',
  `checkbox_suelo_radiante` tinyint(4) DEFAULT NULL COMMENT 'suelo radiante',
  `checkbox_cine` tinyint(4) DEFAULT NULL COMMENT 'cine',
  `checkbox_equipo_musica` tinyint(4) DEFAULT NULL COMMENT 'equipo de musica',
  `checkbox_barbacoa_gas` tinyint(4) DEFAULT NULL COMMENT 'barbacoa de gas',
  `checkbox_bano_turco` tinyint(4) DEFAULT NULL COMMENT 'baño turco',
  `checkbox_billar` tinyint(4) DEFAULT NULL COMMENT 'billar',
  `checkbox_ping_pong` tinyint(4) DEFAULT NULL COMMENT 'ping pong',
  `checkbox_seguridad_piscina` tinyint(4) DEFAULT NULL COMMENT 'seguridad piscina',
  `checkbox_accesorios_yoga` tinyint(4) DEFAULT NULL COMMENT 'accesorios yoga',
  `checkbox_hosekeeping` tinyint(4) DEFAULT NULL COMMENT 'hosekeeping on site',
  `checkbox_trona` tinyint(4) DEFAULT NULL COMMENT 'trona',
  `checkbox_mascotas` tinyint(4) DEFAULT NULL COMMENT 'mascotas',
  `checkbox_helipuerto` tinyint(4) DEFAULT NULL COMMENT 'helipuerto',
  `checkbox_zona_de_bar_exterior` tinyint(4) DEFAULT NULL COMMENT 'zona de bar exterior',
  `checkbox_discoteca_privada` tinyint(4) DEFAULT NULL COMMENT 'discoteca privada',
  `checkbox_distancias_playa_arena` tinyint(4) DEFAULT NULL COMMENT 'distancias playa arena',
  `checkbox_distancias_playa_roca` tinyint(4) DEFAULT NULL COMMENT 'distancias playa roca',
  `checkbox_distancias_golf` tinyint(4) DEFAULT NULL COMMENT 'distancias golf',
  `checkbox_distancias_pueblo` tinyint(4) DEFAULT NULL COMMENT 'distancias pueblo',
  `checkbox_distancias_supermercado` tinyint(4) DEFAULT NULL COMMENT 'distancias supermercado',
  `checkbox_distancias_aeropuerto` tinyint(4) DEFAULT NULL COMMENT 'distancias aeropuerto',
  `multiple_taxonomy_geographic_language_extra` varchar(255) DEFAULT NULL COMMENT 'coleccion',
  `multiple_taxonomy_geographic_language_carac` varchar(255) DEFAULT NULL COMMENT 'carac avantio',
  `status` varchar(128) DEFAULT 'ACTIVED' COMMENT 'estado',
  `position` int(11) DEFAULT '0' COMMENT 'posicion',
  `text_tipo_descuento` varchar(255) DEFAULT NULL COMMENT 'tipo descuento',
  PRIMARY KEY (`id`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Alojamientos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_accomodations_descriptions`
--

DROP TABLE IF EXISTS `avantio_accomodations_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_accomodations_descriptions` (
  `language` varchar(5) NOT NULL DEFAULT 'es',
  `avantio_accomodations` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `booking_url` varchar(1024) NOT NULL DEFAULT '',
  PRIMARY KEY (`language`,`avantio_accomodations`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Descriptions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_accomodations_descriptions_tmp`
--

DROP TABLE IF EXISTS `avantio_accomodations_descriptions_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_accomodations_descriptions_tmp` (
  `language` varchar(5) NOT NULL DEFAULT 'es',
  `avantio_accomodations` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `booking_url` varchar(1024) NOT NULL DEFAULT '',
  PRIMARY KEY (`language`,`avantio_accomodations`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Descriptions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_accomodations_extras`
--

DROP TABLE IF EXISTS `avantio_accomodations_extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_accomodations_extras` (
  `avantio_accomodations` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'id acommodations',
  `dynamic_services` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'servicios',
  `checkbox_included` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'incluido',
  `price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'precio',
  `price_unit` varchar(75) NOT NULL DEFAULT 'RESERVA' COMMENT 'precio unitario',
  `price_children` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'precio niños',
  `price_children_unit` varchar(75) NOT NULL DEFAULT 'RESERVA' COMMENT 'precio niños unitario',
  `checkbox_pago_en_reserva` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'pago en reserva',
  `checkbox_opcional` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT 'opcional',
  `text_type` varchar(75) NOT NULL DEFAULT '' COMMENT 'tipo',
  `text_parking_location` varchar(45) NOT NULL DEFAULT '' COMMENT 'ubicación parking',
  `number_limit_weight` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'limite peso',
  PRIMARY KEY (`avantio_accomodations`,`dynamic_services`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Servicios extras';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_accomodations_extras_tmp`
--

DROP TABLE IF EXISTS `avantio_accomodations_extras_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_accomodations_extras_tmp` (
  `avantio_accomodations` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'id acommodations',
  `dynamic_services` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'servicios',
  `checkbox_included` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'incluido',
  `price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'precio',
  `price_unit` varchar(75) NOT NULL DEFAULT 'RESERVA' COMMENT 'precio unitario',
  `price_children` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'precio niños',
  `price_children_unit` varchar(75) NOT NULL DEFAULT 'RESERVA' COMMENT 'precio niños unitario',
  `checkbox_pago_en_reserva` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'pago en reserva',
  `checkbox_opcional` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT 'opcional',
  `text_type` varchar(75) NOT NULL DEFAULT '' COMMENT 'tipo',
  `text_parking_location` varchar(45) NOT NULL DEFAULT '' COMMENT 'ubicación parking',
  `number_limit_weight` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'limite peso',
  PRIMARY KEY (`avantio_accomodations`,`dynamic_services`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Servicios extras';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_accomodations_fields`
--

DROP TABLE IF EXISTS `avantio_accomodations_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_accomodations_fields` (
  `avantio_accomodations` int(11) NOT NULL COMMENT 'Identificador avantio',
  `textarea_notas_internas` text NOT NULL COMMENT 'notas internas',
  `number_capacidad_real` int(11) DEFAULT NULL COMMENT 'Capacidad real',
  `text_youtube` varchar(255) DEFAULT '' COMMENT 'Link youtube',
  `text_cert_energetico` varchar(255) DEFAULT '0' COMMENT 'cert. energético',
  PRIMARY KEY (`avantio_accomodations`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Acommodations tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_accomodations_fields_bullets`
--

DROP TABLE IF EXISTS `avantio_accomodations_fields_bullets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_accomodations_fields_bullets` (
  `avantio_accomodations` int(11) NOT NULL COMMENT 'Identificador avantio',
  `language` varchar(3) NOT NULL COMMENT 'lenguage',
  `textarea_bullet` text NOT NULL COMMENT 'bullet',
  `textarea_informacion_adicional` text COMMENT 'Información adicional',
  PRIMARY KEY (`avantio_accomodations`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bullets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_accomodations_locations`
--

DROP TABLE IF EXISTS `avantio_accomodations_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_accomodations_locations` (
  `avantio_accomodations` int(10) unsigned NOT NULL DEFAULT '0',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'titulo',
  `loc_where` varchar(255) NOT NULL DEFAULT '' COMMENT 'where',
  `loc_howto` varchar(255) NOT NULL DEFAULT '' COMMENT 'howto',
  `loc_desc1` varchar(255) NOT NULL DEFAULT '' COMMENT 'descripción 1',
  `loc_desc2` varchar(255) NOT NULL DEFAULT '' COMMENT 'descripción 2',
  `beach_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Beach name',
  `beach_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Beach distance',
  `beach_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance beach unit',
  `golf_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Golf name',
  `golf_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Golf distance',
  `golf_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance golf unit',
  `city_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'City Name',
  `city_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'City Distance',
  `city_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance city unit',
  `super_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Super name',
  `super_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Super Distance',
  `super_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance super unit',
  `airport_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Airport Name',
  `airport_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Airport Distance',
  `airport_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance airport unit',
  `train_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Train Name',
  `train_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Train Distance',
  `train_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance train unit',
  `bus_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Bus name',
  `bus_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Bus Distance',
  `bus_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance bus unit',
  `view_to_beach` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View To Beach',
  `view_to_swimming_pool` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to swimming pool',
  `view_to_golf` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View To golf',
  `view_to_garden` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to garden',
  `view_to_river` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to river',
  `view_to_mountain` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to mountain',
  `view_to_lake` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to lake',
  `first_line_beach` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'First line beach',
  `first_line_golf` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'First Line golf',
  `position` int(11) DEFAULT NULL COMMENT 'position',
  `id_avantio` int(11) DEFAULT NULL COMMENT 'avantio',
  PRIMARY KEY (`avantio_accomodations`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Localizaciones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_accomodations_locations_tmp`
--

DROP TABLE IF EXISTS `avantio_accomodations_locations_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_accomodations_locations_tmp` (
  `avantio_accomodations` int(10) unsigned NOT NULL DEFAULT '0',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'titulo',
  `loc_where` varchar(255) NOT NULL DEFAULT '' COMMENT 'where',
  `loc_howto` varchar(255) NOT NULL DEFAULT '' COMMENT 'howto',
  `loc_desc1` varchar(255) NOT NULL DEFAULT '' COMMENT 'descripción 1',
  `loc_desc2` varchar(255) NOT NULL DEFAULT '' COMMENT 'descripción 2',
  `beach_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Beach name',
  `beach_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Beach distance',
  `beach_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance beach unit',
  `golf_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Golf name',
  `golf_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Golf distance',
  `golf_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance golf unit',
  `city_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'City Name',
  `city_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'City Distance',
  `city_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance city unit',
  `super_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Super name',
  `super_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Super Distance',
  `super_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance super unit',
  `airport_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Airport Name',
  `airport_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Airport Distance',
  `airport_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance airport unit',
  `train_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Train Name',
  `train_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Train Distance',
  `train_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance train unit',
  `bus_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Bus name',
  `bus_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Bus Distance',
  `bus_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance bus unit',
  `view_to_beach` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View To Beach',
  `view_to_swimming_pool` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to swimming pool',
  `view_to_golf` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View To golf',
  `view_to_garden` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to garden',
  `view_to_river` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to river',
  `view_to_mountain` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to mountain',
  `view_to_lake` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to lake',
  `first_line_beach` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'First line beach',
  `first_line_golf` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'First Line golf',
  `position` int(11) DEFAULT NULL COMMENT 'position',
  `id_avantio` int(11) DEFAULT NULL COMMENT 'avantio',
  PRIMARY KEY (`avantio_accomodations`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Localizaciones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_accomodations_nearest_places`
--

DROP TABLE IF EXISTS `avantio_accomodations_nearest_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_accomodations_nearest_places` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `avantio_accomodations` int(10) unsigned NOT NULL DEFAULT '0',
  `place_type` varchar(75) NOT NULL DEFAULT '',
  `place_name` varchar(255) NOT NULL DEFAULT '',
  `distance` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'metros',
  `dist_unit` char(3) DEFAULT NULL COMMENT 'Distance unit',
  PRIMARY KEY (`id`),
  KEY `accomodation` (`avantio_accomodations`)
) ENGINE=MyISAM AUTO_INCREMENT=205 DEFAULT CHARSET=utf8 COMMENT='Nearest Places';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_accomodations_nearest_places_tmp`
--

DROP TABLE IF EXISTS `avantio_accomodations_nearest_places_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_accomodations_nearest_places_tmp` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `avantio_accomodations` int(10) unsigned NOT NULL DEFAULT '0',
  `place_type` varchar(75) NOT NULL DEFAULT '',
  `place_name` varchar(255) NOT NULL DEFAULT '',
  `distance` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'metros',
  `dist_unit` char(3) DEFAULT NULL COMMENT 'Distance unit',
  PRIMARY KEY (`id`),
  KEY `accomodation` (`avantio_accomodations`)
) ENGINE=MyISAM AUTO_INCREMENT=205 DEFAULT CHARSET=utf8 COMMENT='Nearest Places';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_accomodations_pictures`
--

DROP TABLE IF EXISTS `avantio_accomodations_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_accomodations_pictures` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `avantio_accomodations` int(10) unsigned NOT NULL DEFAULT '0',
  `uri_900x600` varchar(255) NOT NULL DEFAULT '',
  `uri_650x450` varchar(255) NOT NULL DEFAULT '',
  `uri_99x66` varchar(255) DEFAULT NULL,
  `id_avantio` tinyint(3) DEFAULT NULL COMMENT 'identificador avantio',
  PRIMARY KEY (`id`,`avantio_accomodations`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Pictures';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_accomodations_pictures_tmp`
--

DROP TABLE IF EXISTS `avantio_accomodations_pictures_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_accomodations_pictures_tmp` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `avantio_accomodations` int(10) unsigned NOT NULL DEFAULT '0',
  `uri_900x600` varchar(255) NOT NULL DEFAULT '',
  `uri_650x450` varchar(255) NOT NULL DEFAULT '',
  `uri_99x66` varchar(255) DEFAULT NULL,
  `id_avantio` tinyint(3) DEFAULT NULL COMMENT 'identificador avantio',
  PRIMARY KEY (`id`,`avantio_accomodations`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Pictures';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_accomodations_tmp`
--

DROP TABLE IF EXISTS `avantio_accomodations_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_accomodations_tmp` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador inmueble',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'language',
  `text_title` varchar(255) DEFAULT '' COMMENT 'Nombre del alojamiento',
  `text_referencia` varchar(45) DEFAULT NULL COMMENT 'Referencia',
  `text_userid` varchar(75) DEFAULT '' COMMENT 'Id usuario',
  `text_company` varchar(75) DEFAULT '' COMMENT 'Nombre compañia',
  `number_companyid` int(10) unsigned DEFAULT '0' COMMENT 'Id compañia',
  `text_numero_registro_turistico` varchar(255) DEFAULT '' COMMENT 'Número de registro turístico',
  `avantio_occupation_rules` int(11) unsigned DEFAULT NULL COMMENT 'Regla de ocupación',
  `avantio_pricemodifiers` int(11) unsigned DEFAULT NULL COMMENT 'Modificador de precio',
  `avantio_gallery` int(11) unsigned DEFAULT NULL COMMENT 'Galería',
  `dynamic_taxonomy` int(11) DEFAULT NULL COMMENT 'Taxonomía (Kinds)',
  `dynamic_geocountry` int(11) DEFAULT NULL COMMENT 'País',
  `dynamic_georegion` int(11) DEFAULT NULL COMMENT 'Región',
  `dynamic_geocity` int(11) DEFAULT NULL COMMENT 'Ciudad',
  `dynamic_geolocality` int(11) DEFAULT NULL COMMENT 'Localidad',
  `dynamic_geodistrict` int(11) DEFAULT NULL COMMENT 'Distrito',
  `text_geo_cp` text COMMENT 'Código Postal',
  `text_geo_tipo_calle` varchar(20) DEFAULT NULL COMMENT 'Nombre de vía',
  `text_geo_calle` varchar(255) DEFAULT NULL COMMENT 'Calle',
  `text_geo_numero` varchar(20) DEFAULT NULL COMMENT 'Número',
  `text_geo_bloque` varchar(20) DEFAULT NULL COMMENT 'Piso / Letra',
  `text_geo_puerta` varchar(20) DEFAULT NULL COMMENT 'Puerta',
  `text_geo_piso` varchar(20) DEFAULT NULL COMMENT 'Piso',
  `text_geo_latitud` varchar(45) DEFAULT NULL COMMENT 'GPS Latitud',
  `text_geo_longitud` varchar(45) DEFAULT NULL COMMENT 'GPS Longitud',
  `number_geo_zoom` int(11) unsigned DEFAULT NULL COMMENT 'Zoom Google Maps',
  `number_unidades` smallint(11) unsigned DEFAULT '0' COMMENT 'Número de alojamientos',
  `number_habitaciones` int(11) unsigned DEFAULT '1' COMMENT 'Número de habitaciones',
  `number_camas_doble` int(11) unsigned DEFAULT '0' COMMENT 'Número de camas dobles',
  `number_camas_individual` int(11) unsigned DEFAULT '0' COMMENT 'Número de camas individuales',
  `number_sofas_cama` int(11) unsigned DEFAULT '0' COMMENT 'Número de sofás cama',
  `number_sofas_cama_doble` int(11) unsigned DEFAULT '0' COMMENT 'Número de sofás cama doble',
  `number_literas` int(11) unsigned DEFAULT '0' COMMENT 'Número de literas',
  `number_dormitorios_personal` int(11) DEFAULT NULL COMMENT 'Dormitorios de personal',
  `number_camas_supletorias` int(11) DEFAULT NULL COMMENT 'Camas supletorias',
  `number_aseos` int(11) unsigned DEFAULT '0' COMMENT 'Número de aseos',
  `number_banyos_banyera` int(11) unsigned DEFAULT '0' COMMENT 'Número de baños con bañera',
  `number_banyos_ducha` int(11) unsigned DEFAULT '0' COMMENT 'Número de baños con ducha',
  `number_metros_cuadrados` int(11) unsigned DEFAULT '0' COMMENT 'Superficie parcela',
  `number_metros_cuadrados_utiles` int(11) unsigned DEFAULT '0' COMMENT 'Superficie vivienda',
  `number_metros_cuadrados_construidos` int(11) unsigned DEFAULT '0' COMMENT 'Metros cuadrados, superfície construida',
  `number_metros_cuadrados_terraza` int(11) unsigned DEFAULT '0' COMMENT 'Metros cuadrados, terraza',
  `number_capacidad_maxima` int(11) unsigned DEFAULT '1' COMMENT 'Ocupación máxima adultos con niños',
  `number_capacidad_minima` int(11) unsigned DEFAULT '1' COMMENT 'Ocupación mínima',
  `number_capacidad_sin_suplemento` int(11) DEFAULT NULL COMMENT 'Ocupación sin suplemento',
  `number_cocinas` int(11) unsigned DEFAULT '0' COMMENT 'Número cocinas',
  `number_fun` int(11) DEFAULT NULL COMMENT 'ventilador',
  `text_cocina_clase` varchar(75) DEFAULT '' COMMENT 'Clase de cocina',
  `text_cocina_tipo` varchar(75) DEFAULT '' COMMENT 'Tipo de cocina',
  `text_orientacion` varchar(75) DEFAULT NULL COMMENT 'Orientación',
  `checkbox_grups` tinyint(4) unsigned DEFAULT '0' COMMENT 'grupos',
  `checkbox_aparcamiento` tinyint(4) DEFAULT NULL COMMENT 'aparcamiento',
  `number_plazas_aparcamiento` int(11) DEFAULT NULL COMMENT 'plazas de aparcamiento',
  `checkbox_piscina` tinyint(4) unsigned DEFAULT '0' COMMENT 'piscina',
  `text_dimensiones_piscina` varchar(75) DEFAULT NULL COMMENT 'dimensiones piscina',
  `text_tipo_piscina` varchar(255) DEFAULT '' COMMENT 'Tipo piscina',
  `checkbox_piscina_interior_climatizada` tinyint(4) DEFAULT NULL COMMENT 'piscina interior climatizada',
  `checkbox_piscina_climatizada` tinyint(4) DEFAULT NULL COMMENT 'piscina climatizada',
  `checkbox_piscina_de_agua_salada` tinyint(4) DEFAULT NULL COMMENT 'piscina agua salada',
  `checkbox_tv` tinyint(4) unsigned DEFAULT '0' COMMENT 'tv',
  `checkbox_jardin` tinyint(4) unsigned DEFAULT '0' COMMENT 'jardín',
  `checkbox_muebles_jardin` tinyint(4) unsigned DEFAULT '0' COMMENT 'muebles de jardín',
  `checkbox_plancha` tinyint(4) unsigned DEFAULT '0' COMMENT 'plancha',
  `checkbox_chimenea` tinyint(4) unsigned DEFAULT '0' COMMENT 'chimenea',
  `checkbox_barbacoa` tinyint(4) unsigned DEFAULT '0' COMMENT 'barbacoa',
  `checkbox_radio` tinyint(4) unsigned DEFAULT '0' COMMENT 'radio',
  `checkbox_minibar` tinyint(4) unsigned DEFAULT '0' COMMENT 'mini-bar',
  `checkbox_terraza` tinyint(4) unsigned DEFAULT '0' COMMENT 'terraza',
  `checkbox_parcela_vallada` tinyint(4) unsigned DEFAULT '0' COMMENT 'parcela vallada',
  `checkbox_caja_seguridad` tinyint(4) unsigned DEFAULT '0' COMMENT 'caja fuerte',
  `checkbox_ascensor` tinyint(4) unsigned DEFAULT '0' COMMENT 'ascensor',
  `checkbox_dvd` tinyint(4) unsigned DEFAULT '0' COMMENT 'reproductor de DVD',
  `checkbox_balcon` tinyint(4) unsigned DEFAULT '0' COMMENT 'balcón',
  `checkbox_exprimidor` tinyint(4) unsigned DEFAULT '0' COMMENT 'exprimidor',
  `checkbox_hervidor_electrico` tinyint(4) unsigned DEFAULT '0' COMMENT 'hervidor electrico',
  `checkbox_secador_pelo` tinyint(4) unsigned DEFAULT '0' COMMENT 'secador de pelo',
  `checkbox_zona_ninos` tinyint(4) unsigned DEFAULT '0' COMMENT 'zona para niños',
  `checkbox_gimnasio` tinyint(4) unsigned DEFAULT '0' COMMENT 'gimnasio',
  `checkbox_alarma` tinyint(4) unsigned DEFAULT '0' COMMENT 'alarma',
  `checkbox_tennis` tinyint(4) unsigned DEFAULT '0' COMMENT 'pista de tenis',
  `checkbox_squash` tinyint(4) unsigned DEFAULT '0' COMMENT 'squash',
  `checkbox_paddel` tinyint(4) unsigned DEFAULT '0' COMMENT 'paddel',
  `checkbox_sauna` tinyint(4) unsigned DEFAULT '0' COMMENT 'sauna',
  `checkbox_jacuzzi` tinyint(4) unsigned DEFAULT '0' COMMENT 'jacuzzi',
  `checkbox_apta_discapacitados` tinyint(4) unsigned DEFAULT '0' COMMENT 'Apta para discapacitados',
  `checkbox_nevera` tinyint(4) unsigned DEFAULT '0' COMMENT 'nevera',
  `checkbox_congelador` tinyint(4) unsigned DEFAULT '0' COMMENT 'congelador',
  `checkbox_lavavajillas` tinyint(4) unsigned DEFAULT '0' COMMENT 'lavavajillas',
  `checkbox_lavadora` tinyint(4) unsigned DEFAULT '0' COMMENT 'lavadora',
  `checkbox_secadora` tinyint(4) unsigned DEFAULT '0' COMMENT 'secadora',
  `checkbox_cafetera` tinyint(4) unsigned DEFAULT '0' COMMENT 'cafetera',
  `checkbox_tostadora` tinyint(4) unsigned DEFAULT '0' COMMENT 'tostadora',
  `checkbox_microondas` tinyint(4) unsigned DEFAULT '0' COMMENT 'microondas',
  `checkbox_horno` tinyint(4) unsigned DEFAULT '0' COMMENT 'horno',
  `checkbox_vajilla` tinyint(4) unsigned DEFAULT '0' COMMENT 'vajilla',
  `checkbox_utensilios_cocina` tinyint(4) unsigned DEFAULT '0' COMMENT 'utensilios de concina',
  `id_avantio` tinyint(3) DEFAULT NULL COMMENT 'id avantio',
  `dynamic_taxonomy_geographic_language_fields_customitzation` int(11) DEFAULT NULL COMMENT 'extra field',
  `checkbox_cerca_del_mar` tinyint(4) DEFAULT NULL COMMENT 'cerca del mar',
  `checkbox_acceso_directo_mar` tinyint(4) DEFAULT NULL COMMENT 'acceso directo mar',
  `checkbox_batidora` tinyint(4) DEFAULT NULL COMMENT 'batidora',
  `checkbox_extra_nevera` tinyint(4) DEFAULT NULL COMMENT 'extra nevera',
  `checkbox_vinoteca` tinyint(4) DEFAULT NULL COMMENT 'vinoteca / frigorifico vinos',
  `checkbox_hervidor_agua` tinyint(4) DEFAULT NULL COMMENT 'hervidor de agua',
  `checkbox_cafetera_nespresso` tinyint(4) DEFAULT NULL COMMENT 'cafetera nespresso',
  `checkbox_wifi` tinyint(4) DEFAULT NULL COMMENT 'wifi',
  `checkbox_fibra_optica` tinyint(4) DEFAULT NULL COMMENT 'fibra optica',
  `checkbox_internet_por_cable` tinyint(4) DEFAULT NULL COMMENT 'internet por cable',
  `checkbox_internet_velocidad_lenta` tinyint(4) DEFAULT NULL COMMENT 'internet velocidad lenta',
  `checkbox_internet_velocidad_media` tinyint(4) DEFAULT NULL COMMENT 'internet velocidad media',
  `checkbox_internet_velocidad_rapida` tinyint(4) DEFAULT NULL COMMENT 'internet velocidad rapida',
  `checkbox_aire_acondicionado` tinyint(4) DEFAULT NULL COMMENT 'aire acondicionado',
  `checkbox_ventilador` tinyint(4) DEFAULT NULL COMMENT 'ventilador',
  `checkbox_calefacion_central` tinyint(4) DEFAULT NULL COMMENT 'calefacion central',
  `checkbox_bomba_aire` tinyint(4) DEFAULT NULL COMMENT 'bomba aire frio/calor',
  `checkbox_suelo_radiante` tinyint(4) DEFAULT NULL COMMENT 'suelo radiante',
  `checkbox_cine` tinyint(4) DEFAULT NULL COMMENT 'cine',
  `checkbox_equipo_musica` tinyint(4) DEFAULT NULL COMMENT 'equipo de musica',
  `checkbox_barbacoa_gas` tinyint(4) DEFAULT NULL COMMENT 'barbacoa de gas',
  `checkbox_bano_turco` tinyint(4) DEFAULT NULL COMMENT 'baño turco',
  `checkbox_billar` tinyint(4) DEFAULT NULL COMMENT 'billar',
  `checkbox_ping_pong` tinyint(4) DEFAULT NULL COMMENT 'ping pong',
  `checkbox_seguridad_piscina` tinyint(4) DEFAULT NULL COMMENT 'seguridad piscina',
  `checkbox_accesorios_yoga` tinyint(4) DEFAULT NULL COMMENT 'accesorios yoga',
  `checkbox_hosekeeping` tinyint(4) DEFAULT NULL COMMENT 'hosekeeping on site',
  `checkbox_trona` tinyint(4) DEFAULT NULL COMMENT 'trona',
  `checkbox_mascotas` tinyint(4) DEFAULT NULL COMMENT 'mascotas',
  `checkbox_helipuerto` tinyint(4) DEFAULT NULL COMMENT 'helipuerto',
  `checkbox_zona_de_bar_exterior` tinyint(4) DEFAULT NULL COMMENT 'zona de bar exterior',
  `checkbox_discoteca_privada` tinyint(4) DEFAULT NULL COMMENT 'discoteca privada',
  `checkbox_distancias_playa_arena` tinyint(4) DEFAULT NULL COMMENT 'distancias playa arena',
  `checkbox_distancias_playa_roca` tinyint(4) DEFAULT NULL COMMENT 'distancias playa roca',
  `checkbox_distancias_golf` tinyint(4) DEFAULT NULL COMMENT 'distancias golf',
  `checkbox_distancias_pueblo` tinyint(4) DEFAULT NULL COMMENT 'distancias pueblo',
  `checkbox_distancias_supermercado` tinyint(4) DEFAULT NULL COMMENT 'distancias supermercado',
  `checkbox_distancias_aeropuerto` tinyint(4) DEFAULT NULL COMMENT 'distancias aeropuerto',
  `multiple_taxonomy_geographic_language_extra` varchar(255) DEFAULT NULL COMMENT 'coleccion',
  `multiple_taxonomy_geographic_language_carac` varchar(255) DEFAULT NULL COMMENT 'carac avantio',
  `status` varchar(128) DEFAULT 'ACTIVED' COMMENT 'estado',
  `position` int(11) DEFAULT '0' COMMENT 'posicion',
  `text_tipo_descuento` varchar(255) DEFAULT NULL COMMENT 'tipo descuento',
  PRIMARY KEY (`id`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Alojamientos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_availabilities`
--

DROP TABLE IF EXISTS `avantio_availabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_availabilities` (
  `accommodation_id` int(10) unsigned NOT NULL,
  `occupation_rule_id` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`accommodation_id`,`occupation_rule_id`,`fecha`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_availabilities_tmp`
--

DROP TABLE IF EXISTS `avantio_availabilities_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_availabilities_tmp` (
  `accommodation_id` int(10) unsigned NOT NULL,
  `occupation_rule_id` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`accommodation_id`,`occupation_rule_id`,`fecha`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_booking`
--

DROP TABLE IF EXISTS `avantio_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_booking` (
  `booking_code` int(11) NOT NULL COMMENT 'id bookig',
  `avantio_accomodations` int(11) NOT NULL COMMENT 'identificador',
  `id_booking_data` int(11) NOT NULL COMMENT 'identificador booking data',
  `start_date` date NOT NULL COMMENT 'start date',
  `end_date` date NOT NULL COMMENT 'end date',
  `booking_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'booking date',
  `check_in_schedule` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `check_out_schedule` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Booking';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_booking_data`
--

DROP TABLE IF EXISTS `avantio_booking_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_booking_data` (
  `id_booking_data` int(11) NOT NULL COMMENT 'identificador',
  `price` float NOT NULL COMMENT 'precio',
  `deposit` float NOT NULL COMMENT 'deposito',
  `currency` varchar(128) NOT NULL COMMENT 'moneda',
  `board` varchar(128) NOT NULL COMMENT 'board',
  `avantio_accomodations` int(11) NOT NULL COMMENT 'identificador acommodation',
  `user_code` int(11) NOT NULL COMMENT 'codigo usuario',
  `adults_number` int(11) NOT NULL COMMENT 'numero adultos',
  `payment_method` int(11) NOT NULL COMMENT 'metodo pago',
  `booking_type` int(11) NOT NULL COMMENT 'booking type',
  PRIMARY KEY (`id_booking_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Booking Data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_booking_localizer`
--

DROP TABLE IF EXISTS `avantio_booking_localizer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_booking_localizer` (
  `booking_code` int(11) NOT NULL COMMENT 'id bookig',
  `id_avantio_booking_localizer` varchar(255) NOT NULL COMMENT 'id localizer',
  PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Booking localizer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_booking_type`
--

DROP TABLE IF EXISTS `avantio_booking_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_booking_type` (
  `id_booking_type` int(11) NOT NULL COMMENT 'identificador',
  `booking_type` varchar(255) NOT NULL COMMENT 'booking type',
  PRIMARY KEY (`id_booking_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Booking Type';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_caracteristicas`
--

DROP TABLE IF EXISTS `avantio_caracteristicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_caracteristicas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` char(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguage',
  `text_checkbox` varchar(255) DEFAULT NULL COMMENT 'grupos',
  `text_page_title` varchar(120) DEFAULT NULL COMMENT 'Título página',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Automátic slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` varchar(128) DEFAULT 'ACTIVED' COMMENT 'Status',
  `position` int(11) DEFAULT NULL COMMENT 'position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='avantio caracteristicas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_client`
--

DROP TABLE IF EXISTS `avantio_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_client` (
  `id_avantio_client` int(11) NOT NULL COMMENT 'identificador',
  `name` varchar(255) NOT NULL COMMENT 'client name',
  `surname` varchar(255) NOT NULL COMMENT 'surname name',
  `dni` varchar(255) NOT NULL COMMENT 'dni',
  `address` varchar(255) NOT NULL COMMENT 'dirección',
  `locality` varchar(255) NOT NULL COMMENT 'localidad',
  `postal_code` varchar(128) NOT NULL COMMENT 'codigo postal',
  `city` varchar(255) NOT NULL COMMENT 'ciudad',
  `country` varchar(255) NOT NULL COMMENT 'pais',
  `iso_country_code` varchar(128) NOT NULL COMMENT 'codigo pais',
  `phone` int(11) NOT NULL COMMENT 'teléfono',
  `phone2` int(11) NOT NULL COMMENT 'teléfono 2',
  `email` varchar(255) NOT NULL COMMENT 'email',
  PRIMARY KEY (`id_avantio_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Avantio client';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_inmovilla`
--

DROP TABLE IF EXISTS `avantio_inmovilla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_inmovilla` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador inmueble',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'language',
  `text_title` varchar(255) DEFAULT '' COMMENT 'Nombre del alojamiento',
  `text_referencia` varchar(45) DEFAULT NULL COMMENT 'Referencia',
  `text_userid` varchar(75) DEFAULT '' COMMENT 'Id usuario',
  `text_company` varchar(75) DEFAULT '' COMMENT 'Nombre compañia',
  `number_companyid` int(10) unsigned DEFAULT '0' COMMENT 'Id compañia',
  `text_numero_registro_turistico` varchar(255) DEFAULT '' COMMENT 'Número de registro turístico',
  `avantio_occupation_rules` int(11) unsigned DEFAULT NULL COMMENT 'Regla de ocupación',
  `avantio_pricemodifiers` int(11) unsigned DEFAULT NULL COMMENT 'Modificador de precio',
  `avantio_gallery` int(11) unsigned DEFAULT NULL COMMENT 'Galería',
  `dynamic_taxonomy` int(11) DEFAULT NULL COMMENT 'Taxonomía (Kinds)',
  `dynamic_geocountry` int(11) DEFAULT NULL COMMENT 'País',
  `dynamic_georegion` int(11) DEFAULT NULL COMMENT 'Región',
  `dynamic_geocity` int(11) DEFAULT NULL COMMENT 'Ciudad',
  `dynamic_geolocality` int(11) DEFAULT NULL COMMENT 'Localidad',
  `dynamic_geodistrict` int(11) DEFAULT NULL COMMENT 'Distrito',
  `text_geo_cp` text COMMENT 'Código Postal',
  `text_geo_tipo_calle` varchar(20) DEFAULT NULL COMMENT 'Nombre de vía',
  `text_geo_calle` varchar(255) DEFAULT NULL COMMENT 'Calle',
  `text_geo_numero` varchar(20) DEFAULT NULL COMMENT 'Número',
  `text_geo_bloque` varchar(20) DEFAULT NULL COMMENT 'Piso / Letra',
  `text_geo_puerta` varchar(20) DEFAULT NULL COMMENT 'Puerta',
  `text_geo_piso` varchar(20) DEFAULT NULL COMMENT 'Piso',
  `text_geo_latitud` varchar(45) DEFAULT NULL COMMENT 'GPS Latitud',
  `text_geo_longitud` varchar(45) DEFAULT NULL COMMENT 'GPS Longitud',
  `number_geo_zoom` int(11) unsigned DEFAULT NULL COMMENT 'Zoom Google Maps',
  `number_unidades` smallint(11) unsigned DEFAULT '0' COMMENT 'Número de alojamientos',
  `number_habitaciones` int(11) unsigned DEFAULT '1' COMMENT 'Número de habitaciones',
  `number_camas_doble` int(11) unsigned DEFAULT '0' COMMENT 'Número de camas dobles',
  `number_camas_individual` int(11) unsigned DEFAULT '0' COMMENT 'Número de camas individuales',
  `number_sofas_cama` int(11) unsigned DEFAULT '0' COMMENT 'Número de sofás cama',
  `number_sofas_cama_doble` int(11) unsigned DEFAULT '0' COMMENT 'Número de sofás cama doble',
  `number_literas` int(11) unsigned DEFAULT '0' COMMENT 'Número de literas',
  `number_dormitorios_personal` int(11) DEFAULT NULL COMMENT 'Dormitorios de personal',
  `number_camas_supletorias` int(11) DEFAULT NULL COMMENT 'Camas supletorias',
  `number_aseos` int(11) unsigned DEFAULT '0' COMMENT 'Número de aseos',
  `number_banyos_banyera` int(11) unsigned DEFAULT '0' COMMENT 'Número de baños con bañera',
  `number_banyos_ducha` int(11) unsigned DEFAULT '0' COMMENT 'Número de baños con ducha',
  `number_metros_cuadrados` int(11) unsigned DEFAULT '0' COMMENT 'Superficie parcela',
  `number_metros_cuadrados_utiles` int(11) unsigned DEFAULT '0' COMMENT 'Superficie vivienda',
  `number_metros_cuadrados_construidos` int(11) unsigned DEFAULT '0' COMMENT 'Metros cuadrados, superfície construida',
  `number_metros_cuadrados_terraza` int(11) unsigned DEFAULT '0' COMMENT 'Metros cuadrados, terraza',
  `number_capacidad_maxima` int(11) unsigned DEFAULT '1' COMMENT 'Ocupación máxima adultos con niños',
  `number_capacidad_minima` int(11) unsigned DEFAULT '1' COMMENT 'Ocupación mínima',
  `number_capacidad_sin_suplemento` int(11) DEFAULT NULL COMMENT 'Ocupación sin suplemento',
  `number_cocinas` int(11) unsigned DEFAULT '0' COMMENT 'Número cocinas',
  `number_fun` int(11) DEFAULT NULL COMMENT 'ventilador',
  `text_cocina_clase` varchar(75) DEFAULT '' COMMENT 'Clase de cocina',
  `text_cocina_tipo` varchar(75) DEFAULT '' COMMENT 'Tipo de cocina',
  `text_orientacion` varchar(75) DEFAULT NULL COMMENT 'Orientación',
  `checkbox_grups` tinyint(4) unsigned DEFAULT '0' COMMENT 'grupos',
  `checkbox_aparcamiento` tinyint(4) DEFAULT NULL COMMENT 'aparcamiento',
  `number_plazas_aparcamiento` int(11) DEFAULT NULL COMMENT 'plazas de aparcamiento',
  `checkbox_piscina` tinyint(4) unsigned DEFAULT '0' COMMENT 'piscina',
  `text_dimensiones_piscina` varchar(75) DEFAULT NULL COMMENT 'dimensiones piscina',
  `text_tipo_piscina` varchar(255) DEFAULT '' COMMENT 'Tipo piscina',
  `checkbox_piscina_interior_climatizada` tinyint(4) DEFAULT NULL COMMENT 'piscina interior climatizada',
  `checkbox_piscina_climatizada` tinyint(4) DEFAULT NULL COMMENT 'piscina climatizada',
  `checkbox_piscina_de_agua_salada` tinyint(4) DEFAULT NULL COMMENT 'piscina agua salada',
  `checkbox_tv` tinyint(4) unsigned DEFAULT '0' COMMENT 'tv',
  `checkbox_jardin` tinyint(4) unsigned DEFAULT '0' COMMENT 'jardín',
  `checkbox_muebles_jardin` tinyint(4) unsigned DEFAULT '0' COMMENT 'muebles de jardín',
  `checkbox_plancha` tinyint(4) unsigned DEFAULT '0' COMMENT 'plancha',
  `checkbox_chimenea` tinyint(4) unsigned DEFAULT '0' COMMENT 'chimenea',
  `checkbox_barbacoa` tinyint(4) unsigned DEFAULT '0' COMMENT 'barbacoa',
  `checkbox_radio` tinyint(4) unsigned DEFAULT '0' COMMENT 'radio',
  `checkbox_minibar` tinyint(4) unsigned DEFAULT '0' COMMENT 'mini-bar',
  `checkbox_terraza` tinyint(4) unsigned DEFAULT '0' COMMENT 'terraza',
  `checkbox_parcela_vallada` tinyint(4) unsigned DEFAULT '0' COMMENT 'parcela vallada',
  `checkbox_caja_seguridad` tinyint(4) unsigned DEFAULT '0' COMMENT 'caja fuerte',
  `checkbox_ascensor` tinyint(4) unsigned DEFAULT '0' COMMENT 'ascensor',
  `checkbox_dvd` tinyint(4) unsigned DEFAULT '0' COMMENT 'reproductor de DVD',
  `checkbox_balcon` tinyint(4) unsigned DEFAULT '0' COMMENT 'balcón',
  `checkbox_exprimidor` tinyint(4) unsigned DEFAULT '0' COMMENT 'exprimidor',
  `checkbox_hervidor_electrico` tinyint(4) unsigned DEFAULT '0' COMMENT 'hervidor electrico',
  `checkbox_secador_pelo` tinyint(4) unsigned DEFAULT '0' COMMENT 'secador de pelo',
  `checkbox_zona_ninos` tinyint(4) unsigned DEFAULT '0' COMMENT 'zona para niños',
  `checkbox_gimnasio` tinyint(4) unsigned DEFAULT '0' COMMENT 'gimnasio',
  `checkbox_alarma` tinyint(4) unsigned DEFAULT '0' COMMENT 'alarma',
  `checkbox_tennis` tinyint(4) unsigned DEFAULT '0' COMMENT 'pista de tenis',
  `checkbox_squash` tinyint(4) unsigned DEFAULT '0' COMMENT 'squash',
  `checkbox_paddel` tinyint(4) unsigned DEFAULT '0' COMMENT 'paddel',
  `checkbox_sauna` tinyint(4) unsigned DEFAULT '0' COMMENT 'sauna',
  `checkbox_jacuzzi` tinyint(4) unsigned DEFAULT '0' COMMENT 'jacuzzi',
  `checkbox_apta_discapacitados` tinyint(4) unsigned DEFAULT '0' COMMENT 'Apta para discapacitados',
  `checkbox_nevera` tinyint(4) unsigned DEFAULT '0' COMMENT 'nevera',
  `checkbox_congelador` tinyint(4) unsigned DEFAULT '0' COMMENT 'congelador',
  `checkbox_lavavajillas` tinyint(4) unsigned DEFAULT '0' COMMENT 'lavavajillas',
  `checkbox_lavadora` tinyint(4) unsigned DEFAULT '0' COMMENT 'lavadora',
  `checkbox_secadora` tinyint(4) unsigned DEFAULT '0' COMMENT 'secadora',
  `checkbox_cafetera` tinyint(4) unsigned DEFAULT '0' COMMENT 'cafetera',
  `checkbox_tostadora` tinyint(4) unsigned DEFAULT '0' COMMENT 'tostadora',
  `checkbox_microondas` tinyint(4) unsigned DEFAULT '0' COMMENT 'microondas',
  `checkbox_horno` tinyint(4) unsigned DEFAULT '0' COMMENT 'horno',
  `checkbox_vajilla` tinyint(4) unsigned DEFAULT '0' COMMENT 'vajilla',
  `checkbox_utensilios_cocina` tinyint(4) unsigned DEFAULT '0' COMMENT 'utensilios de concina',
  `id_avantio` tinyint(3) DEFAULT NULL COMMENT 'id avantio',
  `dynamic_taxonomy_geographic_language_fields_customitzation` int(11) DEFAULT NULL COMMENT 'extra field',
  `checkbox_cerca_del_mar` tinyint(4) DEFAULT NULL COMMENT 'cerca del mar',
  `checkbox_acceso_directo_mar` tinyint(4) DEFAULT NULL COMMENT 'acceso directo mar',
  `checkbox_batidora` tinyint(4) DEFAULT NULL COMMENT 'batidora',
  `checkbox_extra_nevera` tinyint(4) DEFAULT NULL COMMENT 'extra nevera',
  `checkbox_vinoteca` tinyint(4) DEFAULT NULL COMMENT 'vinoteca / frigorifico vinos',
  `checkbox_hervidor_agua` tinyint(4) DEFAULT NULL COMMENT 'hervidor de agua',
  `checkbox_cafetera_nespresso` tinyint(4) DEFAULT NULL COMMENT 'cafetera nespresso',
  `checkbox_wifi` tinyint(4) DEFAULT NULL COMMENT 'wifi',
  `checkbox_fibra_optica` tinyint(4) DEFAULT NULL COMMENT 'fibra optica',
  `checkbox_internet_por_cable` tinyint(4) DEFAULT NULL COMMENT 'internet por cable',
  `checkbox_internet_velocidad_lenta` tinyint(4) DEFAULT NULL COMMENT 'internet velocidad lenta',
  `checkbox_internet_velocidad_media` tinyint(4) DEFAULT NULL COMMENT 'internet velocidad media',
  `checkbox_internet_velocidad_rapida` tinyint(4) DEFAULT NULL COMMENT 'internet velocidad rapida',
  `checkbox_aire_acondicionado` tinyint(4) DEFAULT NULL COMMENT 'aire acondicionado',
  `checkbox_ventilador` tinyint(4) DEFAULT NULL COMMENT 'ventilador',
  `checkbox_calefacion_central` tinyint(4) DEFAULT NULL COMMENT 'calefacion central',
  `checkbox_bomba_aire` tinyint(4) DEFAULT NULL COMMENT 'bomba aire frio/calor',
  `checkbox_suelo_radiante` tinyint(4) DEFAULT NULL COMMENT 'suelo radiante',
  `checkbox_cine` tinyint(4) DEFAULT NULL COMMENT 'cine',
  `checkbox_equipo_musica` tinyint(4) DEFAULT NULL COMMENT 'equipo de musica',
  `checkbox_barbacoa_gas` tinyint(4) DEFAULT NULL COMMENT 'barbacoa de gas',
  `checkbox_bano_turco` tinyint(4) DEFAULT NULL COMMENT 'baño turco',
  `checkbox_billar` tinyint(4) DEFAULT NULL COMMENT 'billar',
  `checkbox_ping_pong` tinyint(4) DEFAULT NULL COMMENT 'ping pong',
  `checkbox_seguridad_piscina` tinyint(4) DEFAULT NULL COMMENT 'seguridad piscina',
  `checkbox_accesorios_yoga` tinyint(4) DEFAULT NULL COMMENT 'accesorios yoga',
  `checkbox_hosekeeping` tinyint(4) DEFAULT NULL COMMENT 'hosekeeping on site',
  `checkbox_trona` tinyint(4) DEFAULT NULL COMMENT 'trona',
  `checkbox_mascotas` tinyint(4) DEFAULT NULL COMMENT 'mascotas',
  `checkbox_helipuerto` tinyint(4) DEFAULT NULL COMMENT 'helipuerto',
  `checkbox_zona_de_bar_exterior` tinyint(4) DEFAULT NULL COMMENT 'zona de bar exterior',
  `checkbox_discoteca_privada` tinyint(4) DEFAULT NULL COMMENT 'discoteca privada',
  `checkbox_distancias_playa_arena` tinyint(4) DEFAULT NULL COMMENT 'distancias playa arena',
  `checkbox_distancias_playa_roca` tinyint(4) DEFAULT NULL COMMENT 'distancias playa roca',
  `checkbox_distancias_golf` tinyint(4) DEFAULT NULL COMMENT 'distancias golf',
  `checkbox_distancias_pueblo` tinyint(4) DEFAULT NULL COMMENT 'distancias pueblo',
  `checkbox_distancias_supermercado` tinyint(4) DEFAULT NULL COMMENT 'distancias supermercado',
  `checkbox_distancias_aeropuerto` tinyint(4) DEFAULT NULL COMMENT 'distancias aeropuerto',
  `multiple_taxonomy_geographic_language_extra` varchar(255) DEFAULT NULL COMMENT 'coleccion',
  `multiple_taxonomy_geographic_language_carac` varchar(255) DEFAULT NULL COMMENT 'carac avantio',
  `status` varchar(128) DEFAULT 'ACTIVED' COMMENT 'estado',
  `position` int(11) DEFAULT '0' COMMENT 'posicion',
  `text_tipo_descuento` varchar(255) DEFAULT NULL COMMENT 'tipo descuento',
  PRIMARY KEY (`id`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Alojamientos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_occupation_rules`
--

DROP TABLE IF EXISTS `avantio_occupation_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_occupation_rules` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `min_nights` smallint(5) unsigned NOT NULL DEFAULT '1',
  `min_nights_online` smallint(5) unsigned NOT NULL DEFAULT '1',
  `checkin` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `checkout` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`fecha`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Reglas de ocupación';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_occupation_rules_names`
--

DROP TABLE IF EXISTS `avantio_occupation_rules_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_occupation_rules_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_occupation_rules_tmp`
--

DROP TABLE IF EXISTS `avantio_occupation_rules_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_occupation_rules_tmp` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `min_nights` smallint(5) unsigned NOT NULL DEFAULT '1',
  `min_nights_online` smallint(5) unsigned NOT NULL DEFAULT '1',
  `checkin` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `checkout` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`fecha`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Reglas de ocupación';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_pricemodifiers`
--

DROP TABLE IF EXISTS `avantio_pricemodifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_pricemodifiers` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(75) NOT NULL DEFAULT '',
  `fecha` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `code` varchar(20) NOT NULL,
  `acumulative` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `min_nights` int(11) unsigned NOT NULL DEFAULT '0',
  `max_nights` int(11) unsigned NOT NULL DEFAULT '0',
  `type` enum('tpc','val') NOT NULL DEFAULT 'tpc',
  `amount` decimal(7,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`,`fecha`,`min_nights`,`max_nights`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_pricemodifiers_tmp`
--

DROP TABLE IF EXISTS `avantio_pricemodifiers_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_pricemodifiers_tmp` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(75) NOT NULL DEFAULT '',
  `fecha` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `code` varchar(20) NOT NULL,
  `acumulative` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `min_nights` int(11) unsigned NOT NULL DEFAULT '0',
  `max_nights` int(11) unsigned NOT NULL DEFAULT '0',
  `type` enum('tpc','val') NOT NULL DEFAULT 'tpc',
  `amount` decimal(7,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`,`fecha`,`min_nights`,`max_nights`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_pricemodifiers_tmp_vlad`
--

DROP TABLE IF EXISTS `avantio_pricemodifiers_tmp_vlad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_pricemodifiers_tmp_vlad` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(75) NOT NULL DEFAULT '',
  `fecha` date NOT NULL,
  `code` varchar(20) NOT NULL,
  `acumulative` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `min_nights` int(11) unsigned NOT NULL DEFAULT '0',
  `max_nights` int(11) unsigned NOT NULL DEFAULT '0',
  `type` enum('tpc','val') NOT NULL DEFAULT 'tpc',
  `amount` decimal(7,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`,`fecha`,`min_nights`,`max_nights`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_rates`
--

DROP TABLE IF EXISTS `avantio_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_rates` (
  `accommodation_id` int(10) unsigned NOT NULL,
  `capacity` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `price` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accommodation_id`,`capacity`,`fecha`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_rates_acommodation`
--

DROP TABLE IF EXISTS `avantio_rates_acommodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_rates_acommodation` (
  `id` int(11) NOT NULL,
  `id_hshv_avantio_acommodation` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Hshv Accomodation rates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_rates_names`
--

DROP TABLE IF EXISTS `avantio_rates_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_rates_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_rates_tmp`
--

DROP TABLE IF EXISTS `avantio_rates_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_rates_tmp` (
  `accommodation_id` int(10) unsigned NOT NULL,
  `capacity` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `price` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accommodation_id`,`capacity`,`fecha`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_report`
--

DROP TABLE IF EXISTS `avantio_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parametro_report` varchar(255) NOT NULL DEFAULT 'es',
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Report Avantio';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_report_historico`
--

DROP TABLE IF EXISTS `avantio_report_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_report_historico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_avantio_report` int(11) NOT NULL,
  `fichero` varchar(255) DEFAULT 'fichero',
  PRIMARY KEY (`id`),
  KEY `fk_avantio_report_historico_y_avantio_report_constraint` (`id_avantio_report`),
  CONSTRAINT `fk_avantio_report_historico_y_avantio_report_constraint` FOREIGN KEY (`id_avantio_report`) REFERENCES `avantio_report` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Report Avantio historico';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  `session_id` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Información de contacto',
  `name` varchar(75) DEFAULT 'Nombre' COMMENT 'Nombre',
  `email` varchar(75) DEFAULT NULL COMMENT 'Email',
  `phone` varchar(75) DEFAULT NULL COMMENT 'Telf',
  `subject` varchar(75) DEFAULT NULL COMMENT 'Titulo',
  `form_message` varchar(255) DEFAULT NULL COMMENT 'Mensaje',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='Contacto';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_accion`
--

DROP TABLE IF EXISTS `dynamic_accion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_accion` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Cabecera',
  `text_title_plural` varchar(75) DEFAULT NULL COMMENT 'título plural',
  `text_title_url` varchar(75) DEFAULT NULL COMMENT 'url',
  `textarea_description` text COMMENT 'Contenido de la página',
  `text_body_title_no_res` varchar(75) DEFAULT NULL COMMENT 'Título de la página cuando NO se encuentran resultados',
  `textarea_description_no_res` text COMMENT 'Contenido de la página cuando NO se encuentran resultados',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tipos Aciones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_advantages`
--

DROP TABLE IF EXISTS `dynamic_advantages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_advantages` (
  `id` int(11) NOT NULL,
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `textarea_description` text COMMENT 'Descripción',
  `text_icon` varchar(45) DEFAULT NULL COMMENT 'Icon: ‘wifi’, ‘reloj’, ‘teleoperadora’, ‘dinero’, ‘bienvenido’, ‘llave’',
  `checkbox_destacada_home` varchar(45) DEFAULT NULL COMMENT 'Destacar en la home (si/no)',
  `checkbox_destacada_alojamiento` varchar(45) DEFAULT NULL COMMENT 'Destacar en la página de alojamiento',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ventajas';
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `dynamic_caracteristicas`
--

DROP TABLE IF EXISTS `dynamic_caracteristicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_caracteristicas` (
  `id` int(11) NOT NULL COMMENT 'Identificador',
  `language` char(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguage',
  `text_title` varchar(256) DEFAULT NULL COMMENT 'Título',
  `text_translaton` varchar(256) DEFAULT NULL COMMENT 'Translation',
  `text_grups` varchar(255) DEFAULT NULL COMMENT 'grupos',
  `text_aparcamiento` varchar(255) DEFAULT NULL COMMENT 'aparcamiento',
  `text_piscina` varchar(255) DEFAULT NULL COMMENT 'piscina',
  `text_piscina_interior_climatizada` varchar(255) DEFAULT NULL COMMENT 'piscina interior climatizada',
  `text_piscina_climatizada` varchar(255) DEFAULT NULL COMMENT 'piscina climatizada',
  `text_piscina_de_agua_salada` varchar(255) DEFAULT NULL COMMENT 'piscina agua salada',
  `text_tv` varchar(255) DEFAULT NULL COMMENT 'tv',
  `text_jardin` varchar(255) DEFAULT NULL COMMENT 'jardín',
  `text_muebles_jardin` varchar(255) DEFAULT NULL COMMENT 'muebles de jardín',
  `text_plancha` varchar(255) DEFAULT NULL COMMENT 'plancha',
  `text_chimenea` varchar(255) DEFAULT NULL COMMENT 'chimenea',
  `text_barbacoa` varchar(255) DEFAULT NULL COMMENT 'barbacoa',
  `text_radio` varchar(255) DEFAULT NULL COMMENT 'radio',
  `text_minibar` varchar(255) DEFAULT NULL COMMENT 'mini-bar',
  `text_terraza` varchar(255) DEFAULT NULL COMMENT 'terraza',
  `text_parcela_vallada` varchar(255) DEFAULT NULL COMMENT 'parcela vallada',
  `text_caja_seguridad` varchar(255) DEFAULT NULL COMMENT 'caja fuerte',
  `text_ascensor` varchar(255) DEFAULT NULL COMMENT 'ascensor',
  `text_dvd` varchar(255) DEFAULT NULL COMMENT 'reproductor de DVD',
  `text_balcon` varchar(255) DEFAULT NULL COMMENT 'balcón',
  `text_exprimidor` varchar(255) DEFAULT NULL COMMENT 'exprimidor',
  `text_hervidor_electrico` varchar(255) DEFAULT NULL COMMENT 'hervidor electrico',
  `text_secador_pelo` varchar(255) DEFAULT NULL COMMENT 'secador de pelo',
  `text_zona_ninos` varchar(255) DEFAULT NULL COMMENT 'zona para niños',
  `text_gimnasio` varchar(255) DEFAULT NULL COMMENT 'gimnasio',
  `text_alarma` varchar(255) DEFAULT NULL COMMENT 'alarma',
  `text_tennis` varchar(255) DEFAULT NULL COMMENT 'pista de tenis',
  `text_squash` varchar(255) DEFAULT NULL COMMENT 'squash',
  `text_paddel` varchar(255) DEFAULT NULL COMMENT 'paddel',
  `text_sauna` varchar(255) DEFAULT NULL COMMENT 'sauna',
  `text_jacuzzi` varchar(255) DEFAULT NULL COMMENT 'jacuzzi',
  `text_apta_discapacitados` varchar(255) DEFAULT NULL COMMENT 'Apta para discapacitados',
  `text_nevera` varchar(255) DEFAULT NULL COMMENT 'nevera',
  `text_congelador` varchar(255) DEFAULT NULL COMMENT 'congelador',
  `text_lavavajillas` varchar(255) DEFAULT NULL COMMENT 'lavavajillas',
  `text_lavadora` varchar(255) DEFAULT NULL COMMENT 'lavadora',
  `text_secadora` varchar(255) DEFAULT NULL COMMENT 'secadora',
  `text_cafetera` varchar(255) DEFAULT NULL COMMENT 'cafetera',
  `text_tostadora` varchar(255) DEFAULT NULL COMMENT 'tostadora',
  `text_microondas` varchar(255) DEFAULT NULL COMMENT 'microondas',
  `text_horno` varchar(255) DEFAULT NULL COMMENT 'horno',
  `text_vajilla` varchar(255) DEFAULT NULL COMMENT 'vajilla',
  `text_utensilios_cocina` varchar(255) DEFAULT NULL COMMENT 'utensilios de concina',
  `text_cerca_del_mar` varchar(255) DEFAULT NULL COMMENT 'cerca del mar',
  `text_acceso_directo_mar` varchar(255) DEFAULT NULL COMMENT 'acceso directo mar',
  `text_batidora` varchar(255) DEFAULT NULL COMMENT 'batidora',
  `text_extra_nevera` varchar(255) DEFAULT NULL COMMENT 'extra nevera',
  `text_vinoteca` varchar(255) DEFAULT NULL COMMENT 'vinoteca / frigorifico vinos',
  `text_hervidor_agua` varchar(255) DEFAULT NULL COMMENT 'hervidor de agua',
  `text_cafetera_nespresso` varchar(255) DEFAULT NULL COMMENT 'cafetera nespresso',
  `text_wifi` varchar(255) DEFAULT NULL COMMENT 'wifi',
  `text_fibra_optica` varchar(255) DEFAULT NULL COMMENT 'fibra optica',
  `text_internet_por_cable` varchar(255) DEFAULT NULL COMMENT 'internet por cable',
  `text_internet_velocidad_lenta` varchar(255) DEFAULT NULL COMMENT 'internet velocidad lenta',
  `text_internet_velocidad_media` varchar(255) DEFAULT NULL COMMENT 'internet velocidad media',
  `text_internet_velocidad_rapida` varchar(255) DEFAULT NULL COMMENT 'internet velocidad rapida',
  `text_aire_acondicionado` varchar(255) DEFAULT NULL COMMENT 'aire acondicionado',
  `text_ventilador` varchar(255) DEFAULT NULL COMMENT 'ventilador',
  `text_calefacion_central` varchar(255) DEFAULT NULL COMMENT 'calefacion central',
  `text_bomba_aire` varchar(255) DEFAULT NULL COMMENT 'bomba aire frio/calor',
  `text_suelo_radiante` varchar(255) DEFAULT NULL COMMENT 'suelo radiante',
  `text_cine` varchar(255) DEFAULT NULL COMMENT 'cine',
  `text_equipo_musica` varchar(255) DEFAULT NULL COMMENT 'equipo de musica',
  `text_barbacoa_gas` varchar(255) DEFAULT NULL COMMENT 'barbacoa de gas',
  `text_bano_turco` varchar(255) DEFAULT NULL COMMENT 'baño turco',
  `text_billar` varchar(255) DEFAULT NULL COMMENT 'billar',
  `text_ping_pong` varchar(255) DEFAULT NULL COMMENT 'ping pong',
  `text_seguridad_piscina` varchar(255) DEFAULT NULL COMMENT 'seguridad piscina',
  `text_accesorios_yoga` varchar(255) DEFAULT NULL COMMENT 'accesorios yoga',
  `text_hosekeeping` varchar(255) DEFAULT NULL COMMENT 'hosekeeping on site',
  `text_trona` varchar(255) DEFAULT NULL COMMENT 'trona',
  `text_mascotas` varchar(255) DEFAULT NULL COMMENT 'mascotas',
  `text_helipuerto` varchar(255) DEFAULT NULL COMMENT 'helipuerto',
  `multiple_avantio_caracteristicas` varchar(255) DEFAULT NULL COMMENT 'caracteristicas originales',
  `text_page_title` varchar(255) DEFAULT NULL COMMENT 'Título sobre el alojamiento',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 characters)',
  `text_meta_robots` varchar(255) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `text_meta_description` text COMMENT 'Meta Description (max 255 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_caracteristicas_iconos`
--

DROP TABLE IF EXISTS `dynamic_caracteristicas_iconos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_caracteristicas_iconos` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Listado caracteristicas iconos',
  `text_grups` varchar(128) DEFAULT NULL COMMENT 'grups',
  `text_aparcamiento` varchar(128) DEFAULT NULL COMMENT 'aparcamiento',
  `text_piscina_interior_climatizada` varchar(128) DEFAULT NULL COMMENT 'piscina interior climatizada',
  `text_piscina_climatizada` varchar(128) DEFAULT NULL COMMENT 'piscina climatizada',
  `text_piscina_de_agua_salada` varchar(128) DEFAULT NULL COMMENT 'piscina climatizada agua salada',
  `text_tv` varchar(128) DEFAULT NULL COMMENT 'tv',
  `text_jardin` varchar(128) DEFAULT NULL COMMENT 'jardin',
  `text_muebles_jardin` varchar(128) DEFAULT NULL COMMENT 'muebles jardin',
  `text_plancha` varchar(128) DEFAULT NULL COMMENT 'plancha',
  `text_chimenea` varchar(128) DEFAULT NULL COMMENT 'chimenea',
  `text_barbacoa` varchar(128) DEFAULT NULL COMMENT 'barbacoa',
  `text_radio` varchar(128) DEFAULT NULL COMMENT 'radio',
  `text_minibar` varchar(128) DEFAULT NULL COMMENT 'minibar',
  `text_terraza` varchar(128) DEFAULT NULL COMMENT 'terraza',
  `text_parcela_vallada` varchar(128) DEFAULT NULL COMMENT 'parcela vallada',
  `text_caja_seguridad` varchar(128) DEFAULT NULL COMMENT 'caja seguridad',
  `text_ascensor` varchar(128) DEFAULT NULL COMMENT 'ascensor',
  `text_dvd` varchar(128) DEFAULT NULL COMMENT 'dvd',
  `text_balcon` varchar(128) DEFAULT NULL COMMENT 'balcon',
  `text_exprimidor` varchar(128) DEFAULT NULL COMMENT 'exprimidor',
  `text_hervidor_electrico` varchar(128) DEFAULT NULL COMMENT 'hervidor heléctrico',
  `text_secador_pelo` varchar(128) DEFAULT NULL COMMENT 'secador de pelo',
  `text_zona_ninos` varchar(128) DEFAULT NULL COMMENT 'zona niños',
  `text_gimnasio` varchar(128) DEFAULT NULL COMMENT 'gimnasio',
  `text_alarma` varchar(128) DEFAULT NULL COMMENT 'alarma',
  `text_tennis` varchar(128) DEFAULT NULL COMMENT 'tenis',
  `text_squash` varchar(128) DEFAULT NULL COMMENT 'squash',
  `text_paddel` varchar(128) DEFAULT NULL COMMENT 'paddel',
  `text_sauna` varchar(128) DEFAULT NULL COMMENT 'sauna',
  `text_jacuzzi` varchar(128) DEFAULT NULL COMMENT 'jacuzzi',
  `text_apta_discapacitados` varchar(128) DEFAULT NULL COMMENT 'discapacitados',
  `text_nevera` varchar(128) DEFAULT NULL COMMENT 'nevera',
  `text_congelador` varchar(128) DEFAULT NULL COMMENT 'congelador',
  `text_lavavajillas` varchar(128) DEFAULT NULL COMMENT 'lavavajillas',
  `text_lavadora` varchar(128) DEFAULT NULL COMMENT 'lavadora',
  `text_secadora` varchar(128) DEFAULT NULL COMMENT 'secadora',
  `text_cafetera` varchar(128) DEFAULT NULL COMMENT 'cafetera',
  `text_tostadora` varchar(128) DEFAULT NULL COMMENT 'tostadora',
  `text_microondas` varchar(128) DEFAULT NULL COMMENT 'microondas',
  `text_horno` varchar(128) DEFAULT NULL COMMENT 'horno',
  `text_vajilla` varchar(128) DEFAULT NULL COMMENT 'vajilla',
  `text_utensilios_cocina` varchar(128) DEFAULT NULL COMMENT 'utensilios cocina',
  `text_cerca_del_mar` varchar(128) DEFAULT NULL COMMENT 'cerca del mar',
  `text_acceso_directo_mar` varchar(128) DEFAULT NULL COMMENT 'acceso directo al mar',
  `text_batidora` varchar(128) DEFAULT NULL COMMENT 'batidora',
  `text_extra_nevera` varchar(128) DEFAULT NULL COMMENT 'extra nevera',
  `text_vinoteca` varchar(128) DEFAULT NULL COMMENT 'vinoteca',
  `text_hervidor_agua` varchar(128) DEFAULT NULL COMMENT 'hervidor agua',
  `text_cafetera_nespresso` varchar(128) DEFAULT NULL COMMENT 'cafetera nespresso',
  `text_wifi` varchar(128) DEFAULT NULL COMMENT 'wifi',
  `text_fibra_optica` varchar(128) DEFAULT NULL COMMENT 'fibra optica',
  `text_internet_por_cable` varchar(128) DEFAULT NULL COMMENT 'internet por cable',
  `text_internet_velocidad_lenta` varchar(128) DEFAULT NULL COMMENT 'internet velocidad lenta',
  `text_internet_velocidad_media` varchar(128) DEFAULT NULL COMMENT 'internet velocidad media',
  `text_internet_velocidad_rapida` varchar(128) DEFAULT NULL COMMENT 'internet velocidad rapida',
  `text_aire_acondicionado` varchar(128) DEFAULT NULL COMMENT 'aire acondicionado',
  `text_ventilador` varchar(128) DEFAULT NULL COMMENT 'ventilador',
  `text_calefacion_central` varchar(128) DEFAULT NULL COMMENT 'calefaccion central',
  `text_bomba_aire` varchar(128) DEFAULT NULL COMMENT 'bomba aire',
  `text_suelo_radiante` varchar(128) DEFAULT NULL COMMENT 'suelo radiante',
  `text_cine` varchar(128) DEFAULT NULL COMMENT 'cine',
  `text_equipo_musica` varchar(128) DEFAULT NULL COMMENT 'equipo música',
  `text_barbacoa_gas` varchar(128) DEFAULT NULL COMMENT 'barbacoa gas',
  `text_bano_turco` varchar(128) DEFAULT NULL COMMENT 'baño turco',
  `text_billar` varchar(128) DEFAULT NULL COMMENT 'billar',
  `text_ping_pong` varchar(128) DEFAULT NULL COMMENT 'ping pong',
  `text_seguridad_piscina` varchar(128) DEFAULT NULL COMMENT 'seguridad piscina',
  `text_accesorios_yoga` varchar(128) DEFAULT NULL COMMENT 'accesorios yoga',
  `text_hosekeeping` varchar(128) DEFAULT NULL COMMENT 'house keepping',
  `text_trona` varchar(128) DEFAULT NULL COMMENT 'trona',
  `text_mascotas` varchar(128) DEFAULT NULL COMMENT 'mascotas',
  `text_helipuerto` varchar(128) DEFAULT NULL COMMENT 'helipuerto',
  `text_zona_de_bar_exterior` varchar(128) DEFAULT NULL COMMENT 'zona de bar exterior',
  `text_discoteca_privada` varchar(128) DEFAULT NULL COMMENT 'discoteca privada',
  `text_distancias_playa_arena` varchar(128) DEFAULT NULL COMMENT 'distancia playa arena',
  `text_distancias_playa_roca` varchar(128) DEFAULT NULL COMMENT 'distancia playa roca',
  `text_distancias_golf` varchar(128) DEFAULT NULL COMMENT 'distancia golf',
  `text_distancias_pueblo` varchar(128) DEFAULT NULL COMMENT 'ditancia pueblo',
  `text_distancias_supermercado` varchar(128) DEFAULT NULL COMMENT 'distancia supermercado',
  `text_distancias_aeropuerto` varchar(128) DEFAULT NULL COMMENT 'distancia aropuerto',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Características iconos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_colecciones_home`
--

DROP TABLE IF EXISTS `dynamic_colecciones_home`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_colecciones_home` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'identificador',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'lenguaje',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Colección',
  `text_subtitle` varchar(100) DEFAULT NULL COMMENT 'Subtítulo Colección',
  `dynamic_gallery_coleccion` varchar(45) DEFAULT NULL COMMENT 'Imagen Principal',
  `dynamic_taxonomy_geographic_language_extra` varchar(45) DEFAULT NULL COMMENT 'Url',
  `checkbox_menu` char(3) DEFAULT NULL COMMENT 'Destacado menu',
  `textarea_description` text COMMENT 'Descripción',
  `text_page_title` varchar(120) DEFAULT NULL COMMENT 'Título de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Colecciones Home';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_contacto`
--

DROP TABLE IF EXISTS `dynamic_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Información de contacto',
  `language` varchar(3) NOT NULL COMMENT 'language',
  `text_name` varchar(75) DEFAULT 'Nombre' COMMENT 'Nombre',
  `text_email` varchar(75) DEFAULT NULL COMMENT 'Email',
  `text_phone` varchar(75) DEFAULT NULL COMMENT 'Telf',
  `text_subject` varchar(75) DEFAULT NULL COMMENT 'Titulo',
  `textarea_form_message` varchar(255) DEFAULT NULL COMMENT 'Mensaje',
  `number_metodo` tinyint(3) DEFAULT NULL COMMENT 'método contacto',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'slug manual',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'slug automatico',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'metakeywords',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'metadescription',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'meta robots',
  `textarea_scripts_header` text COMMENT 'scripts header',
  `textarea_scripts_body` text COMMENT 'scripts body',
  `status` varchar(128) DEFAULT NULL COMMENT 'status',
  `position` int(11) DEFAULT NULL COMMENT 'position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Contacto';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_cron`
--

DROP TABLE IF EXISTS `dynamic_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_cron` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador cron',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguaje cron',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `text_direccion` varchar(255) DEFAULT NULL COMMENT 'Dirección http cron ejemplo: http://mispisos.com/fichero.xml',
  `dynamic_agencia` int(11) DEFAULT NULL COMMENT 'Identificador de agencia',
  `dynamic_usuario` int(11) DEFAULT NULL COMMENT 'Identificador de usuario',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(75) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Short url (slug)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters) ',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters) ',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;) ',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;) ',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Inmobiliarias y usuarios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_destinos`
--

DROP TABLE IF EXISTS `dynamic_destinos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_destinos` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'identificador',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'lenguaje',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Destino',
  `text_subtitle` varchar(100) DEFAULT NULL COMMENT 'Subtítulo Destino',
  `dynamic_gallery_destinos` varchar(45) DEFAULT NULL COMMENT 'Imagen Principal',
  `dynamic_taxonomy_geographic_language_fields_customitzation` varchar(45) DEFAULT NULL COMMENT 'Url',
  `checkbox_menu` char(3) DEFAULT NULL COMMENT 'Destacado menu',
  `textarea_description` text COMMENT 'Descripción',
  `text_page_title` varchar(120) DEFAULT NULL COMMENT 'Título de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Destinos Home';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_document`
--

DROP TABLE IF EXISTS `dynamic_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_document` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(255) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
  `document_documento1` varchar(255) DEFAULT NULL COMMENT 'Documento 1',
  `text_titulo1` varchar(75) DEFAULT NULL COMMENT 'Título 1',
  `status` varchar(128) DEFAULT 'ACTIVED' COMMENT 'estado',
  `position` int(11) DEFAULT NULL COMMENT 'posicion',
  `id_avantio` tinyint(1) DEFAULT '1' COMMENT 'avantio',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Documentos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_document_hshv`
--

DROP TABLE IF EXISTS `dynamic_document_hshv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_document_hshv` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(255) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
  `document_documento1` varchar(255) DEFAULT NULL COMMENT 'Documento 1',
  `text_titulo1` varchar(75) DEFAULT NULL COMMENT 'Título 1',
  `status` varchar(128) DEFAULT 'ACTIVED' COMMENT 'estado',
  `position` int(11) DEFAULT NULL COMMENT 'posicion',
  `id_avantio` tinyint(1) DEFAULT '0' COMMENT 'avantio',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Documentos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_empresa`
--

DROP TABLE IF EXISTS `dynamic_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_empresa` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador de la empresa',
  `language` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'es' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Titulo',
  `text_subtitle` varchar(255) DEFAULT NULL COMMENT 'Subtítulo',
  `number_telf` int(11) DEFAULT NULL COMMENT 'telf',
  `number_mobile` int(11) DEFAULT NULL COMMENT 'mobile',
  `number_fax` int(11) DEFAULT NULL COMMENT 'fax',
  `text_direccion` varchar(255) DEFAULT NULL COMMENT 'dirección',
  `text_email` varchar(255) DEFAULT NULL COMMENT 'email',
  `text_website` varchar(255) DEFAULT NULL COMMENT 'website',
  `dynamic_taxonomy_group` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Grupo tipo de inmueble piso, casa',
  `dynamic_geolocality` int(11) DEFAULT '0' COMMENT 'Población',
  `dynamic_accion` int(11) DEFAULT '0' COMMENT 'Comprar | Alquilar | Compartir',
  `dynamic_gallery_empresa` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Galería Fotos',
  `textarea_description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Descripción principal',
  `textarea_description_2` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Descripción secundaria',
  `textarea_interior` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Descripción opcional (No visible)',
  `text_latitud` varchar(20) DEFAULT NULL COMMENT 'latitud',
  `text_longitud` varchar(20) DEFAULT NULL COMMENT 'longitud',
  `text_body_title` varchar(75) DEFAULT NULL COMMENT 'text_body_title',
  `text_facebook` varchar(255) DEFAULT NULL COMMENT 'facebook',
  `text_twitter` varchar(255) DEFAULT NULL COMMENT 'twitter',
  `text_instagram` varchar(255) DEFAULT NULL COMMENT 'instagram',
  `text_pinterest` varchar(255) DEFAULT NULL COMMENT 'pinterest',
  `text_google_plus` varchar(255) DEFAULT NULL COMMENT 'text_google_plus',
  `google_place_id` varchar(255) DEFAULT '' COMMENT 'id google places',
  `google_url` varchar(255) DEFAULT '' COMMENT 'url google maps',
  `checkbox_destacado_provincia` tinyint(4) DEFAULT '0' COMMENT 'Destacado página población',
  `checkbox_destacado_listado_inmobiliarias` tinyint(4) DEFAULT '0' COMMENT 'Destacado página listado inmobiliarias',
  `checkbox_destacado_detalle_inmobiliaria` tinyint(4) DEFAULT '0' COMMENT 'Destacado página detalle inmobiliaria',
  `checkbox_destacado_detalle_propiedad` tinyint(4) DEFAULT '0' COMMENT 'Destacado página detalle propiedad',
  `checkbox_destacado_buscador` int(11) DEFAULT NULL COMMENT 'checkbox destacado buscador',
  `text_page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Título sobre el alojamiento',
  `auto_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `text_meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Meta Keywords (máx 255 characters)',
  `text_meta_robots` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `text_meta_description` mediumtext CHARACTER SET utf8mb4 COMMENT 'Meta Description (max 255 characters)',
  `textarea_scripts_header` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'ACTIVED',
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Listado Empresas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_experiencia`
--

DROP TABLE IF EXISTS `dynamic_experiencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_experiencia` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'título Cabecera',
  `text_subtitle` varchar(255) DEFAULT NULL COMMENT 'Subtítulo Cabecera',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Seccion experiéncia';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_experiencias`
--

DROP TABLE IF EXISTS `dynamic_experiencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_experiencias` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título Cabecera',
  `text_title_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
  `text_alt_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
  `image_1` varchar(255) DEFAULT NULL COMMENT 'imagen 1',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Experiéncias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_faqsagencias`
--

DROP TABLE IF EXISTS `dynamic_faqsagencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_faqsagencias` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'lenguage',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `dynamic_faqsagencias_type` int(11) DEFAULT NULL COMMENT 'faq agencias',
  `textarea_description` text COMMENT 'Descripción',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywordds',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Faq Agen. Villas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_faqsagencias_type`
--

DROP TABLE IF EXISTS `dynamic_faqsagencias_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_faqsagencias_type` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'lenguage',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywordds',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tipos Faq Ag. Villas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_faqsclientes`
--

DROP TABLE IF EXISTS `dynamic_faqsclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_faqsclientes` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'lenguage',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `dynamic_faqsclientes_type` int(11) DEFAULT NULL COMMENT 'faq tipo clientes',
  `textarea_description` text COMMENT 'Descripción',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywordds',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Faq Clientes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_faqsclientes_type`
--

DROP TABLE IF EXISTS `dynamic_faqsclientes_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_faqsclientes_type` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'lenguage',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywordds',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tipos Faq Clientes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_faqspropietarios`
--

DROP TABLE IF EXISTS `dynamic_faqspropietarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_faqspropietarios` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'lenguage',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `dynamic_faqspropietarios_type` int(11) DEFAULT NULL COMMENT 'faq propietarios',
  `textarea_description` text COMMENT 'Descripción',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywordds',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Faq Propietarios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_faqspropietarios_type`
--

DROP TABLE IF EXISTS `dynamic_faqspropietarios_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_faqspropietarios_type` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'lenguage',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywordds',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tipos Faq Propietarios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_franquicia`
--

DROP TABLE IF EXISTS `dynamic_franquicia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_franquicia` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguaje',
  `dynamic_gallery_franquicia_principal` varchar(45) DEFAULT '' COMMENT 'Galeria Franquicia',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Titulo',
  `text_firstname` varchar(75) DEFAULT NULL COMMENT 'Nombre',
  `text_lastname` varchar(75) DEFAULT NULL COMMENT 'Apellido',
  `number_telf` int(10) DEFAULT '0' COMMENT 'Telefono',
  `number_telf_mobil` int(10) DEFAULT '0' COMMENT 'Telefono mobil',
  `email` varchar(75) DEFAULT NULL COMMENT 'Email',
  `text_direccion` varchar(20) DEFAULT NULL COMMENT 'Dirección',
  `textarea_description` text COMMENT 'Descripción',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Page Title',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Text slug',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Text Meta Keywords',
  `textarea_scripts_header` text COMMENT 'Text Meta Scripts header',
  `textarea_scripts_body` text COMMENT 'Text Meta Scripts body',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Text Meta Keywords',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Text Meta Robots',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Datos Franquicia';
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `dynamic_gallery_coleccion`
--

DROP TABLE IF EXISTS `dynamic_gallery_coleccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_gallery_coleccion` (
  `id` int(11) NOT NULL COMMENT 'identificador de las imágenes',
  `zipstatus` varchar(128) DEFAULT NULL,
  `text_title` varchar(255) DEFAULT NULL COMMENT 'titulo de la galería de la colección',
  `text_title_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
  `text_alt_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
  `image_1` varchar(255) DEFAULT NULL COMMENT 'imagen 1',
  `text_title_image_2` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 2',
  `text_alt_image_2` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 2',
  `image_2` varchar(255) DEFAULT NULL COMMENT 'imagen 2',
  `text_title_image_3` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 3',
  `text_alt_image_3` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 3',
  `image_3` varchar(255) DEFAULT NULL COMMENT 'imagen 3',
  `text_title_image_4` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 4',
  `text_alt_image_4` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 4',
  `image_4` varchar(255) DEFAULT NULL COMMENT 'imagen 4',
  `text_title_image_5` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 5',
  `text_alt_image_5` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 5',
  `image_5` varchar(255) DEFAULT NULL COMMENT 'imagen 5',
  `text_title_image_6` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 6',
  `text_alt_image_6` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 6',
  `image_6` varchar(255) DEFAULT NULL COMMENT 'imagen 6',
  `text_title_image_7` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 7',
  `text_alt_image_7` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 7',
  `image_7` varchar(255) DEFAULT NULL COMMENT 'imagen 7',
  `text_title_image_8` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 8',
  `text_alt_image_8` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 8',
  `image_8` varchar(255) DEFAULT NULL COMMENT 'imagen 8',
  `text_title_image_9` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 9',
  `text_alt_image_9` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 9',
  `image_9` varchar(255) DEFAULT NULL COMMENT 'imagen 9',
  `text_title_image_10` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 10',
  `text_alt_image_10` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 10',
  `image_10` varchar(255) DEFAULT NULL COMMENT 'imagen 10',
  `text_title_image_11` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 11',
  `text_alt_image_11` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 11',
  `image_11` varchar(255) DEFAULT NULL COMMENT 'imagen 11',
  `text_title_image_12` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 12',
  `text_alt_image_12` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 12',
  `image_12` varchar(255) DEFAULT NULL COMMENT 'imagen 12',
  `text_title_image_13` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 13',
  `text_alt_image_13` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 13',
  `image_13` varchar(255) DEFAULT NULL COMMENT 'imagen 13',
  `text_title_image_14` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 14',
  `text_alt_image_14` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 14',
  `image_14` varchar(255) DEFAULT NULL COMMENT 'imagen 14',
  `text_title_image_15` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 15',
  `text_alt_image_15` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 15',
  `image_15` varchar(255) DEFAULT NULL COMMENT 'imagen 15',
  `text_title_image_16` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 16',
  `text_alt_image_16` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 16',
  `image_16` varchar(255) DEFAULT NULL COMMENT 'imagen 16',
  `text_title_image_17` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 17',
  `text_alt_image_17` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 17',
  `image_17` varchar(255) DEFAULT NULL COMMENT 'imagen 17',
  `text_title_image_18` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 18',
  `text_alt_image_18` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 18',
  `image_18` varchar(255) DEFAULT NULL COMMENT 'imagen 18',
  `text_title_image_19` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 19',
  `text_alt_image_19` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 19',
  `image_19` varchar(255) DEFAULT NULL COMMENT 'imagen 19',
  `text_title_image_20` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 20',
  `text_alt_image_20` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 20',
  `image_20` varchar(255) DEFAULT NULL COMMENT 'imagen 20',
  `text_title_image_21` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 21',
  `text_alt_image_21` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 21',
  `image_21` varchar(255) DEFAULT NULL COMMENT 'imagen 21',
  `text_title_image_22` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 22',
  `text_alt_image_22` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 22',
  `image_22` varchar(255) DEFAULT NULL COMMENT 'imagen 22',
  `text_title_image_23` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 23',
  `text_alt_image_23` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 23',
  `image_23` varchar(255) DEFAULT NULL COMMENT 'imagen 23',
  `text_title_image_24` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 24',
  `text_alt_image_24` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 24',
  `image_24` varchar(255) DEFAULT NULL COMMENT 'imagen 24',
  `text_title_image_25` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 25',
  `text_alt_image_25` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 25',
  `image_25` varchar(255) DEFAULT NULL COMMENT 'imagen 25',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'lenguaje',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Galeria colección';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_gallery_destinos`
--

DROP TABLE IF EXISTS `dynamic_gallery_destinos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_gallery_destinos` (
  `id` int(11) NOT NULL COMMENT 'identificador de las imágenes',
  `zipstatus` varchar(128) DEFAULT NULL,
  `text_title` varchar(255) DEFAULT NULL COMMENT 'titulo de la galería de los destinos',
  `text_title_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
  `text_alt_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
  `image_1` varchar(255) DEFAULT NULL COMMENT 'imagen 1',
  `text_title_image_2` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 2',
  `text_alt_image_2` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 2',
  `image_2` varchar(255) DEFAULT NULL COMMENT 'imagen 2',
  `text_title_image_3` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 3',
  `text_alt_image_3` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 3',
  `image_3` varchar(255) DEFAULT NULL COMMENT 'imagen 3',
  `text_title_image_4` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 4',
  `text_alt_image_4` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 4',
  `image_4` varchar(255) DEFAULT NULL COMMENT 'imagen 4',
  `text_title_image_5` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 5',
  `text_alt_image_5` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 5',
  `image_5` varchar(255) DEFAULT NULL COMMENT 'imagen 5',
  `text_title_image_6` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 6',
  `text_alt_image_6` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 6',
  `image_6` varchar(255) DEFAULT NULL COMMENT 'imagen 6',
  `text_title_image_7` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 7',
  `text_alt_image_7` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 7',
  `image_7` varchar(255) DEFAULT NULL COMMENT 'imagen 7',
  `text_title_image_8` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 8',
  `text_alt_image_8` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 8',
  `image_8` varchar(255) DEFAULT NULL COMMENT 'imagen 8',
  `text_title_image_9` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 9',
  `text_alt_image_9` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 9',
  `image_9` varchar(255) DEFAULT NULL COMMENT 'imagen 9',
  `text_title_image_10` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 10',
  `text_alt_image_10` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 10',
  `image_10` varchar(255) DEFAULT NULL COMMENT 'imagen 10',
  `text_title_image_11` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 11',
  `text_alt_image_11` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 11',
  `image_11` varchar(255) DEFAULT NULL COMMENT 'imagen 11',
  `text_title_image_12` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 12',
  `text_alt_image_12` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 12',
  `image_12` varchar(255) DEFAULT NULL COMMENT 'imagen 12',
  `text_title_image_13` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 13',
  `text_alt_image_13` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 13',
  `image_13` varchar(255) DEFAULT NULL COMMENT 'imagen 13',
  `text_title_image_14` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 14',
  `text_alt_image_14` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 14',
  `image_14` varchar(255) DEFAULT NULL COMMENT 'imagen 14',
  `text_title_image_15` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 15',
  `text_alt_image_15` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 15',
  `image_15` varchar(255) DEFAULT NULL COMMENT 'imagen 15',
  `text_title_image_16` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 16',
  `text_alt_image_16` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 16',
  `image_16` varchar(255) DEFAULT NULL COMMENT 'imagen 16',
  `text_title_image_17` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 17',
  `text_alt_image_17` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 17',
  `image_17` varchar(255) DEFAULT NULL COMMENT 'imagen 17',
  `text_title_image_18` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 18',
  `text_alt_image_18` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 18',
  `image_18` varchar(255) DEFAULT NULL COMMENT 'imagen 18',
  `text_title_image_19` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 19',
  `text_alt_image_19` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 19',
  `image_19` varchar(255) DEFAULT NULL COMMENT 'imagen 19',
  `text_title_image_20` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 20',
  `text_alt_image_20` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 20',
  `image_20` varchar(255) DEFAULT NULL COMMENT 'imagen 20',
  `text_title_image_21` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 21',
  `text_alt_image_21` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 21',
  `image_21` varchar(255) DEFAULT NULL COMMENT 'imagen 21',
  `text_title_image_22` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 22',
  `text_alt_image_22` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 22',
  `image_22` varchar(255) DEFAULT NULL COMMENT 'imagen 22',
  `text_title_image_23` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 23',
  `text_alt_image_23` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 23',
  `image_23` varchar(255) DEFAULT NULL COMMENT 'imagen 23',
  `text_title_image_24` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 24',
  `text_alt_image_24` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 24',
  `image_24` varchar(255) DEFAULT NULL COMMENT 'imagen 24',
  `text_title_image_25` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 25',
  `text_alt_image_25` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 25',
  `image_25` varchar(255) DEFAULT NULL COMMENT 'imagen 25',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'lenguaje',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Galeria destinos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_gallery_franquicia_principal`
--

DROP TABLE IF EXISTS `dynamic_gallery_franquicia_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_gallery_franquicia_principal` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `zipstatus` varchar(128) DEFAULT NULL,
  `image_principal` varchar(255) DEFAULT NULL,
  `text_title` varchar(75) DEFAULT NULL,
  `text_alt` varchar(75) DEFAULT NULL,
  `imagethn_principal` varchar(255) DEFAULT NULL,
  `text_importada` int(11) DEFAULT NULL,
  `status` varchar(128) DEFAULT 'ACTIVED' COMMENT 'Status',
  `position` int(11) DEFAULT NULL COMMENT 'position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gallery Franquicia Principal';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_gallery_inmo`
--

DROP TABLE IF EXISTS `dynamic_gallery_inmo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_gallery_inmo` (
  `id` int(11) NOT NULL COMMENT 'identificador de las imágenes',
  `language` varchar(3) NOT NULL COMMENT 'language',
  `zipstatus` varchar(128) DEFAULT NULL,
  `text_title` varchar(255) DEFAULT NULL COMMENT 'titulo de la galería del imueble',
  `text_title_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
  `text_alt_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
  `image_1` varchar(255) DEFAULT NULL COMMENT 'imagen 1',
  `text_title_image_2` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 2',
  `text_alt_image_2` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 2',
  `image_2` varchar(255) DEFAULT NULL COMMENT 'imagen 2',
  `text_title_image_3` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 3',
  `text_alt_image_3` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 3',
  `image_3` varchar(255) DEFAULT NULL COMMENT 'imagen 3',
  `text_title_image_4` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 4',
  `text_alt_image_4` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 4',
  `image_4` varchar(255) DEFAULT NULL COMMENT 'imagen 4',
  `text_title_image_5` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 5',
  `text_alt_image_5` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 5',
  `image_5` varchar(255) DEFAULT NULL COMMENT 'imagen 5',
  `text_title_image_6` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 6',
  `text_alt_image_6` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 6',
  `image_6` varchar(255) DEFAULT NULL COMMENT 'imagen 6',
  `text_title_image_7` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 7',
  `text_alt_image_7` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 7',
  `image_7` varchar(255) DEFAULT NULL COMMENT 'imagen 7',
  `text_title_image_8` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 8',
  `text_alt_image_8` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 8',
  `image_8` varchar(255) DEFAULT NULL COMMENT 'imagen 8',
  `text_title_image_9` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 9',
  `text_alt_image_9` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 9',
  `image_9` varchar(255) DEFAULT NULL COMMENT 'imagen 9',
  `text_title_image_10` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 10',
  `text_alt_image_10` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 10',
  `image_10` varchar(255) DEFAULT NULL COMMENT 'imagen 10',
  `text_title_image_11` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 11',
  `text_alt_image_11` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 11',
  `image_11` varchar(255) DEFAULT NULL COMMENT 'imagen 11',
  `text_title_image_12` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 12',
  `text_alt_image_12` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 12',
  `image_12` varchar(255) DEFAULT NULL COMMENT 'imagen 12',
  `text_title_image_13` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 13',
  `text_alt_image_13` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 13',
  `image_13` varchar(255) DEFAULT NULL COMMENT 'imagen 13',
  `text_title_image_14` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 14',
  `text_alt_image_14` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 14',
  `image_14` varchar(255) DEFAULT NULL COMMENT 'imagen 14',
  `text_title_image_15` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 15',
  `text_alt_image_15` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 15',
  `image_15` varchar(255) DEFAULT NULL COMMENT 'imagen 15',
  `text_title_image_16` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 16',
  `text_alt_image_16` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 16',
  `image_16` varchar(255) DEFAULT NULL COMMENT 'imagen 16',
  `text_title_image_17` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 17',
  `text_alt_image_17` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 17',
  `image_17` varchar(255) DEFAULT NULL COMMENT 'imagen 17',
  `text_title_image_18` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 18',
  `text_alt_image_18` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 18',
  `image_18` varchar(255) DEFAULT NULL COMMENT 'imagen 18',
  `text_title_image_19` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 19',
  `text_alt_image_19` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 19',
  `image_19` varchar(255) DEFAULT NULL COMMENT 'imagen 19',
  `text_title_image_20` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 20',
  `text_alt_image_20` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 20',
  `image_20` varchar(255) DEFAULT NULL COMMENT 'imagen 20',
  `text_title_image_21` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 21',
  `text_alt_image_21` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 21',
  `image_21` varchar(255) DEFAULT NULL COMMENT 'imagen 21',
  `text_title_image_22` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 22',
  `text_alt_image_22` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 22',
  `image_22` varchar(255) DEFAULT NULL COMMENT 'imagen 22',
  `text_title_image_23` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 23',
  `text_alt_image_23` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 23',
  `image_23` varchar(255) DEFAULT NULL COMMENT 'imagen 23',
  `text_title_image_24` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 24',
  `text_alt_image_24` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 24',
  `image_24` varchar(255) DEFAULT NULL COMMENT 'imagen 24',
  `text_title_image_25` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 25',
  `text_alt_image_25` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 25',
  `image_25` varchar(255) DEFAULT NULL COMMENT 'imagen 25',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Galeria web';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_gallery_inmo_principal`
--

DROP TABLE IF EXISTS `dynamic_gallery_inmo_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_gallery_inmo_principal` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL,
  `zipstatus` varchar(128) DEFAULT NULL,
  `text_alt` varchar(75) DEFAULT NULL,
  `image_principal` varchar(255) DEFAULT NULL,
  `text_importada` int(11) DEFAULT NULL,
  `imagethn_principal` varchar(255) DEFAULT NULL,
  `dynamic_agencia` varchar(45) DEFAULT '' COMMENT 'Agencia',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Galeria Perfil';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_gallery_regiones_menu`
--

DROP TABLE IF EXISTS `dynamic_gallery_regiones_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_gallery_regiones_menu` (
  `id` int(11) NOT NULL COMMENT 'identificador de las imágenes',
  `language` char(3) NOT NULL DEFAULT 'es',
  `zipstatus` varchar(128) DEFAULT NULL,
  `text_title` varchar(255) DEFAULT NULL COMMENT 'titulo de la galería del imueble',
  `text_title_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
  `text_alt_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
  `image_1` varchar(255) DEFAULT NULL COMMENT 'imagen 1',
  `text_title_image_2` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 2',
  `text_alt_image_2` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 2',
  `image_2` varchar(255) DEFAULT NULL COMMENT 'imagen 2',
  `text_title_image_3` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 3',
  `text_alt_image_3` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 3',
  `image_3` varchar(255) DEFAULT NULL COMMENT 'imagen 3',
  `text_title_image_4` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 4',
  `text_alt_image_4` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 4',
  `image_4` varchar(255) DEFAULT NULL COMMENT 'imagen 4',
  `text_title_image_5` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 5',
  `text_alt_image_5` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 5',
  `image_5` varchar(255) DEFAULT NULL COMMENT 'imagen 5',
  `text_title_image_6` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 6',
  `text_alt_image_6` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 6',
  `image_6` varchar(255) DEFAULT NULL COMMENT 'imagen 6',
  `text_title_image_7` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 7',
  `text_alt_image_7` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 7',
  `image_7` varchar(255) DEFAULT NULL COMMENT 'imagen 7',
  `text_title_image_8` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 8',
  `text_alt_image_8` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 8',
  `image_8` varchar(255) DEFAULT NULL COMMENT 'imagen 8',
  `text_title_image_9` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 9',
  `text_alt_image_9` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 9',
  `image_9` varchar(255) DEFAULT NULL COMMENT 'imagen 9',
  `text_title_image_10` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 10',
  `text_alt_image_10` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 10',
  `image_10` varchar(255) DEFAULT NULL COMMENT 'imagen 10',
  `text_title_image_11` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 11',
  `text_alt_image_11` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 11',
  `image_11` varchar(255) DEFAULT NULL COMMENT 'imagen 11',
  `text_title_image_12` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 12',
  `text_alt_image_12` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 12',
  `image_12` varchar(255) DEFAULT NULL COMMENT 'imagen 12',
  `text_title_image_13` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 13',
  `text_alt_image_13` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 13',
  `image_13` varchar(255) DEFAULT NULL COMMENT 'imagen 13',
  `text_title_image_14` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 14',
  `text_alt_image_14` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 14',
  `image_14` varchar(255) DEFAULT NULL COMMENT 'imagen 14',
  `text_title_image_15` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 15',
  `text_alt_image_15` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 15',
  `image_15` varchar(255) DEFAULT NULL COMMENT 'imagen 15',
  `text_title_image_16` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 16',
  `text_alt_image_16` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 16',
  `image_16` varchar(255) DEFAULT NULL COMMENT 'imagen 16',
  `text_title_image_17` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 17',
  `text_alt_image_17` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 17',
  `image_17` varchar(255) DEFAULT NULL COMMENT 'imagen 17',
  `text_title_image_18` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 18',
  `text_alt_image_18` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 18',
  `image_18` varchar(255) DEFAULT NULL COMMENT 'imagen 18',
  `text_title_image_19` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 19',
  `text_alt_image_19` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 19',
  `image_19` varchar(255) DEFAULT NULL COMMENT 'imagen 19',
  `text_title_image_20` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 20',
  `text_alt_image_20` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 20',
  `image_20` varchar(255) DEFAULT NULL COMMENT 'imagen 20',
  `text_title_image_21` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 21',
  `text_alt_image_21` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 21',
  `image_21` varchar(255) DEFAULT NULL COMMENT 'imagen 21',
  `text_title_image_22` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 22',
  `text_alt_image_22` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 22',
  `image_22` varchar(255) DEFAULT NULL COMMENT 'imagen 22',
  `text_title_image_23` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 23',
  `text_alt_image_23` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 23',
  `image_23` varchar(255) DEFAULT NULL COMMENT 'imagen 23',
  `text_title_image_24` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 24',
  `text_alt_image_24` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 24',
  `image_24` varchar(255) DEFAULT NULL COMMENT 'imagen 24',
  `text_title_image_25` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 25',
  `text_alt_image_25` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 25',
  `image_25` varchar(255) DEFAULT NULL COMMENT 'imagen 25',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Galeria regiones menu';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_gallery_usuario`
--

DROP TABLE IF EXISTS `dynamic_gallery_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_gallery_usuario` (
  `id` int(11) NOT NULL COMMENT 'identificador de las imágenes',
  `zipstatus` varchar(128) DEFAULT NULL,
  `text_title` varchar(255) DEFAULT NULL COMMENT 'titulo de la galería del imueble',
  `text_title_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
  `text_alt_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
  `image_1` varchar(255) DEFAULT NULL COMMENT 'imagen 1',
  `text_title_image_2` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 2',
  `text_alt_image_2` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 2',
  `image_2` varchar(255) DEFAULT NULL COMMENT 'imagen 2',
  `text_title_image_3` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 3',
  `text_alt_image_3` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 3',
  `image_3` varchar(255) DEFAULT NULL COMMENT 'imagen 3',
  `text_title_image_4` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 4',
  `text_alt_image_4` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 4',
  `image_4` varchar(255) DEFAULT NULL COMMENT 'imagen 4',
  `text_title_image_5` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 5',
  `text_alt_image_5` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 5',
  `image_5` varchar(255) DEFAULT NULL COMMENT 'imagen 5',
  `text_title_image_6` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 6',
  `text_alt_image_6` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 6',
  `image_6` varchar(255) DEFAULT NULL COMMENT 'imagen 6',
  `text_title_image_7` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 7',
  `text_alt_image_7` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 7',
  `image_7` varchar(255) DEFAULT NULL COMMENT 'imagen 7',
  `text_title_image_8` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 8',
  `text_alt_image_8` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 8',
  `image_8` varchar(255) DEFAULT NULL COMMENT 'imagen 8',
  `text_title_image_9` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 9',
  `text_alt_image_9` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 9',
  `image_9` varchar(255) DEFAULT NULL COMMENT 'imagen 9',
  `text_title_image_10` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 10',
  `text_alt_image_10` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 10',
  `image_10` varchar(255) DEFAULT NULL COMMENT 'imagen 10',
  `text_title_image_11` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 11',
  `text_alt_image_11` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 11',
  `image_11` varchar(255) DEFAULT NULL COMMENT 'imagen 11',
  `text_title_image_12` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 12',
  `text_alt_image_12` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 12',
  `image_12` varchar(255) DEFAULT NULL COMMENT 'imagen 12',
  `text_title_image_13` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 13',
  `text_alt_image_13` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 13',
  `image_13` varchar(255) DEFAULT NULL COMMENT 'imagen 13',
  `text_title_image_14` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 14',
  `text_alt_image_14` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 14',
  `image_14` varchar(255) DEFAULT NULL COMMENT 'imagen 14',
  `text_title_image_15` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 15',
  `text_alt_image_15` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 15',
  `image_15` varchar(255) DEFAULT NULL COMMENT 'imagen 15',
  `text_title_image_16` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 16',
  `text_alt_image_16` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 16',
  `image_16` varchar(255) DEFAULT NULL COMMENT 'imagen 16',
  `text_title_image_17` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 17',
  `text_alt_image_17` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 17',
  `image_17` varchar(255) DEFAULT NULL COMMENT 'imagen 17',
  `text_title_image_18` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 18',
  `text_alt_image_18` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 18',
  `image_18` varchar(255) DEFAULT NULL COMMENT 'imagen 18',
  `text_title_image_19` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 19',
  `text_alt_image_19` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 19',
  `image_19` varchar(255) DEFAULT NULL COMMENT 'imagen 19',
  `text_title_image_20` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 20',
  `text_alt_image_20` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 20',
  `image_20` varchar(255) DEFAULT NULL COMMENT 'imagen 20',
  `text_title_image_21` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 21',
  `text_alt_image_21` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 21',
  `image_21` varchar(255) DEFAULT NULL COMMENT 'imagen 21',
  `text_title_image_22` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 22',
  `text_alt_image_22` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 22',
  `image_22` varchar(255) DEFAULT NULL COMMENT 'imagen 22',
  `text_title_image_23` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 23',
  `text_alt_image_23` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 23',
  `image_23` varchar(255) DEFAULT NULL COMMENT 'imagen 23',
  `text_title_image_24` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 24',
  `text_alt_image_24` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 24',
  `image_24` varchar(255) DEFAULT NULL COMMENT 'imagen 24',
  `text_title_image_25` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 25',
  `text_alt_image_25` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 25',
  `image_25` varchar(255) DEFAULT NULL COMMENT 'imagen 25',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `language` char(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Galeria inmuebles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_geocity`
--

DROP TABLE IF EXISTS `dynamic_geocity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_geocity` (
  `id` int(11) NOT NULL COMMENT 'Título',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `dynamic_georegion` int(11) NOT NULL DEFAULT '0' COMMENT 'Región',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Geografic - Ciudades';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_geocountry`
--

DROP TABLE IF EXISTS `dynamic_geocountry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_geocountry` (
  `id` int(11) NOT NULL COMMENT 'Título',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Geografic - Países';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_geodistrict`
--

DROP TABLE IF EXISTS `dynamic_geodistrict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_geodistrict` (
  `id` int(11) NOT NULL COMMENT 'Título',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `text_postalcode` char(5) DEFAULT NULL COMMENT 'Código Postal',
  `dynamic_geolocality` int(11) NOT NULL DEFAULT '0' COMMENT 'Localidad',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Geografic - Distritos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_geolocality`
--

DROP TABLE IF EXISTS `dynamic_geolocality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_geolocality` (
  `id` int(11) NOT NULL COMMENT 'Título',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `dynamic_geocity` int(11) NOT NULL DEFAULT '0' COMMENT 'Ciudad',
  `number_release` int(11) DEFAULT '2' COMMENT 'Días de Release',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `text_geo_latitud` varchar(45) NOT NULL DEFAULT '' COMMENT 'Latitud GPS',
  `text_geo_longitud` varchar(45) NOT NULL DEFAULT '' COMMENT 'Longitud GPS',
  `status_realstate` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Geografic - Localidades';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_georegion`
--

DROP TABLE IF EXISTS `dynamic_georegion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_georegion` (
  `id` int(11) NOT NULL COMMENT 'Título',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `dynamic_geocountry` int(11) NOT NULL DEFAULT '0' COMMENT 'País',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Geografic - Regiones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_mail_empresa`
--

DROP TABLE IF EXISTS `dynamic_mail_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_mail_empresa` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `dynamic_mail_tipo_portal` int(11) NOT NULL DEFAULT '0' COMMENT 'Dynamic tipo portal',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Empresa',
  `text_nombre_empresa` varchar(128) DEFAULT NULL COMMENT 'Nombre Empresa',
  `text_nombre_empresa_comercial` varchar(128) DEFAULT NULL COMMENT 'Nombre Empresa Comercial',
  `text_direccion` varchar(128) DEFAULT NULL COMMENT 'Nombre Dirección',
  `dynamic_geolocality` smallint(3) DEFAULT NULL COMMENT 'Nombre Localidad',
  `dynamic_geodistrict` smallint(3) DEFAULT NULL COMMENT 'Nombre código postal',
  `text_phone` varchar(75) DEFAULT NULL COMMENT 'Telf',
  `text_web` varchar(128) DEFAULT NULL COMMENT 'Web',
  `text_email` varchar(128) DEFAULT NULL COMMENT 'Email',
  `text_actividad` varchar(128) DEFAULT NULL COMMENT 'Nombre Actividad',
  `text_producto` varchar(128) DEFAULT NULL COMMENT 'Nombre Producto',
  `textarea_description` text COMMENT 'Contenido de la página',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mail empresa';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_mail_tipo_portal`
--

DROP TABLE IF EXISTS `dynamic_mail_tipo_portal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_mail_tipo_portal` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Tipo Empresa',
  `textarea_description` text COMMENT 'Contenido de la página',
  `text_body_title_no_res` varchar(75) DEFAULT NULL COMMENT 'Título de la página cuando NO se encuentran resultados',
  `textarea_description_no_res` text COMMENT 'Contenido de la página cuando NO se encuentran resultados',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tipo portal';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_offers`
--

DROP TABLE IF EXISTS `dynamic_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_offers` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Titulo Sobre Imagen',
  `dynamic_gallery` varchar(45) DEFAULT NULL COMMENT 'Imagen Principal',
  `text_body_title` varchar(75) DEFAULT NULL COMMENT 'Título de la oferta (en descripción)',
  `dynamic_offers_taxonomy` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Landing oferta',
  `textarea_summary` text COMMENT 'Resumen de la oferta para el home',
  `textarea_description` text COMMENT 'Contenido de la página',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `text_mensaje_home` varchar(45) DEFAULT NULL COMMENT 'Info a destacar en el menú actividades',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `position_copy1` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Promociones y Ofertas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_offers_taxonomy`
--

DROP TABLE IF EXISTS `dynamic_offers_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_offers_taxonomy` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Cabecera',
  `dynamic_accion` int(11) DEFAULT '0' COMMENT 'Identificador de accion | venta | alquiler | compra',
  `dynamic_taxonomy_group` int(11) DEFAULT '0' COMMENT 'Tipo propiedad | piso | casa | local',
  `dynamic_gallery` varchar(45) DEFAULT NULL COMMENT 'Imagen Principal',
  `dynamic_gallery_home` varchar(45) DEFAULT '0' COMMENT 'Galeria home',
  `text_body_title` varchar(75) DEFAULT NULL COMMENT 'Título de la página',
  `textarea_description` text COMMENT 'Contenido de la página',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Landings ofertas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_pages`
--

DROP TABLE IF EXISTS `dynamic_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_pages` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título Página (auto slug)',
  `text_subtitle` varchar(255) DEFAULT NULL COMMENT 'Subtítulo Cabecera (máx 100 carácteres)',
  `dynamic_gallery_franquicia_principal` varchar(45) DEFAULT NULL COMMENT 'Imagen Principal',
  `text_dtitle_1` varchar(255) DEFAULT NULL COMMENT 'Título 1',
  `text_dsubtitle_1` varchar(255) DEFAULT NULL COMMENT 'Subtítulo 1',
  `dynamic_gallery_1` varchar(45) DEFAULT NULL COMMENT 'Imagen 1',
  `textarea_ddescription_1` text COMMENT 'Descripción 1',
  `text_dtitle_2` varchar(75) DEFAULT NULL COMMENT 'Título 2',
  `text_dsubtitle_2` varchar(75) DEFAULT NULL COMMENT 'Subtítulo 2',
  `dynamic_gallery_2` varchar(45) DEFAULT NULL COMMENT 'Imagen 2',
  `textarea_ddescription_2` text COMMENT 'Descripción 2',
  `text_dtitle_3` varchar(75) DEFAULT NULL COMMENT 'Título 3',
  `text_dsubtitle_3` varchar(75) DEFAULT NULL COMMENT 'Subtítulo 3',
  `dynamic_gallery_3` varchar(45) DEFAULT NULL COMMENT 'Imagen 3',
  `textarea_ddescription_3` text COMMENT 'Descripción 3',
  `textarea_description_inferior` text COMMENT 'Contenido de la página Inferior',
  `textarea_description_home` text COMMENT 'Descripción 2',
  `text_page_title` varchar(120) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Páginas dinámicas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_plano`
--

DROP TABLE IF EXISTS `dynamic_plano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_plano` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(255) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
  `document_documento1` varchar(255) DEFAULT NULL COMMENT 'Documento 1',
  `text_titulo1` varchar(75) DEFAULT NULL COMMENT 'Título 1',
  `status` varchar(128) DEFAULT 'ACTIVED' COMMENT 'estado',
  `position` int(11) DEFAULT NULL COMMENT 'posicion',
  `id_avantio` tinyint(1) DEFAULT '1' COMMENT 'avantio',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Planos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_plano_hshv`
--

DROP TABLE IF EXISTS `dynamic_plano_hshv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_plano_hshv` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(255) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
  `document_documento1` varchar(255) DEFAULT NULL COMMENT 'Documento 1',
  `text_titulo1` varchar(75) DEFAULT NULL COMMENT 'Título 1',
  `status` varchar(128) DEFAULT 'ACTIVED' COMMENT 'estado',
  `position` int(11) DEFAULT NULL COMMENT 'posicion',
  `id_avantio` tinyint(1) DEFAULT '0' COMMENT 'avantio',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Planos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_prereserva`
--

DROP TABLE IF EXISTS `dynamic_prereserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_prereserva` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador de la pre reserva',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje pre reserva',
  `text_nombre_propiedad` varchar(255) DEFAULT NULL COMMENT 'Nombre propiedad',
  `number_id_propiedad` varchar(255) DEFAULT NULL COMMENT 'Identificador propiedad',
  `text_url_propiedad` varchar(255) DEFAULT NULL COMMENT 'Url propiedad',
  `number_precio_reserva` varchar(255) DEFAULT NULL COMMENT 'Precio pre reserva',
  `text_nombre_cliente` varchar(255) DEFAULT NULL COMMENT 'Nombre cliente',
  `text_apellido_cliente` varchar(255) DEFAULT NULL COMMENT 'Apellido cliente',
  `text_email_cliente` varchar(255) DEFAULT NULL COMMENT 'Email cliente',
  `number_telf_cliente` varchar(255) DEFAULT NULL COMMENT 'Telf cliente',
  `textarea_mensaje_cliente` text COMMENT 'Mensaje cliente',
  `number_metodo_envio` varchar(255) DEFAULT NULL COMMENT 'Método envío',
  `text_page_title` varchar(255) DEFAULT NULL COMMENT 'Título sobre el alojamiento',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 characters)',
  `text_meta_robots` varchar(255) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `text_meta_description` text COMMENT 'Meta Description (max 255 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='pre reserva';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_regiones_menu`
--

DROP TABLE IF EXISTS `dynamic_regiones_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_regiones_menu` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador',
  `language` char(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguage',
  `text_title` varchar(256) DEFAULT NULL COMMENT 'Título',
  `text_subtitle` varchar(256) DEFAULT NULL COMMENT 'Subtítulo',
  `dynamic_gallery_regiones_menu` varchar(45) DEFAULT NULL COMMENT 'Galería',
  `dynamic_taxonomy_geographic_language_fields_customitzation` varchar(45) DEFAULT NULL COMMENT 'Url',
  `textarea_description` text COMMENT 'Descripción',
  `text_page_title` varchar(120) DEFAULT NULL COMMENT 'Título página',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Automátic slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` varchar(128) DEFAULT 'ACTIVED' COMMENT 'Status',
  `position` int(11) DEFAULT NULL COMMENT 'position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='regiones menu';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_rooms`
--

DROP TABLE IF EXISTS `dynamic_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_rooms` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador del inmueble',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Titulo',
  `number_minprecio` int(11) DEFAULT NULL COMMENT 'min precio',
  `number_precio` bigint(20) DEFAULT NULL COMMENT 'precio',
  `textarea_description` text COMMENT 'Descripción principal',
  `text_page_title` text COMMENT 'Título sobre el alojamiento',
  `auto_slug` varchar(255) DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_slug` varchar(255) DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `text_meta_keywords` text COMMENT 'Meta Keywords (máx 255 characters)',
  `text_meta_robots` varchar(255) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `text_meta_description` text COMMENT 'Meta Description (max 255 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `id_avantio` tinyint(3) DEFAULT NULL COMMENT 'id avantio',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8 COMMENT='Listado Inmuebles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_services`
--

DROP TABLE IF EXISTS `dynamic_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_services` (
  `id` int(11) NOT NULL COMMENT 'Identificador',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguage',
  `text_title` varchar(45) DEFAULT NULL COMMENT 'Título (máximo 45 caracteres)',
  `image_icon` varchar(255) DEFAULT NULL COMMENT 'Imagen icono (extensión .svg)',
  `status` enum('ACTIVED','PAUSED') NOT NULL DEFAULT 'ACTIVED' COMMENT 'Status',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Posicion',
  `text_class_icon` varchar(75) DEFAULT NULL COMMENT 'Classe Icono',
  PRIMARY KEY (`id`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Servicios - Avantio';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_taxonomy`
--

DROP TABLE IF EXISTS `dynamic_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_taxonomy` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título de la Taxonomía (en cabecera)',
  `text_title_url` varchar(75) DEFAULT NULL COMMENT 'título url',
  `text_title_plural` varchar(255) DEFAULT NULL COMMENT 'Título de la Taxonomía (plural, en cabecera)',
  `text_subtitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Subtítulo de la Cabecera',
  `dynamic_taxonomy_group` varchar(45) DEFAULT NULL COMMENT 'Grupos de taxonomias',
  `textarea_description` text COMMENT 'Descripción principal',
  `text_page_title` varchar(45) DEFAULT NULL,
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `status_realstate` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Taxonomías';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_taxonomy_geographic_language`
--

DROP TABLE IF EXISTS `dynamic_taxonomy_geographic_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_taxonomy_geographic_language` (
  `id` int(11) NOT NULL COMMENT 'identificador pagina',
  `language` varchar(3) NOT NULL COMMENT 'lenguage',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'titulo',
  `text_subtitle` varchar(75) DEFAULT NULL COMMENT 'subtitulo',
  `dynamic_accion` int(11) DEFAULT NULL COMMENT 'accion',
  `dynamic_taxonomy_group` int(11) DEFAULT NULL COMMENT 'taxonomia',
  `dynamic_geocity` int(11) DEFAULT NULL COMMENT 'ciudad',
  `dynamic_geocountry` int(11) DEFAULT NULL COMMENT 'pais',
  `dynamic_geodistrict` int(11) DEFAULT NULL COMMENT 'distrito',
  `dynamic_geolocality` int(11) DEFAULT NULL COMMENT 'localidad',
  `dynamic_georegion` int(11) DEFAULT NULL COMMENT 'localidad',
  `dynamic_url_extra_parametro` int(11) DEFAULT NULL COMMENT 'localidad',
  `textarea_description` text COMMENT 'descripcion',
  `text_page_title` varchar(255) DEFAULT NULL COMMENT 'titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'keywords',
  `text_meta_description` text COMMENT 'meta descripcion',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'robots',
  `textarea_scripts_header` text COMMENT 'scripts header',
  `textarea_scripts_body` text COMMENT 'scripts body',
  `status` varchar(128) DEFAULT NULL COMMENT 'status',
  `position` int(11) DEFAULT NULL COMMENT 'position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sistema urls dinámicas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_taxonomy_geographic_language_carac`
--

DROP TABLE IF EXISTS `dynamic_taxonomy_geographic_language_carac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_taxonomy_geographic_language_carac` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Cabecera',
  `text_avantio` varchar(255) NOT NULL COMMENT 'avantio',
  `text_page_title` varchar(255) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` text COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Carac Avantio';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_taxonomy_geographic_language_extra`
--

DROP TABLE IF EXISTS `dynamic_taxonomy_geographic_language_extra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_taxonomy_geographic_language_extra` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Cabecera',
  `text_avantio` varchar(255) NOT NULL COMMENT 'avantio',
  `text_page_title` varchar(255) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` text COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Parametro extra';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_taxonomy_geographic_language_fields_customitzation`
--

DROP TABLE IF EXISTS `dynamic_taxonomy_geographic_language_fields_customitzation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_taxonomy_geographic_language_fields_customitzation` (
  `id` int(11) NOT NULL COMMENT 'identificador pagina',
  `language` varchar(3) NOT NULL COMMENT 'lenguage',
  `dynamic_geocountry` int(11) DEFAULT NULL COMMENT 'pais',
  `dynamic_georegion` int(11) DEFAULT NULL COMMENT 'region',
  `dynamic_geocity` int(11) DEFAULT NULL COMMENT 'ciudad',
  `dynamic_geolocality` int(11) DEFAULT NULL COMMENT 'localidad',
  `dynamic_geodistrict` int(11) DEFAULT NULL COMMENT 'distrito',
  `dynamic_url_extra_parametro` int(11) DEFAULT NULL COMMENT 'url extra parametro',
  `text_url` varchar(255) DEFAULT NULL COMMENT 'url',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'titulo',
  `text_subtitle` varchar(75) DEFAULT NULL COMMENT 'subtitulo',
  `textarea_description` text COMMENT 'descripcion',
  `textarea_description_2` text COMMENT 'descripción pie de pagina',
  `text_m_keywords` varchar(255) DEFAULT NULL COMMENT 'keywords',
  `text_m_desc` varchar(255) DEFAULT NULL COMMENT 'description',
  `text_m_robots` varchar(255) DEFAULT 'noindex, nofollow' COMMENT 'meta robots',
  `text_page_title` varchar(255) DEFAULT NULL,
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'keywords',
  `text_meta_description` text COMMENT 'meta descripcion',
  `text_meta_robots` varchar(45) DEFAULT 'noindex, nofollow' COMMENT 'robots',
  `textarea_scripts_header` text COMMENT 'scripts header',
  `textarea_scripts_body` text COMMENT 'scripts body',
  `status` varchar(128) DEFAULT NULL COMMENT 'status',
  `position` int(11) DEFAULT NULL COMMENT 'position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customitzation taxonomia';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_taxonomy_group`
--

DROP TABLE IF EXISTS `dynamic_taxonomy_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_taxonomy_group` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título de la Taxonomía (en cabecera)',
  `text_title_url` varchar(75) DEFAULT NULL COMMENT 'título url',
  `text_title_plural` varchar(255) DEFAULT NULL COMMENT 'Título de la Taxonomía (plural, en cabecera)',
  `text_subtitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Subtítulo de la Cabecera',
  `dynamic_taxonomy_group` varchar(45) DEFAULT NULL COMMENT 'Grupos de taxonomias',
  `textarea_description` text COMMENT 'Descripción principal',
  `text_page_title` varchar(45) DEFAULT NULL,
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `status_realstate` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Grupo Taxonomías';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_testimonials`
--

DROP TABLE IF EXISTS `dynamic_testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_testimonials` (
  `id` int(11) NOT NULL,
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `text_business` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `textarea_description` text COMMENT 'Descripción',
  `dynamic_gallery_franquicia_principal` varchar(45) DEFAULT NULL COMMENT 'Imagen Principal',
  `checkbox_destacada_home` varchar(45) DEFAULT NULL COMMENT 'Destacar en la home (si/no)',
  `checkbox_destacada_alojamiento` varchar(45) DEFAULT NULL COMMENT 'Destacar en la página de alojamiento',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tesimonials';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_url_detalle`
--

DROP TABLE IF EXISTS `dynamic_url_detalle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_url_detalle` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador',
  `language` char(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguage',
  `text_title` varchar(256) DEFAULT NULL COMMENT 'Título',
  `textarea_description` text COMMENT 'Descripción',
  `text_page_title` varchar(120) DEFAULT NULL COMMENT 'Título página',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Automátic slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` varchar(128) DEFAULT 'ACTIVED' COMMENT 'Status',
  `position` int(11) DEFAULT NULL COMMENT 'position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='url detalle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_usuario`
--

DROP TABLE IF EXISTS `dynamic_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_usuario` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Titulo usuario',
  `text_firstname` varchar(75) DEFAULT NULL COMMENT 'Título Nombre',
  `text_lastname` varchar(20) DEFAULT '' COMMENT 'Apellido',
  `number_telf` varchar(20) DEFAULT '' COMMENT 'Telf',
  `number_telf_mobil` varchar(20) DEFAULT '' COMMENT 'Telf',
  `text_direccion` varchar(20) DEFAULT '' COMMENT 'Dirección',
  `textarea_description` text COMMENT 'Contenido de la página',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Listado usuarios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ecb_exchange`
--

DROP TABLE IF EXISTS `ecb_exchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ecb_exchange` (
  `currency` varchar(3) NOT NULL,
  `rate` decimal(11,4) unsigned NOT NULL DEFAULT '1.0000',
  PRIMARY KEY (`currency`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ecb_exchange_tmp`
--

DROP TABLE IF EXISTS `ecb_exchange_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ecb_exchange_tmp` (
  `currency` varchar(3) NOT NULL,
  `rate` decimal(11,4) unsigned NOT NULL DEFAULT '1.0000',
  PRIMARY KEY (`currency`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hshv_avantio_accomodations`
--

DROP TABLE IF EXISTS `hshv_avantio_accomodations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avantio_accomodations` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador inmueble',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'language',
  `text_title` varchar(255) DEFAULT '' COMMENT 'Nombre del alojamiento',
  `text_referencia` varchar(45) DEFAULT NULL COMMENT 'Referencia',
  `text_userid` varchar(75) DEFAULT '' COMMENT 'Id usuario',
  `text_company` varchar(75) DEFAULT '' COMMENT 'Nombre compañia',
  `number_companyid` int(10) unsigned DEFAULT '0' COMMENT 'Id compañia',
  `text_numero_registro_turistico` varchar(255) DEFAULT '' COMMENT 'Número de registro turístico',
  `avantio_occupation_rules` int(11) unsigned DEFAULT '0' COMMENT 'Regla de ocupación',
  `avantio_pricemodifiers` int(11) unsigned DEFAULT '0' COMMENT 'Modificador de precio',
  `avantio_gallery` int(11) unsigned DEFAULT '0' COMMENT 'Galería',
  `dynamic_taxonomy` int(11) DEFAULT NULL COMMENT 'Taxonomía (Kinds)',
  `dynamic_geocountry` int(11) DEFAULT NULL COMMENT 'País',
  `dynamic_georegion` int(11) DEFAULT NULL COMMENT 'Región',
  `dynamic_geocity` int(11) DEFAULT NULL COMMENT 'Ciudad',
  `dynamic_geolocality` int(11) DEFAULT NULL COMMENT 'Localidad',
  `dynamic_geodistrict` int(11) DEFAULT NULL COMMENT 'Distrito',
  `text_geo_cp` text COMMENT 'Código Postal',
  `text_geo_tipo_calle` varchar(20) DEFAULT NULL COMMENT 'Nombre de vía',
  `text_geo_calle` varchar(255) DEFAULT NULL COMMENT 'Calle',
  `text_geo_numero` varchar(20) DEFAULT NULL COMMENT 'Número',
  `text_geo_bloque` varchar(20) DEFAULT NULL COMMENT 'Piso / Letra',
  `text_geo_puerta` varchar(20) DEFAULT NULL COMMENT 'Puerta',
  `text_geo_piso` varchar(20) DEFAULT NULL COMMENT 'Piso',
  `text_geo_latitud` varchar(45) DEFAULT NULL COMMENT 'GPS Latitud',
  `text_geo_longitud` varchar(45) DEFAULT NULL COMMENT 'GPS Longitud',
  `number_geo_zoom` int(11) unsigned DEFAULT NULL COMMENT 'Zoom Google Maps',
  `number_unidades` smallint(11) unsigned DEFAULT '0' COMMENT 'Número de alojamientos',
  `number_habitaciones` int(11) unsigned DEFAULT '1' COMMENT 'Número de habitaciones',
  `number_camas_doble` int(11) unsigned DEFAULT '0' COMMENT 'Número de camas dobles',
  `number_camas_individual` int(11) unsigned DEFAULT '0' COMMENT 'Número de camas individuales',
  `number_sofas_cama` int(11) unsigned DEFAULT '0' COMMENT 'Número de sofás cama',
  `number_sofas_cama_doble` int(11) unsigned DEFAULT '0' COMMENT 'Número de sofás cama doble',
  `number_literas` int(11) unsigned DEFAULT '0' COMMENT 'Número de literas',
  `number_dormitorios_personal` int(11) DEFAULT NULL COMMENT 'Dormitorios de personal',
  `number_camas_supletorias` int(11) DEFAULT NULL COMMENT 'Camas supletorias',
  `number_aseos` int(11) unsigned DEFAULT '0' COMMENT 'Número de aseos',
  `number_banyos_banyera` int(11) unsigned DEFAULT '0' COMMENT 'Número de baños con bañera',
  `number_banyos_ducha` int(11) unsigned DEFAULT '0' COMMENT 'Número de baños con ducha',
  `number_metros_cuadrados` int(11) unsigned DEFAULT '0' COMMENT 'Superficie parcela',
  `number_metros_cuadrados_utiles` int(11) unsigned DEFAULT '0' COMMENT 'Superficie vivienda',
  `number_metros_cuadrados_construidos` int(11) unsigned DEFAULT '0' COMMENT 'Metros cuadrados, superfície construida',
  `number_metros_cuadrados_terraza` int(11) unsigned DEFAULT '0' COMMENT 'Metros cuadrados, terraza',
  `number_capacidad_maxima` int(11) unsigned DEFAULT '1' COMMENT 'Ocupación máxima adultos con niños',
  `number_capacidad_minima` int(11) unsigned DEFAULT '1' COMMENT 'Ocupación mínima',
  `number_capacidad_sin_suplemento` int(11) DEFAULT NULL COMMENT 'Ocupación sin suplemento',
  `number_cocinas` int(11) unsigned DEFAULT '0' COMMENT 'Número cocinas',
  `number_fun` int(11) DEFAULT NULL COMMENT 'ventilador',
  `number_plazas_aparcamiento` int(11) DEFAULT NULL COMMENT 'plazas de aparcamiento',
  `text_cocina_clase` varchar(75) DEFAULT '' COMMENT 'Clase de cocina',
  `text_cocina_tipo` varchar(75) DEFAULT '' COMMENT 'Tipo de cocina',
  `text_orientacion` varchar(75) DEFAULT NULL COMMENT 'Orientación',
  `text_tipo_piscina` varchar(255) DEFAULT '' COMMENT 'Tipo piscina',
  `text_dimensiones_piscina` varchar(75) DEFAULT NULL COMMENT 'dimensiones piscina',
  `checkbox_grups` tinyint(4) unsigned DEFAULT '0' COMMENT 'grupos',
  `checkbox_piscina` tinyint(4) unsigned DEFAULT '0' COMMENT 'piscina',
  `checkbox_piscina_interior_climatizada` tinyint(4) DEFAULT NULL COMMENT 'piscina interior climatizada',
  `checkbox_piscina_climatizada` tinyint(4) DEFAULT NULL COMMENT 'piscina climatizada',
  `checkbox_piscina_de_agua_salada` tinyint(4) DEFAULT NULL COMMENT 'piscina agua salada',
  `checkbox_tv` tinyint(4) unsigned DEFAULT '0' COMMENT 'tv',
  `checkbox_jardin` tinyint(4) unsigned DEFAULT '0' COMMENT 'jardín',
  `checkbox_muebles_jardin` tinyint(4) unsigned DEFAULT '0' COMMENT 'muebles de jardín',
  `checkbox_plancha` tinyint(4) unsigned DEFAULT '0' COMMENT 'plancha',
  `checkbox_chimenea` tinyint(4) unsigned DEFAULT '0' COMMENT 'chimenea',
  `checkbox_barbacoa` tinyint(4) unsigned DEFAULT '0' COMMENT 'barbacoa',
  `checkbox_radio` tinyint(4) unsigned DEFAULT '0' COMMENT 'radio',
  `checkbox_minibar` tinyint(4) unsigned DEFAULT '0' COMMENT 'mini-bar',
  `checkbox_terraza` tinyint(4) unsigned DEFAULT '0' COMMENT 'terraza',
  `checkbox_parcela_vallada` tinyint(4) unsigned DEFAULT '0' COMMENT 'parcela vallada',
  `checkbox_caja_seguridad` tinyint(4) unsigned DEFAULT '0' COMMENT 'caja fuerte',
  `checkbox_ascensor` tinyint(4) unsigned DEFAULT '0' COMMENT 'ascensor',
  `checkbox_dvd` tinyint(4) unsigned DEFAULT '0' COMMENT 'reproductor de DVD',
  `checkbox_balcon` tinyint(4) unsigned DEFAULT '0' COMMENT 'balcón',
  `checkbox_exprimidor` tinyint(4) unsigned DEFAULT '0' COMMENT 'exprimidor',
  `checkbox_hervidor_electrico` tinyint(4) unsigned DEFAULT '0' COMMENT 'hervidor electrico',
  `checkbox_secador_pelo` tinyint(4) unsigned DEFAULT '0' COMMENT 'secador de pelo',
  `checkbox_zona_ninos` tinyint(4) unsigned DEFAULT '0' COMMENT 'zona para niños',
  `checkbox_gimnasio` tinyint(4) unsigned DEFAULT '0' COMMENT 'gimnasio',
  `checkbox_alarma` tinyint(4) unsigned DEFAULT '0' COMMENT 'alarma',
  `checkbox_tennis` tinyint(4) unsigned DEFAULT '0' COMMENT 'pista de tenis',
  `checkbox_squash` tinyint(4) unsigned DEFAULT '0' COMMENT 'squash',
  `checkbox_paddel` tinyint(4) unsigned DEFAULT '0' COMMENT 'paddel',
  `checkbox_sauna` tinyint(4) unsigned DEFAULT '0' COMMENT 'sauna',
  `checkbox_jacuzzi` tinyint(4) unsigned DEFAULT '0' COMMENT 'jacuzzi',
  `checkbox_apta_discapacitados` tinyint(4) unsigned DEFAULT '0' COMMENT 'apta para discapacitados',
  `checkbox_nevera` tinyint(4) unsigned DEFAULT '0' COMMENT 'nevera',
  `checkbox_congelador` tinyint(4) unsigned DEFAULT '0' COMMENT 'congelador',
  `checkbox_lavavajillas` tinyint(4) unsigned DEFAULT '0' COMMENT 'lavavajillas',
  `checkbox_lavadora` tinyint(4) unsigned DEFAULT '0' COMMENT 'lavadora',
  `checkbox_secadora` tinyint(4) unsigned DEFAULT '0' COMMENT 'secadora',
  `checkbox_cafetera` tinyint(4) unsigned DEFAULT '0' COMMENT 'cafetera',
  `checkbox_tostadora` tinyint(4) unsigned DEFAULT '0' COMMENT 'tostadora',
  `checkbox_microondas` tinyint(4) unsigned DEFAULT '0' COMMENT 'microondas',
  `checkbox_horno` tinyint(4) unsigned DEFAULT '0' COMMENT 'horno',
  `checkbox_vajilla` tinyint(4) unsigned DEFAULT '0' COMMENT 'vajilla',
  `checkbox_utensilios_cocina` tinyint(4) unsigned DEFAULT '0' COMMENT 'utensilios de concina',
  `checkbox_aparcamiento` tinyint(4) DEFAULT NULL COMMENT 'aparcamiento',
  `id_avantio` tinyint(3) DEFAULT NULL COMMENT 'pertenece a avantio',
  `dynamic_taxonomy_geographic_language_fields_customitzation` int(11) DEFAULT NULL COMMENT 'extra field',
  `checkbox_cerca_del_mar` tinyint(4) DEFAULT NULL COMMENT 'cerca del mar',
  `checkbox_acceso_directo_mar` tinyint(4) DEFAULT NULL COMMENT 'acceso directo mar',
  `checkbox_batidora` tinyint(4) DEFAULT NULL COMMENT 'batidora',
  `checkbox_extra_nevera` tinyint(4) DEFAULT NULL COMMENT 'extra nevera',
  `checkbox_vinoteca` tinyint(4) DEFAULT NULL COMMENT 'vinoteca / frigorifico vinos',
  `checkbox_hervidor_agua` tinyint(4) DEFAULT NULL COMMENT 'hervidor de agua',
  `checkbox_cafetera_nespresso` tinyint(4) DEFAULT NULL COMMENT 'cafetera nespresso',
  `checkbox_wifi` tinyint(4) DEFAULT NULL COMMENT 'wifi',
  `checkbox_fibra_optica` tinyint(4) DEFAULT NULL COMMENT 'fibra optica',
  `checkbox_internet_por_cable` tinyint(4) DEFAULT NULL COMMENT 'internet por cable',
  `checkbox_internet_velocidad_lenta` tinyint(4) DEFAULT NULL COMMENT 'internet velocidad lenta',
  `checkbox_internet_velocidad_media` tinyint(4) DEFAULT NULL COMMENT 'internet velocidad media',
  `checkbox_internet_velocidad_rapida` tinyint(4) DEFAULT NULL COMMENT 'internet velocidad rapida',
  `checkbox_aire_acondicionado` tinyint(4) DEFAULT NULL COMMENT 'aire acondicionado',
  `checkbox_ventilador` tinyint(4) DEFAULT NULL COMMENT 'ventilador',
  `checkbox_calefacion_central` tinyint(4) DEFAULT NULL COMMENT 'calefacion central',
  `checkbox_bomba_aire` tinyint(4) DEFAULT NULL COMMENT 'bomba aire frio/calor',
  `checkbox_suelo_radiante` tinyint(4) DEFAULT NULL COMMENT 'suelo radiante',
  `checkbox_cine` tinyint(4) DEFAULT NULL COMMENT 'cine',
  `checkbox_equipo_musica` tinyint(4) DEFAULT NULL COMMENT 'equipo de musica',
  `checkbox_barbacoa_gas` tinyint(4) DEFAULT NULL COMMENT 'barbacoa de gas',
  `checkbox_bano_turco` tinyint(4) DEFAULT NULL COMMENT 'baño turco',
  `checkbox_billar` tinyint(4) DEFAULT NULL COMMENT 'billar',
  `checkbox_ping_pong` tinyint(4) DEFAULT NULL COMMENT 'ping pong',
  `checkbox_seguridad_piscina` tinyint(4) DEFAULT NULL COMMENT 'seguridad piscina',
  `checkbox_accesorios_yoga` tinyint(4) DEFAULT NULL COMMENT 'accesorios yoga',
  `checkbox_hosekeeping` tinyint(4) DEFAULT NULL COMMENT 'hosekeeping on site',
  `checkbox_trona` tinyint(4) DEFAULT NULL COMMENT 'trona',
  `checkbox_mascotas` tinyint(4) DEFAULT NULL COMMENT 'mascotas',
  `checkbox_helipuerto` tinyint(4) DEFAULT NULL COMMENT 'helipuerto',
  `checkbox_zona_de_bar_exterior` tinyint(4) DEFAULT NULL COMMENT 'zona de bar exterior',
  `checkbox_discoteca_privada` tinyint(4) DEFAULT NULL COMMENT 'discoteca privada',
  `checkbox_distancias_playa_arena` tinyint(4) DEFAULT NULL COMMENT 'distancias playa arena',
  `checkbox_distancias_playa_roca` tinyint(4) DEFAULT NULL COMMENT 'distancias playa roca',
  `checkbox_distancias_golf` tinyint(4) DEFAULT NULL COMMENT 'distancias golf',
  `checkbox_distancias_pueblo` tinyint(4) DEFAULT NULL COMMENT 'distancias pueblo',
  `checkbox_distancias_supermercado` tinyint(4) DEFAULT NULL COMMENT 'distancias supermercado',
  `checkbox_distancias_aeropuerto` tinyint(4) DEFAULT NULL COMMENT 'distancias aeropuerto',
  `multiple_taxonomy_geographic_language_extra` varchar(255) DEFAULT NULL COMMENT 'coleccion',
  `multiple_taxonomy_geographic_language_carac` varchar(255) DEFAULT NULL COMMENT 'carac avantio',
  `status` varchar(128) DEFAULT 'ACTIVED' COMMENT 'estado',
  `position` int(11) DEFAULT '0' COMMENT 'posicion',
  `text_tipo_descuento` varchar(255) DEFAULT NULL COMMENT 'tipo descuento'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Alojamientos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hshv_avantio_accomodations_descriptions`
--

DROP TABLE IF EXISTS `hshv_avantio_accomodations_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avantio_accomodations_descriptions` (
  `language` varchar(5) NOT NULL DEFAULT 'es',
  `avantio_accomodations` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `booking_url` varchar(1024) NOT NULL DEFAULT '',
  PRIMARY KEY (`language`,`avantio_accomodations`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Descriptions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hshv_avantio_accomodations_extras`
--

DROP TABLE IF EXISTS `hshv_avantio_accomodations_extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avantio_accomodations_extras` (
  `avantio_accomodations` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'id acommodations',
  `dynamic_services` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'dynamic services',
  `checkbox_included` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'incluido',
  `price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'precio',
  `price_unit` varchar(75) NOT NULL DEFAULT 'RESERVA' COMMENT 'precio unitario',
  `price_children` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'precio niños',
  `price_children_unit` varchar(75) NOT NULL DEFAULT 'RESERVA' COMMENT 'precio niños unitario',
  `checkbox_pago_en_reserva` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'pago en reserva',
  `checkbox_opcional` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT 'opcional',
  `text_type` varchar(75) NOT NULL DEFAULT '' COMMENT 'tipo',
  `text_parking_location` varchar(45) NOT NULL DEFAULT '' COMMENT 'ubicación parking',
  `number_limit_weight` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'limite peso',
  PRIMARY KEY (`avantio_accomodations`,`dynamic_services`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Servicios extras';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hshv_avantio_accomodations_fields`
--

DROP TABLE IF EXISTS `hshv_avantio_accomodations_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avantio_accomodations_fields` (
  `avantio_accomodations` int(11) NOT NULL COMMENT 'Identificador avantio',
  `textarea_notas_internas` text NOT NULL COMMENT 'notas internas',
  `number_capacidad_real` int(11) DEFAULT NULL COMMENT 'Capacidad real',
  `text_youtube` varchar(255) DEFAULT '' COMMENT 'Link youtube',
  `text_cert_energetico` varchar(255) DEFAULT '0' COMMENT 'cert. energético',
  PRIMARY KEY (`avantio_accomodations`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Acommodations tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hshv_avantio_accomodations_fields_bullets`
--

DROP TABLE IF EXISTS `hshv_avantio_accomodations_fields_bullets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avantio_accomodations_fields_bullets` (
  `avantio_accomodations` int(11) NOT NULL COMMENT 'Identificador acommdation',
  `language` varchar(3) NOT NULL COMMENT 'lenguage',
  `textarea_bullet` text NOT NULL COMMENT 'bullet',
  `textarea_informacion_adicional` text COMMENT 'Información adicional',
  PRIMARY KEY (`avantio_accomodations`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Bullets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hshv_avantio_accomodations_locations`
--

DROP TABLE IF EXISTS `hshv_avantio_accomodations_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avantio_accomodations_locations` (
  `avantio_accomodations` int(10) unsigned NOT NULL DEFAULT '0',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'titulo',
  `loc_where` varchar(255) NOT NULL DEFAULT '' COMMENT 'where',
  `loc_howto` varchar(255) NOT NULL DEFAULT '' COMMENT 'howto',
  `loc_desc1` varchar(255) NOT NULL DEFAULT '' COMMENT 'descripción 1',
  `loc_desc2` varchar(255) NOT NULL DEFAULT '' COMMENT 'descripción 2',
  `beach_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Beach name',
  `beach_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Beach distance',
  `beach_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance beach unit',
  `golf_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Golf name',
  `golf_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Golf distance',
  `golf_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance golf unit',
  `city_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'City Name',
  `city_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'City Distance',
  `city_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance city unit',
  `super_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Super name',
  `super_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Super Distance',
  `super_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance super unit',
  `airport_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Airport Name',
  `airport_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Airport Distance',
  `airport_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance airport unit',
  `train_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Train Name',
  `train_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Train Distance',
  `train_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance train unit',
  `bus_name` varchar(75) NOT NULL DEFAULT '' COMMENT 'Bus name',
  `bus_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Bus Distance',
  `bus_dist_unit` char(3) DEFAULT NULL COMMENT 'Distance bus unit',
  `view_to_beach` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View To Beach',
  `view_to_swimming_pool` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to swimming pool',
  `view_to_golf` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View To golf',
  `view_to_garden` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to garden',
  `view_to_river` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to river',
  `view_to_mountain` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to mountain',
  `view_to_lake` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to lake',
  `first_line_beach` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'First line beach',
  `first_line_golf` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'First Line golf',
  `position` int(11) DEFAULT NULL COMMENT 'position',
  `id_avantio` int(11) DEFAULT NULL COMMENT 'avantio',
  PRIMARY KEY (`avantio_accomodations`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Localizaciones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hshv_avantio_accomodations_nearest_places`
--

DROP TABLE IF EXISTS `hshv_avantio_accomodations_nearest_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avantio_accomodations_nearest_places` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `avantio_accomodations` int(10) unsigned NOT NULL DEFAULT '0',
  `place_type` varchar(75) NOT NULL DEFAULT '',
  `place_name` varchar(255) NOT NULL DEFAULT '',
  `distance` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'metros',
  `dist_unit` char(3) DEFAULT NULL COMMENT 'Distance unit',
  PRIMARY KEY (`id`),
  KEY `accomodation` (`avantio_accomodations`)
) ENGINE=MyISAM AUTO_INCREMENT=226 DEFAULT CHARSET=utf8 COMMENT='Nearest Places';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hshv_avantio_accomodations_pictures`
--

DROP TABLE IF EXISTS `hshv_avantio_accomodations_pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avantio_accomodations_pictures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hshv_dynamic_rooms` int(11) unsigned NOT NULL DEFAULT '0',
  `uri_900x600` varchar(255) NOT NULL DEFAULT '',
  `uri_650x450` varchar(255) NOT NULL DEFAULT '',
  `uri_99x66` varchar(255) DEFAULT NULL,
  `id_avantio` tinyint(3) DEFAULT NULL COMMENT 'identificador avantio',
  PRIMARY KEY (`id`,`hshv_dynamic_rooms`)
) ENGINE=MyISAM AUTO_INCREMENT=1865 DEFAULT CHARSET=utf8 COMMENT='Pictures';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hshv_avantio_availabilities`
--

DROP TABLE IF EXISTS `hshv_avantio_availabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avantio_availabilities` (
  `accommodation_id` int(10) unsigned NOT NULL,
  `occupation_rule_id` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`accommodation_id`,`occupation_rule_id`,`fecha`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hshv_avantio_occupation_rules`
--

DROP TABLE IF EXISTS `hshv_avantio_occupation_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avantio_occupation_rules` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `min_nights` smallint(5) unsigned NOT NULL DEFAULT '1',
  `min_nights_online` smallint(5) unsigned NOT NULL DEFAULT '1',
  `checkin` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `checkout` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`fecha`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Reglas de ocupación';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hshv_avantio_occupation_rules_names`
--

DROP TABLE IF EXISTS `hshv_avantio_occupation_rules_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avantio_occupation_rules_names` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hshv_avantio_occupation_rules_partials`
--

DROP TABLE IF EXISTS `hshv_avantio_occupation_rules_partials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avantio_occupation_rules_partials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_hshv_avantio_occupation_rules_names` int(11) DEFAULT '0',
  `fecha_inicial` date DEFAULT NULL,
  `fecha_final` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Occupation rules partials';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hshv_avantio_pricemodifiers`
--

DROP TABLE IF EXISTS `hshv_avantio_pricemodifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avantio_pricemodifiers` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(75) NOT NULL DEFAULT '',
  `fecha` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `code` varchar(20) NOT NULL,
  `acumulative` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `min_nights` int(11) unsigned NOT NULL DEFAULT '0',
  `max_nights` int(11) unsigned NOT NULL DEFAULT '0',
  `type` enum('tpc','val') NOT NULL DEFAULT 'tpc',
  `amount` decimal(7,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`,`fecha`,`min_nights`,`max_nights`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hshv_avantio_rates`
--

DROP TABLE IF EXISTS `hshv_avantio_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avantio_rates` (
  `accommodation_id` int(10) unsigned NOT NULL,
  `capacity` int(10) unsigned NOT NULL,
  `fecha` date NOT NULL,
  `price` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`accommodation_id`,`capacity`,`fecha`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
-- Table structure for table `hshv_avavantio_accomodations_locations`
--

DROP TABLE IF EXISTS `hshv_avavantio_accomodations_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avavantio_accomodations_locations` (
  `avantio_accomodations` int(10) unsigned NOT NULL DEFAULT '0',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'titulo',
  `loc_where` varchar(255) DEFAULT NULL COMMENT 'where',
  `loc_howto` varchar(255) NOT NULL DEFAULT '' COMMENT 'howto',
  `loc_desc1` varchar(255) NOT NULL DEFAULT '' COMMENT 'descripción 1',
  `loc_desc2` varchar(255) NOT NULL DEFAULT '' COMMENT 'descripción 2',
  `beach_name` varchar(75) NOT NULL DEFAULT 'RESERVA' COMMENT 'Beach name',
  `beach_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Beach distance',
  `beach_dist_unit` char(3) NOT NULL COMMENT 'Distance beach unit',
  `golf_name` varchar(75) NOT NULL DEFAULT 'RESERVA' COMMENT 'Golf name',
  `golf_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Golf distance',
  `golf_dist_unit` char(3) NOT NULL COMMENT 'Distance golf unit',
  `city_name` varchar(75) NOT NULL DEFAULT 'RESERVA' COMMENT 'City Name',
  `city_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'City Distance',
  `city_dist_unit` char(3) NOT NULL COMMENT 'Distance city unit',
  `super_name` varchar(75) NOT NULL DEFAULT 'RESERVA' COMMENT 'Super name',
  `super_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Super Distance',
  `super_dist_unit` char(3) NOT NULL COMMENT 'Distance super unit',
  `airport_name` varchar(75) NOT NULL DEFAULT 'RESERVA' COMMENT 'Airport Name',
  `airport_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Airport Distance',
  `airport_dist_unit` char(3) NOT NULL COMMENT 'Distance airport unit',
  `train_name` varchar(75) NOT NULL DEFAULT 'RESERVA' COMMENT 'Train Name',
  `train_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Train Distance',
  `train_dist_unit` char(3) NOT NULL COMMENT 'Distance train unit',
  `bus_name` varchar(75) NOT NULL DEFAULT 'RESERVA' COMMENT 'Bus name',
  `bus_dist` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Bus Distance',
  `bus_dist_unit` char(3) NOT NULL COMMENT 'Distance bus unit',
  `view_to_beach` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View To Beach',
  `view_to_swimming_pool` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to swimming pool',
  `view_to_golf` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View To golf',
  `view_to_garden` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to garden',
  `view_to_river` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to river',
  `view_to_mountain` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to mountain',
  `view_to_lake` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'View to lake',
  `first_line_beach` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'First line beach',
  `first_line_golf` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT 'First Line golf',
  `position` int(11) DEFAULT NULL COMMENT 'position',
  `id_avantio` int(11) DEFAULT NULL COMMENT 'avantio',
  PRIMARY KEY (`avantio_accomodations`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Localizaciones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hshv_dynamic_rooms`
--

DROP TABLE IF EXISTS `hshv_dynamic_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_dynamic_rooms` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador del inmueble',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Titulo',
  `number_minprecio` int(11) DEFAULT NULL COMMENT 'min precio',
  `number_precio` bigint(20) DEFAULT NULL COMMENT 'precio',
  `textarea_description` text COMMENT 'Descripción principal',
  `text_page_title` text COMMENT 'Título sobre el alojamiento',
  `auto_slug` varchar(255) DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_slug` varchar(255) DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `text_meta_keywords` text COMMENT 'Meta Keywords (máx 255 characters)',
  `text_meta_robots` varchar(255) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `text_meta_description` text COMMENT 'Meta Description (max 255 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `id_avantio` tinyint(3) DEFAULT NULL COMMENT 'pertenece a avantio',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8 COMMENT='Listado Inmuebles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hshv_dynamic_services`
--

DROP TABLE IF EXISTS `hshv_dynamic_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_dynamic_services` (
  `id` int(11) NOT NULL COMMENT 'Título',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(45) DEFAULT NULL COMMENT 'Título (máximo 45 caracteres)',
  `image_icon` varchar(255) DEFAULT NULL COMMENT 'Imagen icono (extensión .svg)',
  `status` enum('ACTIVED','PAUSED') NOT NULL DEFAULT 'ACTIVED',
  `position` int(11) NOT NULL DEFAULT '0',
  `text_class_icon` varchar(75) DEFAULT NULL COMMENT 'Classe Icono',
  PRIMARY KEY (`id`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Servicios - Avantio';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hshv_ecb_exchange`
--

DROP TABLE IF EXISTS `hshv_ecb_exchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_ecb_exchange` (
  `currency` varchar(3) NOT NULL,
  `rate` decimal(11,4) unsigned NOT NULL DEFAULT '1.0000',
  PRIMARY KEY (`currency`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `languages` (
  `id` varchar(45) NOT NULL DEFAULT '' COMMENT 'identificador',
  `name` varchar(45) DEFAULT NULL COMMENT 'Idioma',
  `actived` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Activado',
  `default` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Defecto',
  `locale` varchar(45) NOT NULL DEFAULT '' COMMENT 'Local',
  `text_lang` varchar(45) NOT NULL DEFAULT '' COMMENT 'Texto Idioma',
  `status` varchar(128) DEFAULT NULL COMMENT 'estado',
  `position` int(11) DEFAULT NULL COMMENT 'posicion',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `message` (
  `id_indice` int(10) NOT NULL COMMENT 'Clave primaria',
  `id` bigint(20) NOT NULL,
  `id2` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `user1` bigint(20) NOT NULL,
  `user2` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `timestamp` int(10) NOT NULL,
  `user1read` varchar(3) NOT NULL,
  `user2read` varchar(3) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id_indice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mrbs_area`
--

DROP TABLE IF EXISTS `mrbs_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mrbs_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `area_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timezone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_admin_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `resolution` int(11) DEFAULT NULL,
  `default_duration` int(11) DEFAULT NULL,
  `default_duration_all_day` tinyint(1) NOT NULL DEFAULT '0',
  `morningstarts` int(11) DEFAULT NULL,
  `morningstarts_minutes` int(11) DEFAULT NULL,
  `eveningends` int(11) DEFAULT NULL,
  `eveningends_minutes` int(11) DEFAULT NULL,
  `private_enabled` tinyint(1) DEFAULT NULL,
  `private_default` tinyint(1) DEFAULT NULL,
  `private_mandatory` tinyint(1) DEFAULT NULL,
  `private_override` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_create_ahead_enabled` tinyint(1) DEFAULT NULL,
  `min_create_ahead_secs` int(11) DEFAULT NULL,
  `max_create_ahead_enabled` tinyint(1) DEFAULT NULL,
  `max_create_ahead_secs` int(11) DEFAULT NULL,
  `min_delete_ahead_enabled` tinyint(1) DEFAULT NULL,
  `min_delete_ahead_secs` int(11) DEFAULT NULL,
  `max_delete_ahead_enabled` tinyint(1) DEFAULT NULL,
  `max_delete_ahead_secs` int(11) DEFAULT NULL,
  `max_per_day_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_day` int(11) NOT NULL DEFAULT '0',
  `max_per_week_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_week` int(11) NOT NULL DEFAULT '0',
  `max_per_month_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_month` int(11) NOT NULL DEFAULT '0',
  `max_per_year_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_year` int(11) NOT NULL DEFAULT '0',
  `max_per_future_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_per_future` int(11) NOT NULL DEFAULT '0',
  `max_secs_per_day_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_secs_per_day` int(11) NOT NULL DEFAULT '0',
  `max_secs_per_week_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_secs_per_week` int(11) NOT NULL DEFAULT '0',
  `max_secs_per_month_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_secs_per_month` int(11) NOT NULL DEFAULT '0',
  `max_secs_per_year_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_secs_per_year` int(11) NOT NULL DEFAULT '0',
  `max_secs_per_future_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_secs_per_future` int(11) NOT NULL DEFAULT '0',
  `max_duration_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `max_duration_secs` int(11) NOT NULL DEFAULT '0',
  `max_duration_periods` int(11) NOT NULL DEFAULT '0',
  `custom_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `approval_enabled` tinyint(1) DEFAULT NULL,
  `reminders_enabled` tinyint(1) DEFAULT NULL,
  `enable_periods` tinyint(1) DEFAULT NULL,
  `periods` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `confirmation_enabled` tinyint(1) DEFAULT NULL,
  `confirmed_default` tinyint(1) DEFAULT NULL,
  `times_along_top` tinyint(1) NOT NULL DEFAULT '0',
  `default_type` char(1) NOT NULL DEFAULT 'E',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_area_name` (`area_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mrbs_entry`
--

DROP TABLE IF EXISTS `mrbs_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mrbs_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
  `entry_type` int(11) NOT NULL DEFAULT '0',
  `repeat_id` int(11) DEFAULT NULL,
  `room_id` int(11) NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'E',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reminded` int(11) DEFAULT NULL,
  `info_time` int(11) DEFAULT NULL,
  `info_user` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ical_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ical_sequence` smallint(6) NOT NULL DEFAULT '0',
  `ical_recur_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_registration` tinyint(1) NOT NULL DEFAULT '0',
  `registrant_limit` int(11) NOT NULL DEFAULT '0',
  `registrant_limit_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `registration_opens` int(11) NOT NULL DEFAULT '1209600' COMMENT 'Seconds before the start time',
  `registration_opens_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `registration_closes` int(11) NOT NULL DEFAULT '0' COMMENT 'Seconds before the start_time',
  `registration_closes_enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `repeat_id` (`repeat_id`),
  KEY `idxStartTime` (`start_time`),
  KEY `idxEndTime` (`end_time`),
  KEY `idxRoomStartEnd` (`room_id`,`start_time`,`end_time`),
  CONSTRAINT `mrbs_entry_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `mrbs_room` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `mrbs_entry_ibfk_2` FOREIGN KEY (`repeat_id`) REFERENCES `mrbs_repeat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mrbs_participants`
--

DROP TABLE IF EXISTS `mrbs_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mrbs_participants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registered` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_entryid_username` (`entry_id`,`username`),
  CONSTRAINT `mrbs_participants_ibfk_1` FOREIGN KEY (`entry_id`) REFERENCES `mrbs_entry` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mrbs_repeat`
--

DROP TABLE IF EXISTS `mrbs_repeat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mrbs_repeat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` int(11) NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
  `end_time` int(11) NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
  `rep_type` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
  `rep_opt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `room_id` int(11) NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'E',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rep_interval` smallint(6) NOT NULL DEFAULT '1',
  `month_absolute` smallint(6) DEFAULT NULL,
  `month_relative` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `reminded` int(11) DEFAULT NULL,
  `info_time` int(11) DEFAULT NULL,
  `info_user` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ical_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ical_sequence` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `room_id` (`room_id`),
  CONSTRAINT `mrbs_repeat_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `mrbs_room` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mrbs_room`
--

DROP TABLE IF EXISTS `mrbs_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mrbs_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `area_id` int(11) NOT NULL DEFAULT '0',
  `room_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sort_key` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int(11) NOT NULL DEFAULT '0',
  `room_admin_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `invalid_types` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON encoded',
  `custom_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_room_name` (`area_id`,`room_name`),
  KEY `idxSortKey` (`sort_key`),
  CONSTRAINT `mrbs_room_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `mrbs_area` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mrbs_sessions`
--

DROP TABLE IF EXISTS `mrbs_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mrbs_sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned DEFAULT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idxAccess` (`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mrbs_users`
--

DROP TABLE IF EXISTS `mrbs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mrbs_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `level` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login` int(11) NOT NULL DEFAULT '0',
  `reset_key_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_key_expiry` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mrbs_variables`
--

DROP TABLE IF EXISTS `mrbs_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mrbs_variables` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `variable_name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variable_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_variable_name` (`variable_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mrbs_zoneinfo`
--

DROP TABLE IF EXISTS `mrbs_zoneinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mrbs_zoneinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `timezone` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `outlook_compatible` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `vtimezone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_updated` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_timezone` (`timezone`,`outlook_compatible`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del registro usuario de la newsletter',
  `email` varchar(250) NOT NULL COMMENT 'email del usuario',
  `language` varchar(250) NOT NULL COMMENT 'lenguage',
  `status` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `password_reset`
--

DROP TABLE IF EXISTS `password_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_reset` (
  `email` varchar(250) NOT NULL,
  `key` varchar(250) NOT NULL,
  `expDate` datetime NOT NULL,
  `id` int(10) NOT NULL COMMENT 'Clave primaria',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `preferences`
--

DROP TABLE IF EXISTS `preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `preferences` (
  `id` int(11) NOT NULL DEFAULT '1',
  `scripts_body` text NOT NULL,
  `cache_time` int(11) NOT NULL DEFAULT '0',
  `with_thumbnail_high` int(11) NOT NULL DEFAULT '800',
  `with_thumbnail_low` int(11) DEFAULT '400',
  `with_thumbnail_mobile` int(11) DEFAULT '250',
  `text_mailform` varchar(255) DEFAULT NULL COMMENT 'Mail Formularios',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador rol',
  `role` varchar(50) DEFAULT NULL COMMENT 'rol usuariio',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Roles usuario';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmp_dynamic_rooms`
--

DROP TABLE IF EXISTS `tmp_dynamic_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tmp_dynamic_rooms` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador del inmueble',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Titulo',
  `number_minprecio` int(11) DEFAULT NULL COMMENT 'min precio',
  `number_precio` bigint(20) DEFAULT NULL COMMENT 'precio',
  `textarea_description` text COMMENT 'Descripción principal',
  `text_page_title` text COMMENT 'Título sobre el alojamiento',
  `auto_slug` varchar(255) DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_slug` varchar(255) DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `text_meta_keywords` text COMMENT 'Meta Keywords (máx 255 characters)',
  `text_meta_robots` varchar(255) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `text_meta_description` text COMMENT 'Meta Description (max 255 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  `id_avantio` tinyint(3) DEFAULT NULL COMMENT 'id avantio',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8 COMMENT='Listado Inmuebles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'password',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'info@pisosenmanresa.com' COMMENT 'Email usuario',
  `grupo` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'usuario',
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'ACTIVED',
  `roleId` int(11) DEFAULT '8' COMMENT 'Rol usuario',
  `created_at` datetime DEFAULT NULL COMMENT 'created at',
  `updated_at` datetime DEFAULT NULL COMMENT 'updated at',
  `deleted_at` datetime DEFAULT NULL COMMENT 'deleted at',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='usuarios';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-19 18:35:06
