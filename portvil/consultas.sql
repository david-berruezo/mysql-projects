USE homeswe1_web_dos;

ALTER TABLE mrbs_repeat ADD COLUMN checkin DATE;
ALTER TABLE mrbs_repeat ADD COLUMN checkout DATE;

/*
use pisosenm_inmobiliaria_siete_pruebas_dos;


UPDATE user SET roles = '[{"role":"ROLE_USER"}]' WHERE id = 1;
SELECT * FROM USER;


UPDATE USER SET PASSWORD = '64e045fd72c5bf65f596f7e2b04f0944' WHERE id = 1;
# DELETE USER FROM USER WHERE id > 1;
SELECT * FROM post;
SELECT * FROM user;


use phpandfr_portvil_dos;


SELECT * FROM avantio_accommodations_historico_data WHERE DATE = "2022-12-29";


SELECT * FROM avantio_rates; 

SELECT * 
FROM avantio_occupation_rules
LIMIT 100;

SELECT * FROM avantio_accommodations_historico_data
WHERE DATE = "2022-12-18";

SELECT * FROM avantio_accommodations_historico_data
WHERE DATE = "2022-12-18"; 


CREATE TABLE `avantio_accommodations_historico_data` (
`id` int(11) NOT NULL COMMENT 'identificador',
`date` DATE NOT NULL COMMENT 'start date',
`avantio_accommodations` JSON NOT NULL,
PRIMARY KEY (`id` , `date` , `avantio_accommodations`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Avantio Accommodations';

# consultas
# CREATE DATABASE portvil CHARACTER SET utf8 collate utf8_general_ci;
# drop database phpandfr_porvil;
# CREATE DATABASE phpandfr_portvil CHARACTER SET utf8 collate utf8_general_ci;

use phpandfr_portvil;

# disponibilidades , #no_disponibilidades , #checkin , checkout , min_ninghts

select * from avantio_accomodations;

# seleccionamos por alegre
SELECT id, avantio_occupation_rules FROM avantio_accomodations WHERE id = 297527;

# libres
SELECT fecha, status FROM avantio_availabilities
WHERE accommodation_id = 297527
AND occupation_rule_id = 1255873
AND fecha BETWEEN "2021-01-01" AND "2023-01-01"
and status = 1
ORDER BY fecha ASC ;

# ocupadas
SELECT fecha, status FROM avantio_availabilities
WHERE accommodation_id = 297527
AND occupation_rule_id = 1255873
AND fecha BETWEEN "2021-01-01" AND "2023-01-01"
and status = 0
ORDER BY fecha ASC ;

# datos
SELECT fecha, checkin, checkout , min_nights
FROM avantio_occupation_rules
WHERE id = 1282168
AND fecha BETWEEN "2021-01-01" AND "2023-01-01"
ORDER BY fecha ASC ;



CREATE TABLE `avantio_booking` (
`booking_code` int(11) NOT NULL COMMENT 'id bookig',
`avantio_accomodations` int(11) NOT NULL COMMENT 'identificador',
`id_booking_data` int(11) NOT NULL COMMENT 'identificador booking data',
`start_date` DATE NOT NULL COMMENT 'start date',
`end_date` DATE NOT NULL COMMENT 'end date',
`booking_date` TIMESTAMP NOT NULL COMMENT 'booking date',
`check_in_schedule` TIMESTAMP DEFAULT '00:00:00',
`check_out_schedule` TIMESTAMP DEFAULT '00:00:00',
PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking';


CREATE TABLE `avantio_booking_localizer` (
`booking_code` int(11) NOT NULL COMMENT 'id bookig',
`id_avantio_booking_localizer` varchar(255) NOT NULL COMMENT 'id localizer',
PRIMARY KEY (`booking_code`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking localizer';


CREATE TABLE `avantio_booking_data` (
`id_booking_data` int(11) NOT NULL COMMENT 'identificador',
`price` FLOAT NOT NULL COMMENT 'precio',
`deposit` FLOAT NOT NULL COMMENT 'deposito',
`currency` varchar(128) NOT NULL COMMENT 'moneda',
`board` varchar(128) NOT NULL COMMENT 'board',
`avantio_accomodations` int(11) NOT NULL COMMENT 'identificador acommodation',
`user_code` int(11) NOT NULL COMMENT 'codigo usuario',
`adults_number` int(11) NOT NULL COMMENT 'numero adultos',
`payment_method` int(11) NOT NULL COMMENT 'metodo pago',
`booking_type` int(11) NOT NULL COMMENT 'booking type',
PRIMARY KEY (`id_booking_data`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Data';


CREATE TABLE `avantio_booking_board` (

    PRIMARY KEY (`id_booking_data`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Data';


CREATE TABLE `avantio_booking_type` (
`id_booking_type` int(11) NOT NULL COMMENT 'identificador',
`booking_type` varchar(255) NOT NULL COMMENT 'booking type',
PRIMARY KEY (`id_booking_type`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking Type';


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



SHOW TABLE STATUS 
where 
name like 'dynamic_%' 
or 
name like 'avantio_%';


# SHOW TABLE STATUS LIKE 'dynamic_%';
# SHOW TABLE STATUS LIKE ('avantio_accomodations' OR 'avantio_accomodations_descriptions');


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








