use pisosenm_inmobiliaria_dos;

SELECT COUNT(*) AS total
FROM (
    select id AS id from avantio_accomodations
    WHERE dynamic_georegion = '2'
    AND LANGUAGE = 'es'
    AND status = 'ACTIVED'
    UNION select id AS id from hshv_avantio_accomodations
    WHERE dynamic_georegion = '2'
    AND LANGUAGE = 'es'
    AND status = 'ACTIVED'
    ORDER by id asc
) AS x;


/*

alter table dynamic_prereserva add column fecha_entrada date comment "fecha entrada";
alter table dynamic_prereserva add column fecha_salida date comment "fecha salida";


drop table `avantio_accomodations_fields_bullets`;
drop table `avantio_accomodations_fields`;
drop table `hshv_avantio_accomodations_fields_bullets`;
drop table `hshv_avantio_accomodations_fields`;


CREATE TABLE `avantio_accomodations_fields_bullets` (
  `avantio_accomodations` int(11) NOT NULL COMMENT 'Identificador avantio',
  `language` varchar(3) NOT NULL COMMENT 'lenguage',
  `textarea_bullet` text NOT NULL COMMENT 'bullet',
  PRIMARY KEY (`avantio_accomodations`,`language`)
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT='Bullets';


CREATE TABLE `avantio_accomodations_fields` (
  `avantio_accomodations` int(11) NOT NULL COMMENT 'Identificador avantio',
  `textarea_informacion_adicional` text NOT NULL COMMENT 'bullet',
  `textarea_notas_internas` text NOT NULL COMMENT 'bullet',
  PRIMARY KEY (`avantio_accomodations`)
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT='Acommodations tags';



CREATE TABLE `hshv_avantio_accomodations_fields_bullets` (
  `avantio_accomodations` int(11) NOT NULL COMMENT 'Identificador acommdation',
  `language` varchar(3) NOT NULL COMMENT 'lenguage',
  `textarea_bullet` text NOT NULL COMMENT 'bullet',
  PRIMARY KEY (`avantio_accomodations`,`language`)
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT='Bullets';


CREATE TABLE `hshv_avantio_accomodations_fields` (
  `avantio_accomodations` int(11) NOT NULL COMMENT 'Identificador avantio',
  `textarea_informacion_adicional` text NOT NULL COMMENT 'bullet',
  `textarea_notas_internas` text NOT NULL COMMENT 'bullet',
  PRIMARY KEY (`avantio_accomodations`)
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT='Acommodations tags';

*/


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
                                           `price` FLOAT NOT NULL COMMENT 'precio',
                                           `deposit` FLOAT NOT NULL COMMENT 'deposito',
                                           `currency` varchar(128) NOT NULL COMMENT 'moneda',
                                           `payment_method` int(11) NOT NULL COMMENT 'metodo pago',
                                           `id_booking_type` tinyint(3) NOT NULL COMMENT 'id booking type',
                                           `id_board` tinyint(3) NOT NULL COMMENT 'id board',
                                           PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Details';


CREATE TABLE `avantio_booking_details_tmp` (
                                               `booking_code` int(11) NOT NULL COMMENT 'id booking',
                                               `id_language` tinyint(3) NOT NULL COMMENT 'id language',
                                               `web` varchar(128) NOT NULL COMMENT 'web',
                                               `price` FLOAT NOT NULL COMMENT 'precio',
                                               `deposit` FLOAT NOT NULL COMMENT 'deposito',
                                               `currency` varchar(128) NOT NULL COMMENT 'moneda',
                                               `payment_method` int(11) NOT NULL COMMENT 'metodo pago',
                                               `id_booking_type` tinyint(3) NOT NULL COMMENT 'id booking type',
                                               `id_board` tinyint(3) NOT NULL COMMENT 'id board',
                                               PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Details';


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
                                  `phone` int(11) NOT NULL COMMENT 'teléfono',
                                  `phone2` int(11) NOT NULL COMMENT 'teléfono 2',
                                  `email` varchar(255) NOT NULL COMMENT 'email',
                                  PRIMARY KEY (`id_avantio_client`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Avantio client';


CREATE TABLE `avantio_client_desc`

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
                                                `price` FLOAT NOT NULL COMMENT 'precio',
                                                `deposit` FLOAT NOT NULL COMMENT 'deposito',
                                                `currency` varchar(128) NOT NULL COMMENT 'moneda',
                                                `payment_method` int(11) NOT NULL COMMENT 'metodo pago',
                                                `id_booking_type` tinyint(3) NOT NULL COMMENT 'id booking type',
                                                `id_board` tinyint(3) NOT NULL COMMENT 'id board',
                                                PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Details';


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
                                       `phone` int(11) NOT NULL COMMENT'teléfono',
                                       `phone2` int(11) NOT NULL COMMENT'teléfono 2',
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
