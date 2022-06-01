# consultas
# CREATE DATABASE portvil CHARACTER SET utf8 collate utf8_general_ci;
# drop database phpandfr_porvil;
# CREATE DATABASE phpandfr_portvil CHARACTER SET utf8 collate utf8_general_ci;

use phpandfr_portvil;

# añadimos season y eliminamos fecha fin
ALTER TABLE avantio_pricemodifiers ADD COLUMN season tinyint(3) COMMENT "temporada";
ALTER TABLE hshv_avantio_pricemodifiers ADD COLUMN season tinyint(3) COMMENT "temporada";
ALTER TABLE avantio_pricemodifiers DROP COLUMN fecha_fin;
ALTER TABLE hshv_avantio_pricemodifiers DROP COLUMN fecha_fin;

--
-- Table structure for table `avantio_occupation_rules_checkin_days`
--
DROP TABLE IF EXISTS `avantio_occupation_rules_checkin_days`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_occupation_rules_checkin_days` (
`id` int(11) NOT NULL,
`avantio_occupation_rules` int(11) NOT NULL,
`season` tinyint(3) unsigned NOT NULL DEFAULT '1',
`monday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`tuesday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`wednesday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`thursday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`friday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`saturday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`sunday` tinyint(3) unsigned NOT NULL DEFAULT '1',
PRIMARY KEY (`id`,`avantio_occupation_rules`,`season`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='Checkin days reglas de ocupación';


--
-- Table structure for table `avantio_occupation_rules_checkin_days`
--
DROP TABLE IF EXISTS `avantio_occupation_rules_checkout_days`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_occupation_rules_checkout_days` (
`id` int(11) NOT NULL,
`avantio_occupation_rules` int(11) NOT NULL,
`season` tinyint(3) unsigned NOT NULL DEFAULT '1',
`monday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`tuesday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`wednesday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`thursday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`friday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`saturday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`sunday` tinyint(3) unsigned NOT NULL DEFAULT '1',
PRIMARY KEY (`id`,`avantio_occupation_rules`,`season`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='Checkout days reglas de ocupación';


--
-- Table structure for table `avantio_occupation_rules_checkin_days`
--
DROP TABLE IF EXISTS `hshv_avantio_occupation_rules_checkin_days`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avantio_occupation_rules_checkin_days` (
`id` int(11) NOT NULL,
`avantio_occupation_rules` int(11) NOT NULL,
`season` tinyint(3) unsigned NOT NULL DEFAULT '1',
`monday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`tuesday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`wednesday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`thursday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`friday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`saturday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`sunday` tinyint(3) unsigned NOT NULL DEFAULT '1',
PRIMARY KEY (`id`,`avantio_occupation_rules`,`season`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='Checkin days reglas de ocupación';


--
-- Table structure for table `avantio_occupation_rules_checkin_days`
--
DROP TABLE IF EXISTS `hshv_avantio_occupation_rules_checkout_days`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `hshv_avantio_occupation_rules_checkout_days` (
`id` int(11) NOT NULL,
`avantio_occupation_rules` int(11) NOT NULL,
`season` tinyint(3) unsigned NOT NULL DEFAULT '1',
`monday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`tuesday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`wednesday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`thursday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`friday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`saturday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`sunday` tinyint(3) unsigned NOT NULL DEFAULT '1',
PRIMARY KEY (`id`,`avantio_occupation_rules`,`season`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='Checkout days reglas de ocupación';

--
-- Table structure for table `avantio_occupation_rules_checkin_days`
--
DROP TABLE IF EXISTS `avantio_occupation_rules_checkin_days_tmp`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_occupation_rules_checkin_days_tmp` (
`id` int(11) NOT NULL,
`avantio_occupation_rules` int(11) NOT NULL,
`season` tinyint(3) unsigned NOT NULL DEFAULT '1',
`monday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`tuesday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`wednesday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`thursday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`friday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`saturday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`sunday` tinyint(3) unsigned NOT NULL DEFAULT '1',
PRIMARY KEY (`id`,`avantio_occupation_rules`,`season`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='Checkin days reglas de ocupación';


--
-- Table structure for table `avantio_occupation_rules_checkin_days`
--
DROP TABLE IF EXISTS `avantio_occupation_rules_checkout_days_tmp`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
SET character_set_client = utf8mb4 ;
CREATE TABLE `avantio_occupation_rules_checkout_days_tmp` (
`id` int(11) NOT NULL,
`avantio_occupation_rules` int(11) NOT NULL,
`season` tinyint(3) unsigned NOT NULL DEFAULT '1',
`monday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`tuesday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`wednesday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`thursday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`friday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`saturday` tinyint(3) unsigned NOT NULL DEFAULT '1',
`sunday` tinyint(3) unsigned NOT NULL DEFAULT '1',
PRIMARY KEY (`id`,`avantio_occupation_rules`,`season`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='Checkout days reglas de ocupación';



# nuevas tablas geoarea y geoprovince
CREATE TABLE `dynamic_geoarea` (
`id` int(11) NOT NULL COMMENT 'Título area',
`language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
`dynamic_georegion` int(11) NOT NULL DEFAULT '0' COMMENT 'Región',
`text_title` varchar(128) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
`status` varchar(128) DEFAULT NULL,
`position` int(11) NOT NULL DEFAULT '0',
PRIMARY KEY (`id`,`language`)
) ENGINE = InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT = 'Geografic - Geoarea';


CREATE TABLE `dynamic_geoprovince` (
`id` int(11) NOT NULL COMMENT 'Título province',
`language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
`dynamic_georegion` int(11) NOT NULL DEFAULT '0' COMMENT 'Región',
`text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
`status` varchar(128) DEFAULT NULL,
`position` int(11) NOT NULL DEFAULT '0',
PRIMARY KEY (`id`,`language`)
) ENGINE = InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT = 'Geografic - Geoprovince';


CREATE TABLE `dynamic_georesort` (
`id` int(11) NOT NULL COMMENT 'Título resort',
`language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
`dynamic_geolocality` int(11) NOT NULL DEFAULT '0' COMMENT 'Localidad',
`text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
`status` varchar(128) DEFAULT NULL,
`position` int(11) NOT NULL DEFAULT '0',
PRIMARY KEY (`id`,`language`)
) ENGINE = InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT = 'Geografic - Geolocality';


# añadimos nuevos campos
alter table avantio_accomodations add column number_camas_queen int(11) UNSIGNED;
alter table avantio_accomodations add column number_camas_king int(11) UNSIGNED;
alter table avantio_accomodations add column text_metros_cuadrados_utiles_unidades varchar(20);
alter table avantio_accomodations add column text_metros_cuadrados_unidades varchar(20);
alter table avantio_accomodations add column checkbox_freidora tinyint(4) UNSIGNED;
alter table avantio_accomodations add column number_televisions int(11) UNSIGNED;

alter table avantio_accomodations add column checkbox_tv_satelite tinyint(4) UNSIGNED;
alter table avantio_accomodations add column number_televisions_satelite int(11) UNSIGNED;
alter table avantio_accomodations add column checkbox_tv_satelite_english tinyint(4) UNSIGNED;
alter table avantio_accomodations add column checkbox_tv_satelite_spanish tinyint(4) UNSIGNED;
alter table avantio_accomodations add column checkbox_tv_satelite_french tinyint(4) UNSIGNED;
alter table avantio_accomodations add column checkbox_tv_satelite_german tinyint(4) UNSIGNED;
alter table avantio_accomodations add column checkbox_tv_satelite_dutch tinyint(4) UNSIGNED;
alter table avantio_accomodations add column checkbox_tv_satelite_russia tinyint(4) UNSIGNED;
alter table avantio_accomodations add column checkbox_tv_satelite_norwegian tinyint(4) UNSIGNED;
alter table avantio_accomodations add column checkbox_tv_satelite_swedish tinyint(4) UNSIGNED;
alter table avantio_accomodations add column number_apartados_electricos_anti_mosquitos int(11) UNSIGNED;


CREATE TABLE `avantio_booking` (
`booking_code` int(11) NOT NULL COMMENT 'id booking',
`start_date` DATE NOT NULL COMMENT 'start date',
`end_date` DATE NOT NULL COMMENT 'end date',
`booking_date` TIMESTAMP NOT NULL COMMENT 'booking date',
`check_in_schedule` TIMESTAMP DEFAULT '00:00:00',
`check_out_schedule` TIMESTAMP DEFAULT '00:00:00',
`creation_datetime` TIMESTAMP DEFAULT '00:00:00',
`last_modify_datetime` TIMESTAMP DEFAULT '00:00:00',
PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking';


CREATE TABLE `avantio_booking_tmp` (
`booking_code` int(11) NOT NULL COMMENT 'id booking',
`start_date` DATE NOT NULL COMMENT 'start date',
`end_date` DATE NOT NULL COMMENT 'end date',
`booking_date` TIMESTAMP NOT NULL COMMENT 'booking date',
`check_in_schedule` TIMESTAMP DEFAULT '00:00:00',
`check_out_schedule` TIMESTAMP DEFAULT '00:00:00',
`creation_datetime` TIMESTAMP DEFAULT '00:00:00',
`last_modify_datetime` TIMESTAMP DEFAULT '00:00:00',
PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking tmp';


CREATE TABLE `avantio_booking_accommodation` (
  `booking_code` int(11) NOT NULL COMMENT 'id bookig',
  `avantio_accomodations` int(11) NOT NULL COMMENT 'identificador',
  `text_userid` varchar(75) DEFAULT '' COMMENT 'Id usuario',
  PRIMARY KEY (`booking_code`,`avantio_accomodations`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking localizer';



CREATE TABLE `avantio_booking_accommodation_tmp` (
  `booking_code` int(11) NOT NULL COMMENT 'id bookig',
  `avantio_accomodations` int(11) NOT NULL COMMENT 'identificador',
  `text_userid` varchar(75) DEFAULT '' COMMENT 'Id usuario',
  PRIMARY KEY (`booking_code`,`avantio_accomodations`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking localizer';


CREATE TABLE `avantio_booking_localizer` (
`booking_code` int(11) NOT NULL COMMENT 'id bookig',
`id_avantio_booking_localizer` varchar(255) NOT NULL COMMENT 'id localizer',
`agent_localizator` varchar(255) NOT NULL COMMENT 'agent localizer',
PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking localizer';


CREATE TABLE `avantio_booking_localizer_tmp` (
`booking_code` int(11) NOT NULL COMMENT 'id bookig',
`id_avantio_booking_localizer` varchar(255) NOT NULL COMMENT 'id localizer',
`agent_localizator` varchar(255) NOT NULL COMMENT 'agent localizer',
PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking localizer';


CREATE TABLE `avantio_booking_details` (
`booking_code` int(11) NOT NULL COMMENT 'id booking',
`id_language` tinyint(3) NOT NULL COMMENT 'id language',
`web` varchar(128) NOT NULL COMMENT 'web',
`id_booking_type` tinyint(3) NOT NULL COMMENT 'id booking type',
PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Details';


CREATE TABLE `avantio_booking_details_tmp` (
`booking_code` int(11) NOT NULL COMMENT 'id booking',
`id_language` tinyint(3) NOT NULL COMMENT 'id language',
`web` varchar(128) NOT NULL COMMENT 'web',
`id_booking_type` tinyint(3) NOT NULL COMMENT 'id booking type',
PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Details';



CREATE TABLE `avantio_booking_amount`
(
    `booking_code` int(11) NOT NULL COMMENT 'id booking',
    `total_price` FLOAT NOT NULL COMMENT 'precio',
    `rental_price` FLOAT NOT NULL COMMENT 'precio restante',
    `currency` varchar(128) NOT NULL COMMENT 'moneda',
    `comission` FLOAT NOT NULL COMMENT 'precio restante',
    `applied_owner_comission` FLOAT NOT NULL COMMENT 'precio restante',
     PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Amount';


CREATE TABLE `avantio_booking_amount_tmp`
(
    `booking_code` int(11) NOT NULL COMMENT 'id booking',
    `total_price` FLOAT NOT NULL COMMENT 'precio',
    `rental_price` FLOAT NOT NULL COMMENT 'precio restante',
    `currency` varchar(128) NOT NULL COMMENT 'moneda',
    `comission` FLOAT NOT NULL COMMENT 'precio restante',
    `applied_owner_comission` FLOAT NOT NULL COMMENT 'precio restante',
    PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Amount';


CREATE TABLE `avantio_booking_amount_services`
(
    `id` int(11) NOT NULL COMMENT 'id booking',
    `booking_code` int(11) NOT NULL COMMENT 'id booking',
    `code` int(11) NOT NULL COMMENT 'service code',
    `amount` int(11) NOT NULL COMMENT 'service amount',
    `price` FLOAT NOT NULL COMMENT 'precio',
    `applied_tax_percentage` int(11) NOT NULL COMMENT 'service tax percentage',
    `category` varchar(255) NOT NULL COMMENT 'categoria',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Amount Services';


CREATE TABLE `avantio_booking_amount_services_temp`
(
    `id` int(11) NOT NULL COMMENT 'id booking',
    `booking_code` int(11) NOT NULL COMMENT 'id booking',
    `code` int(11) NOT NULL COMMENT 'service code',
    `amount` int(11) NOT NULL COMMENT 'service amount',
    `price` FLOAT NOT NULL COMMENT 'precio',
    `applied_tax_percentage` int(11) NOT NULL COMMENT 'service tax percentage',
    `category` varchar(255) NOT NULL COMMENT 'categoria',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Amount Services';


CREATE TABLE `avantio_booking_payment`
(
    `id` int(11) NOT NULL COMMENT 'id payment',
    `payment_id` int(11) NOT NULL COMMENT 'id payment',
    `booking_code` int(11) NOT NULL COMMENT 'id booking',
    `payment_date` date NOT NULL COMMENT 'payment date',
    `amount` int(11) NOT NULL COMMENT 'payment amount',
    `payment_method` varchar(255) NOT NULL COMMENT 'metodo de pago',
    `payment_status` varchar(255) NOT NULL COMMENT 'status de pago',
    `security_deposit` char(5) NOT NULL COMMENT 'seguro deposito',
    PRIMARY KEY (`id`,`payment_id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Payment';


CREATE TABLE `avantio_booking_payment_temp`
(
    `id` int(11) NOT NULL COMMENT 'id payment',
    `payment_id` int(11) NOT NULL COMMENT 'id payment',
    `booking_code` int(11) NOT NULL COMMENT 'id booking',
    `payment_date` date NOT NULL COMMENT 'payment date',
    `amount` int(11) NOT NULL COMMENT 'payment amount',
    `payment_method` varchar(255) NOT NULL COMMENT 'metodo de pago',
    `payment_status` varchar(255) NOT NULL COMMENT 'status de pago',
    `security_deposit` char(5) NOT NULL COMMENT 'seguro deposito',
    PRIMARY KEY (`id`,`payment_id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Payment';



CREATE TABLE `avantio_booking_occupants` (
`booking_code` int(11) NOT NULL COMMENT 'id booking',
`adults_number` int(11) NOT NULL COMMENT 'number adults',
`child1_age` int(11) NOT NULL COMMENT 'age child 1',
`child2_age` int(11) NOT NULL COMMENT 'age child 2',
`child3_age` int(11) NOT NULL COMMENT 'age child 3',
`child4_age` int(11) NOT NULL COMMENT 'age child 4',
`child5_age` int(11) NOT NULL COMMENT 'age child 5',
`child6_age` int(11) NOT NULL COMMENT 'age child 6',
PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Occupants';



/* tablas descriptivas */

CREATE TABLE `avantio_booking_type` (
 `id_booking_type` tinyint(3) NOT NULL COMMENT 'id booking type',
 `booking_type` varchar(128) NOT NULL COMMENT 'type booking',
 PRIMARY KEY (`id_booking_type`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Type';

INSERT INTO `avantio_booking_type` (`id_booking_type` , `booking_type`)
VALUES
(1 , "BAJOPETICION" ),
(2, "CANCELLED"),
(3, "CANCELLED_PROPIETARIO"),
(4, "CONFIRMADA"),
(5, "FACTURADA"),
(6, "GARANTIA"),
(7, "PAID"),
(8, "PETICION_DISPONIBILIDAD"),
(9, "PETICION_INFORMACION"),
(10, "PETICION_TPV"),
(11, "PROPIETARIO"),
(12, "PETICION_DISPONIBILIDAD"),
(13, "PETICION_INFORMACION"),
(14, "PETICION_TPV"),
(15, "PROPIETARIO"),
(16, "UNAVAILABLE"),
(17, "UNPAID"),
(18, "CONFLICTED");


CREATE TABLE `avantio_board` (
     `id_board` tinyint(3) NOT NULL COMMENT 'id baord',
     `type` varchar(128) NOT NULL COMMENT 'type board',
     PRIMARY KEY (`id_board`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Board';


INSERT INTO `avantio_board` (`id_board` , `type`)
VALUES
    (1 , "ROOM_ONLY" ),
    (2, "HALF_BOARD"),
    (3, "FULL_BOARD"),
    (4, "BED_AND_BREAKFAST"),
    (5, "ALL_INCLUDED");


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
`phone` int(11) NOT NULL COMMENT COMMENT 'teléfono',
`phone2` int(11) NOT NULL COMMENT COMMENT 'teléfono 2',
`email` varchar(255) NOT NULL COMMENT 'email',
PRIMARY KEY (`id_avantio_client`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Avantio client';


CREATE TABLE `avantio_ical` (
   `avantio_accomodations` int(11) NOT NULL COMMENT 'identificador acommodation',
   `id_ical` int(11) NOT NULL COMMENT 'identificador ical',
    PRIMARY KEY (`avantio_accomodations`,`id_ical`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Avantio ical';


CREATE TABLE `avantio_ical_events` (
    `id_event` int(11) NOT NULL auto_increment COMMENT 'identificador evento',
    `id_ical` int(11) NOT NULL COMMENT 'identificador ical',
    `date_start` DATE NOT NULL COMMENT 'start date',
    `date_end` DATE NOT NULL COMMENT 'end date',
    `summary` varchar(128) NOT NULL COMMENT 'summary',
    PRIMARY KEY (`id_event`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Avantio ical events';



CREATE TABLE `hshv_avantio_booking` (
    `booking_code` int(11) NOT NULL COMMENT 'id booking',
    `start_date` DATE NOT NULL COMMENT 'start date',
    `end_date` DATE NOT NULL COMMENT 'end date',
    `booking_date` TIMESTAMP NOT NULL COMMENT 'booking date',
    `check_in_schedule` TIMESTAMP DEFAULT '00:00:00',
    `check_out_schedule` TIMESTAMP DEFAULT '00:00:00',
    `creation_datetime` TIMESTAMP DEFAULT '00:00:00',
    `last_modify_datetime` TIMESTAMP DEFAULT '00:00:00',
    PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking';


CREATE TABLE `hshv_avantio_booking_accommodation` (
    `booking_code` int(11) NOT NULL COMMENT 'id bookig',
    `avantio_accomodations` int(11) NOT NULL COMMENT 'identificador',
    `text_userid` varchar(75) DEFAULT '' COMMENT 'Id usuario',
    PRIMARY KEY (`booking_code`,`avantio_accomodations`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking localizer';


CREATE TABLE `hshv_avantio_booking_localizer` (
   `booking_code` int(11) NOT NULL COMMENT 'id bookig',
   `id_avantio_booking_localizer` varchar(255) NOT NULL COMMENT 'id localizer',
   `agent_localizator` varchar(255) NOT NULL COMMENT 'agent localizer',
   PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking localizer';


CREATE TABLE `hshv_avantio_booking_details` (
   `booking_code` int(11) NOT NULL COMMENT 'id booking',
   `id_language` tinyint(3) NOT NULL COMMENT 'id language',
   `web` varchar(128) NOT NULL COMMENT 'web',
   `id_booking_type` tinyint(3) NOT NULL COMMENT 'id booking type',
   PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Details';


CREATE TABLE `hshv_avantio_booking_amount`
(
    `booking_code` int(11) NOT NULL COMMENT 'id booking',
    `total_price` FLOAT NOT NULL COMMENT 'precio',
    `rental_price` FLOAT NOT NULL COMMENT 'precio restante',
    `currency` varchar(128) NOT NULL COMMENT 'moneda',
    `comission` FLOAT NOT NULL COMMENT 'precio restante',
    `applied_owner_comission` FLOAT NOT NULL COMMENT 'precio restante',
    PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Amount';


CREATE TABLE `hshv_avantio_booking_amount_services`
(
    `id` int(11) NOT NULL COMMENT 'id booking',
    `booking_code` int(11) NOT NULL COMMENT 'id booking',
    `code` int(11) NOT NULL COMMENT 'service code',
    `amount` int(11) NOT NULL COMMENT 'service amount',
    `price` FLOAT NOT NULL COMMENT 'precio',
    `applied_tax_percentage` int(11) NOT NULL COMMENT 'service tax percentage',
    `category` varchar(255) NOT NULL COMMENT 'categoria',
    PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Amount Services';



CREATE TABLE `hshv_avantio_booking_payment`
(
    `id` int(11) NOT NULL COMMENT 'id payment',
    `payment_id` int(11) NOT NULL COMMENT 'id payment',
    `booking_code` int(11) NOT NULL COMMENT 'id booking',
    `payment_date` date NOT NULL COMMENT 'payment date',
    `amount` int(11) NOT NULL COMMENT 'payment amount',
    `payment_method` varchar(255) NOT NULL COMMENT 'metodo de pago',
    `payment_status` varchar(255) NOT NULL COMMENT 'status de pago',
    `security_deposit` char(5) NOT NULL COMMENT 'seguro deposito',
    PRIMARY KEY (`id`,`payment_id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Payment';



CREATE TABLE `hshv_avantio_booking_occupants` (
   `booking_code` int(11) NOT NULL COMMENT 'id booking',
   `adults_number` int(11) NOT NULL COMMENT 'number adults',
   `child1_age` int(11) NOT NULL COMMENT 'age child 1',
   `child2_age` int(11) NOT NULL COMMENT 'age child 2',
   `child3_age` int(11) NOT NULL COMMENT 'age child 3',
   `child4_age` int(11) NOT NULL COMMENT 'age child 4',
   `child5_age` int(11) NOT NULL COMMENT 'age child 5',
   `child6_age` int(11) NOT NULL COMMENT 'age child 6',
   PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Occupants';



/* tablas descriptivas */

CREATE TABLE `hshv_avantio_booking_type` (
    `id_booking_type` tinyint(3) NOT NULL COMMENT 'id booking type',
    `booking_type` varchar(128) NOT NULL COMMENT 'type booking',
    PRIMARY KEY (`id_booking_type`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Type';


INSERT INTO `hshv_avantio_booking_type` (`id_booking_type` , `booking_type`)
VALUES
    (1 , "BAJOPETICION" ),
    (2, "CANCELLED"),
    (3, "CANCELLED_PROPIETARIO"),
    (4, "CONFIRMADA"),
    (5, "FACTURADA"),
    (6, "GARANTIA"),
    (7, "PAID"),
    (8, "PETICION_DISPONIBILIDAD"),
    (9, "PETICION_INFORMACION"),
    (10, "PETICION_TPV"),
    (11, "PROPIETARIO"),
    (12, "PETICION_DISPONIBILIDAD"),
    (13, "PETICION_INFORMACION"),
    (14, "PETICION_TPV"),
    (15, "PROPIETARIO"),
    (16, "UNAVAILABLE"),
    (17, "UNPAID"),
    (18, "CONFLICTED");

CREATE TABLE `hshv_avantio_board` (
                                 `id_board` tinyint(3) NOT NULL COMMENT 'id baord',
                                 `type` varchar(128) NOT NULL COMMENT 'type board',
                                 PRIMARY KEY (`id_board`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Board';


INSERT INTO `hshv_avantio_board` (`id_board` , `type`)
VALUES
    (1 , "ROOM_ONLY" ),
    (2, "HALF_BOARD"),
    (3, "FULL_BOARD"),
    (4, "BED_AND_BREAKFAST"),
    (5, "ALL_INCLUDED");


CREATE TABLE `hshv_avantio_client` (
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
    `phone` int(11) NOT NULL COMMENT COMMENT 'teléfono',
    `phone2` int(11) NOT NULL COMMENT COMMENT 'teléfono 2',
    `email` varchar(255) NOT NULL COMMENT 'email',
    PRIMARY KEY (`id_avantio_client`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Avantio client';


CREATE TABLE `hshv_avantio_ical` (
    `avantio_accomodations` int(11) NOT NULL COMMENT 'identificador acommodation',
    `id_ical` int(11) NOT NULL COMMENT 'identificador ical',
    PRIMARY KEY (`avantio_accomodations`,`id_ical`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Avantio ical';


CREATE TABLE `hshv_avantio_ical_events` (
     `id_event` int(11) NOT NULL auto_increment COMMENT 'identificador evento',
     `id_ical` int(11) NOT NULL COMMENT 'identificador ical',
     `date_start` DATE NOT NULL COMMENT 'start date',
     `date_end` DATE NOT NULL COMMENT 'end date',
     `summary` varchar(128) NOT NULL COMMENT 'summary',
     PRIMARY KEY (`id_event`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Avantio ical events';


INSERT INTO avantio_ical (
    avantio_accomodations,
    id_ical
)
SELECT
    id,
    id as id_dos
FROM
    avantio_accomodations
WHERE
        language = 'es';


INSERT INTO avantio_ical_events (id_event,id_ical,date_start,date_end,summary)
VALUES
(1, 296754, 2022-01-23, 2022-03-26, UNAVAILABLE);




/*
SHOW TABLE STATUS 
where 
name like 'dynamic_%' 
or 
name like 'avantio_%';
*/

# SHOW TABLE STATUS LIKE 'dynamic_%';
# SHOW TABLE STATUS LIKE ('avantio_accomodations' OR 'avantio_accomodations_descriptions');

/*
1, franquiciado, $2y$10$xCwCRpI4ybOI/usAUvRT8esS5cAZrgpOApAkz9ylnU2sxTolQPypW, davidberruezo@davidberruezo.com, franquicia, 1, ACTIVED, 0000-00-00 00:00:00, 0000-00-00 00:00:00, 


users
id int(10) UN AI PK 
username varchar(255) 
password varchar(255) 
email varchar(255) 
grupo varchar(255) 
roleId int(11) 
status varchar(255) 
created_at datetime 
updated_at datetime 
deleted_at datetime

alter table dynamic_plano add column created_at datetime COMMENT "created at";
alter table dynamic_plano add column updated_at datetime COMMENT "updated at";
alter table dynamic_plano add column deleted_at datetime COMMENT "deleted at";
alter table users add column deleted_at datetime COMMENT "deleted at";


SET SQL_SAFE_UPDATES = 0;
# update users set email = "davidberruezo@davidberruezo.com" where id = 1;
# update users set password = "50afde7cda4d4e7544644832ee556465" where id = 1;



# CRAEATION TABLES

# caracteristicas tag y colecciones
CREATE TABLE dynamic_document LIKE pisosenm_inmobiliaria_tres.dynamic_document;
CREATE TABLE dynamic_plano LIKE pisosenm_inmobiliaria_tres.dynamic_plano;

CREATE TABLE dynamic_rooms LIKE pisosenm_inmobiliaria_tres.dynamic_rooms;

# caracteristicas tag y colecciones
CREATE TABLE dynamic_taxonomy_geographic_language_extra LIKE pisosenm_inmobiliaria_tres.dynamic_taxonomy_geographic_language_extra;
CREATE TABLE dynamic_taxonomy_geographic_language_carac LIKE pisosenm_inmobiliaria_tres.dynamic_taxonomy_geographic_language_carac;

# users
CREATE TABLE users LIKE pisosenm_inmobiliaria_tres.users; 
alter table users add column created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

# languages
# CREATE TABLE languages LIKE pisosenm_inmobiliaria_tres.languages;


# avantio properties
CREATE TABLE avantio_accomodations LIKE pisosenm_inmobiliaria_tres.avantio_accomodations;
CREATE TABLE avantio_accomodations_descriptions LIKE pisosenm_inmobiliaria_tres.avantio_accomodations_descriptions;
CREATE TABLE avantio_accomodations_descriptions_tmp LIKE pisosenm_inmobiliaria_tres.avantio_accomodations_descriptions_tmp;
CREATE TABLE avantio_accomodations_extras LIKE pisosenm_inmobiliaria_tres.avantio_accomodations_extras;
CREATE TABLE avantio_accomodations_extras_tmp LIKE pisosenm_inmobiliaria_tres.avantio_accomodations_extras_tmp;
CREATE TABLE avantio_accomodations_fields LIKE pisosenm_inmobiliaria_tres.avantio_accomodations_fields;
CREATE TABLE avantio_accomodations_fields_bullets LIKE pisosenm_inmobiliaria_tres.avantio_accomodations_fields_bullets;
CREATE TABLE avantio_accomodations_locations LIKE pisosenm_inmobiliaria_tres.avantio_accomodations_locations;
CREATE TABLE avantio_accomodations_locations_tmp LIKE pisosenm_inmobiliaria_tres.avantio_accomodations_locations_tmp;
CREATE TABLE avantio_accomodations_nearest_places LIKE pisosenm_inmobiliaria_tres.avantio_accomodations_nearest_places;
CREATE TABLE avantio_accomodations_nearest_places_tmp LIKE pisosenm_inmobiliaria_tres.avantio_accomodations_nearest_places_tmp;
CREATE TABLE avantio_accomodations_pictures LIKE pisosenm_inmobiliaria_tres.avantio_accomodations_pictures;
CREATE TABLE avantio_accomodations_pictures_tmp LIKE pisosenm_inmobiliaria_tres.avantio_accomodations_pictures_tmp;
CREATE TABLE avantio_accomodations_tmp LIKE pisosenm_inmobiliaria_tres.avantio_accomodations_tmp;
CREATE TABLE avantio_availabilities LIKE pisosenm_inmobiliaria_tres.avantio_availabilities;
CREATE TABLE avantio_availabilities_tmp LIKE pisosenm_inmobiliaria_tres.avantio_availabilities_tmp;
CREATE TABLE avantio_inmovilla LIKE pisosenm_inmobiliaria_tres.avantio_inmovilla;
CREATE TABLE avantio_occupation_rules LIKE pisosenm_inmobiliaria_tres.avantio_occupation_rules;
CREATE TABLE avantio_occupation_rules_names LIKE pisosenm_inmobiliaria_tres.avantio_occupation_rules_names;
CREATE TABLE avantio_occupation_rules_tmp LIKE pisosenm_inmobiliaria_tres.avantio_occupation_rules_tmp;
CREATE TABLE avantio_pricemodifiers LIKE pisosenm_inmobiliaria_tres.avantio_pricemodifiers;
CREATE TABLE avantio_pricemodifiers_tmp LIKE pisosenm_inmobiliaria_tres.avantio_pricemodifiers_tmp;
CREATE TABLE avantio_pricemodifiers_tmp_vlad LIKE pisosenm_inmobiliaria_tres.avantio_pricemodifiers_tmp_vlad;
CREATE TABLE avantio_rates LIKE pisosenm_inmobiliaria_tres.avantio_rates;
CREATE TABLE avantio_rates_acommodation LIKE pisosenm_inmobiliaria_tres.avantio_rates_acommodation;
CREATE TABLE avantio_rates_names LIKE pisosenm_inmobiliaria_tres.avantio_rates_names;
CREATE TABLE avantio_rates_tmp LIKE pisosenm_inmobiliaria_tres.avantio_rates_tmp;
CREATE TABLE avantio_report LIKE pisosenm_inmobiliaria_tres.avantio_report;
CREATE TABLE avantio_report_historico LIKE pisosenm_inmobiliaria_tres.avantio_report_historico;

# avantio properties
CREATE TABLE portvil_avantio_accomodations LIKE pisosenm_inmobiliaria_tres.hshv_avantio_accomodations;
CREATE TABLE portvil_avantio_accomodations_descriptions LIKE pisosenm_inmobiliaria_tres.hshv_avantio_accomodations_descriptions;
#CREATE TABLE portvil_avantio_accomodations_descriptions_tmp LIKE pisosenm_inmobiliaria_tres.hshv_avantio_accomodations_descriptions_tmp;

CREATE TABLE portvil_avantio_accomodations_extras LIKE pisosenm_inmobiliaria_tres.hshv_avantio_accomodations_extras;
#CREATE TABLE portvil_avantio_accomodations_extras_tmp LIKE pisosenm_inmobiliaria_tres.hshv_avantio_accomodations_extras_tmp;
CREATE TABLE portvil_avantio_accomodations_fields LIKE pisosenm_inmobiliaria_tres.hshv_avantio_accomodations_fields;
CREATE TABLE portvil_avantio_accomodations_fields_bullets LIKE pisosenm_inmobiliaria_tres.hshv_avantio_accomodations_fields_bullets;
CREATE TABLE portvil_avantio_accomodations_locations LIKE pisosenm_inmobiliaria_tres.hshv_avantio_accomodations_locations;
#CREATE TABLE portvil_avantio_accomodations_locations_tmp LIKE pisosenm_inmobiliaria_tres.hshv_avantio_accomodations_locations_tmp;
CREATE TABLE portvil_avantio_accomodations_nearest_places LIKE pisosenm_inmobiliaria_tres.hshv_avantio_accomodations_nearest_places;
#CREATE TABLE portvil_avantio_accomodations_nearest_places_tmp LIKE pisosenm_inmobiliaria_tres.hshv_avantio_accomodations_nearest_places_tmp;
CREATE TABLE portvil_avantio_accomodations_pictures LIKE pisosenm_inmobiliaria_tres.hshv_avantio_accomodations_pictures;
#CREATE TABLE portvil_avantio_accomodations_pictures_tmp LIKE pisosenm_inmobiliaria_tres.hshv_avantio_accomodations_pictures_tmp;
#CREATE TABLE portvil_avantio_accomodations_tmp LIKE pisosenm_inmobiliaria_tres.hshv_avantio_accomodations_tmp;
CREATE TABLE portvil_avantio_availabilities LIKE pisosenm_inmobiliaria_tres.hshv_avantio_availabilities;
#CREATE TABLE portvil_avantio_availabilities_tmp LIKE pisosenm_inmobiliaria_tres.hshv_avantio_availabilities_tmp;
#CREATE TABLE portvil_avantio_inmovilla LIKE pisosenm_inmobiliaria_tres.hshv_avantio_inmovilla;
CREATE TABLE portvil_avantio_occupation_rules LIKE pisosenm_inmobiliaria_tres.hshv_avantio_occupation_rules;
CREATE TABLE portvil_avantio_occupation_rules_names LIKE pisosenm_inmobiliaria_tres.hshv_avantio_occupation_rules_names;
#CREATE TABLE portvil_avantio_occupation_rules_tmp LIKE pisosenm_inmobiliaria_tres.hshv_avantio_occupation_rules_tmp;
CREATE TABLE portvil_avantio_pricemodifiers LIKE pisosenm_inmobiliaria_tres.hshv_avantio_pricemodifiers;
#CREATE TABLE portvil_avantio_pricemodifiers_tmp LIKE pisosenm_inmobiliaria_tres.hshv_avantio_pricemodifiers_tmp;
#CREATE TABLE portvil_avantio_pricemodifiers_tmp_vlad LIKE pisosenm_inmobiliaria_tres.hshv_avantio_pricemodifiers_tmp_vlad;
CREATE TABLE portvil_avantio_rates LIKE pisosenm_inmobiliaria_tres.hshv_avantio_rates;
CREATE TABLE portvil_avantio_rates_acommodation LIKE pisosenm_inmobiliaria_tres.hshv_avantio_rates_acommodation;
CREATE TABLE portvil_avantio_rates_names LIKE pisosenm_inmobiliaria_tres.hshv_avantio_rates_names;
#CREATE TABLE portvil_avantio_rates_tmp LIKE pisosenm_inmobiliaria_tres.hshv_avantio_rates_tmp;
#CREATE TABLE portvil_avantio_report LIKE pisosenm_inmobiliaria_tres.hshv_avantio_report;
#CREATE TABLE portvil_avantio_report_historico LIKE pisosenm_inmobiliaria_tres.hshv_avantio_report_historico;
CREATE TABLE ecb_exchange LIKE pisosenm_inmobiliaria_tres.ecb_exchange;
CREATE TABLE portvil_ecb_exchange LIKE pisosenm_inmobiliaria_tres.hshv_ecb_exchange;
*/








