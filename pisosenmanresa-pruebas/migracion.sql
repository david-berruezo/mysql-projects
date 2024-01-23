USE phpandfr_portvil_dos;

# pasos
# 1 consultar titulo de geolocality pisosenm_inmobiliaria
# 2 consultar titulo de geolocality pisosenm_inmobiliaria_siete_pruebas y coger el id
# guardar todos los ids
# symfony crear un vector con todos los ids para query repositor IN (vector geolocalities)


SELECT DISTINCT(ab.booking_code) , ab.booking_code, aa.text_userid , ab.start_date , ab.end_date , ab.booking_date , total_price , aa.text_title, ds.text_slug , 
ds.auto_slug , abo.adults_number , abo.child1_age , abo.child2_age , abo.child3_age , abo.child4_age , abo.child5_age , abo.child6_age , abc.name , 
abc.surname , abd.id_booking_type , abd.web , haba.id_agencia , aba.avantio_accomodations 
FROM avantio_booking as ab 
LEFT JOIN avantio_booking_amount as abam ON abam.booking_code = ab.booking_code 
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code 
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code 
LEFT JOIN avantio_booking_occupants as abo ON abo.booking_code = ab.booking_code 
LEFT JOIN avantio_client as abc ON abc.booking_code = ab.booking_code 
LEFT JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations AND aa.language = 'es' 
JOIN dynamic_rooms as ds ON ds.id = aa.id AND ds.language = 'es' 
LEFT JOIN hshv_avantio_booking_agencia AS haba ON haba.booking_code = ab.booking_code 
WHERE 
(ds.status = 'ACTIVED' OR ds.status = 'PAUSED') 
AND aa.number_banyos_banyera + aa.number_banyos_ducha >= 0 
AND aa.number_habitaciones >= 0
AND ab.start_date >= "2022-03-01" AND ab.start_date <= "2022-03-31" AND id_booking_type = 4;

/*
# reservas todas
SELECT DISTINCT(ab.booking_code) , ab.booking_code, aa.text_userid , ab.start_date , ab.end_date , ab.booking_date , total_price , aa.text_title, ds.text_slug , 
ds.auto_slug , abo.adults_number , abo.child1_age , abo.child2_age , abo.child3_age , abo.child4_age , abo.child5_age , abo.child6_age , abc.name , 
abc.surname , abd.id_booking_type , abd.web , haba.id_agencia , aba.avantio_accomodations 
FROM avantio_booking as ab 
LEFT JOIN avantio_booking_amount as abam ON abam.booking_code = ab.booking_code 
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code 
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code 
LEFT JOIN avantio_booking_occupants as abo ON abo.booking_code = ab.booking_code 
LEFT JOIN avantio_client as abc ON abc.booking_code = ab.booking_code 
LEFT JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations AND aa.language = 'es' 
JOIN dynamic_rooms as ds ON ds.id = aa.id AND ds.language = 'es' 
LEFT JOIN hshv_avantio_booking_agencia AS haba ON haba.booking_code = ab.booking_code 
WHERE (ds.status = 'ACTIVED' OR ds.status = 'PAUSED')
ORDER BY ab.start_date asc; 

# reservas todas
SELECT DISTINCT(ab.booking_code) , ab.booking_code, aa.text_userid , ab.start_date , ab.end_date , ab.booking_date , total_price , aa.text_title, ds.text_slug , 
ds.auto_slug , abo.adults_number , abo.child1_age , abo.child2_age , abo.child3_age , abo.child4_age , abo.child5_age , abo.child6_age , abc.name , 
abc.surname , abd.id_booking_type , abd.web , haba.id_agencia , aba.avantio_accomodations 
FROM avantio_booking as ab 
LEFT JOIN avantio_booking_amount as abam ON abam.booking_code = ab.booking_code 
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code 
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code 
LEFT JOIN avantio_booking_occupants as abo ON abo.booking_code = ab.booking_code 
LEFT JOIN avantio_client as abc ON abc.booking_code = ab.booking_code 
LEFT JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations AND aa.language = 'es' 
JOIN dynamic_rooms as ds ON ds.id = aa.id AND ds.language = 'es' 
LEFT JOIN hshv_avantio_booking_agencia AS haba ON haba.booking_code = ab.booking_code 
WHERE (ds.status = 'ACTIVED' OR ds.status = 'PAUSED')
ORDER BY ab.start_date asc; 

# get reservatio number by booking_type
SELECT COUNT(*) AS total , abd.id_booking_type , abt.booking_type
FROM avantio_booking as ab 
LEFT JOIN avantio_booking_amount as abam ON abam.booking_code = ab.booking_code 
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code 
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code 
LEFT JOIN avantio_booking_occupants as abo ON abo.booking_code = ab.booking_code 
LEFT JOIN avantio_client as abc ON abc.booking_code = ab.booking_code 
LEFT JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations AND aa.language = 'es' 
JOIN dynamic_rooms as ds ON ds.id = aa.id AND ds.language = 'es' 
JOIN avantio_booking_type AS abt ON abt.id_booking_type = abd.id_booking_type
LEFT JOIN hshv_avantio_booking_agencia AS haba ON haba.booking_code = ab.booking_code 
WHERE (ds.status = 'ACTIVED' OR ds.status = 'PAUSED')
GROUP BY abd.id_booking_type
ORDER BY total desc; 


# reservas todas
SELECT DISTINCT(ab.booking_code) , ab.booking_code, aa.text_userid , ab.start_date , ab.end_date , ab.booking_date , total_price , aa.text_title, ds.text_slug , 
ds.auto_slug , abo.adults_number , abo.child1_age , abo.child2_age , abo.child3_age , abo.child4_age , abo.child5_age , abo.child6_age , abc.name , 
abc.surname , abd.id_booking_type , abd.web , haba.id_agencia , aba.avantio_accomodations 
FROM avantio_booking as ab 
LEFT JOIN avantio_booking_amount as abam ON abam.booking_code = ab.booking_code 
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code 
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code 
LEFT JOIN avantio_booking_occupants as abo ON abo.booking_code = ab.booking_code 
LEFT JOIN avantio_client as abc ON abc.booking_code = ab.booking_code 
LEFT JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations AND aa.language = 'es' 
JOIN dynamic_rooms as ds ON ds.id = aa.id AND ds.language = 'es' 
LEFT JOIN hshv_avantio_booking_agencia AS haba ON haba.booking_code = ab.booking_code 
WHERE (ds.status = 'ACTIVED' OR ds.status = 'PAUSED')
GROUP BY abd.id_booking_type; 



# reservas todas
SELECT DISTINCT(ab.booking_code) , ab.booking_code, aa.text_userid , ab.start_date , ab.end_date , ab.booking_date , total_price , aa.text_title, ds.text_slug , 
ds.auto_slug , abo.adults_number , abo.child1_age , abo.child2_age , abo.child3_age , abo.child4_age , abo.child5_age , abo.child6_age , abc.name , 
abc.surname , abd.id_booking_type , abd.web , haba.id_agencia , aba.avantio_accomodations 
FROM avantio_booking as ab 
LEFT JOIN avantio_booking_amount as abam ON abam.booking_code = ab.booking_code 
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code 
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code 
LEFT JOIN avantio_booking_occupants as abo ON abo.booking_code = ab.booking_code 
LEFT JOIN avantio_client as abc ON abc.booking_code = ab.booking_code 
LEFT JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations AND aa.language = 'es' 
JOIN dynamic_rooms as ds ON ds.id = aa.id AND ds.language = 'es' 
LEFT JOIN hshv_avantio_booking_agencia AS haba ON haba.booking_code = ab.booking_code 
WHERE (ds.status = 'ACTIVED' OR ds.status = 'PAUSED'); 
#AND 
#ab.booking_date >= '2021-01-01' 
#AND ab.booking_date <= '2025-01-04' 
#AND abd.id_booking_type <> 3 
#AND abd.id_booking_type <> 9 
#AND abd.id_booking_type <> 18 
#AND abd.id_booking_type <> 16 
#AND abd.id_booking_type <> 2 
#AND aa.number_banyos_banyera + aa.number_banyos_ducha >= 0 
#AND aa.number_habitaciones >= 0;


SELECT * FROM avantio_accommodations_historico_data;


SELECT * FROM avantio_booking_type;

# reservas todas
SELECT DISTINCT(ab.booking_code) , ab.booking_code, aa.text_userid , ab.start_date , ab.end_date , ab.booking_date , total_price , aa.text_title, ds.text_slug , 
ds.auto_slug , abo.adults_number , abo.child1_age , abo.child2_age , abo.child3_age , abo.child4_age , abo.child5_age , abo.child6_age , abc.name , 
abc.surname , abd.id_booking_type , abd.web , haba.id_agencia , aba.avantio_accomodations 
FROM avantio_booking as ab 
LEFT JOIN avantio_booking_amount as abam ON abam.booking_code = ab.booking_code 
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code 
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code 
LEFT JOIN avantio_booking_occupants as abo ON abo.booking_code = ab.booking_code 
LEFT JOIN avantio_client as abc ON abc.booking_code = ab.booking_code 
LEFT JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations AND aa.language = 'es' 
JOIN dynamic_rooms as ds ON ds.id = aa.id AND ds.language = 'es' 
LEFT JOIN hshv_avantio_booking_agencia AS haba ON haba.booking_code = ab.booking_code 
WHERE (ds.status = 'ACTIVED' OR ds.status = 'PAUSED') 
AND 
ab.booking_date >= '2021-11-01' 
AND ab.booking_date <= '2023-01-03' 
AND abd.id_booking_type <> 3 
AND abd.id_booking_type <> 9 
AND abd.id_booking_type <> 18 
AND abd.id_booking_type <> 16 
AND abd.id_booking_type <> 2 
AND aa.number_banyos_banyera + aa.number_banyos_ducha >= 0 
AND aa.number_habitaciones >= 0;


SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation;

use pisosenm_inmobiliaria_siete_pruebas;
SELECT * FROM dynamic_taxonomy_city;

SELECT * FROM dynamic_taxonomy_city WHERE dynamic_accion = 1;
SELECT * FROM dynamic_geolocality;

# SELECT * FROM dynamic_rooms WHERE dynamic_taxonomy_group = 1;

SELECT * FROM dynamic_rooms WHERE dynamic_taxonomy_group = 1;


SELECT * FROM dynamic_taxonomy_city WHERE text_title IN
(
				'Otros',
            'Aguilar de Segarra',
            'Artés',
            'Avinyó',
            'Balsareny',
            'Cabrianes',
            'Calders',
            'Callús',
            'Cardona',
            'Castellbell i el Vilar',
            'Castellfollit del Boix',
            'Castellgalí',
            'Castellnou de Bages',
            'Fonollosa',
            'Gaià',
            'Estany',
            'Manresa',
            'Marganell',
            'Moià',
            'Monistrol de Calders',
            'Monistrol de Montserrat',
            'Mura',
            'Navas',
            'Navarcles',
            'Pont de Vilomara i Rocafort',
            'Rajadell',
            'Súria',
            'Sallent',
            'Sant Feliu Sasserra',
            'Sant Fruitós de Bages',
            'Sant Joan de Vilatorrada',
            'Sant Mateu de Bages',
            'Sant Salvador de Guardiola',
            'Sant Vicenç de Castellet',
            'Santa Maria Oló',
            'Santpedor',
            'Súria',
            'Talamanca',
            'Fals',
            'Puig-Reig',
            'Olesa de montserrat'
);


SELECT * FROM dynamic_taxonomy_city WHERE dynamic_accion = 1;


UPDATE dynamic_rooms SET dynamic_accion = 1 WHERE id = 1 OR id = 2 OR id = 3;


SELECT ds.id , ds.text_title
FROM dynamic_rooms AS ds;

SELECT ds.id , ds.text_title
FROM dynamic_rooms AS ds
WHERE ds.dynamic_taxonomy_group = 1;


SELECT ai.id 
FROM avantio_inmovilla AS ai;

SELECT ds.id , ai.id 
FROM dynamic_rooms AS ds
JOIN avantio_inmovilla AS ai ON ai.id = ds.id;

SELECT ds.id , ai.id 
FROM dynamic_rooms AS ds
LEFT JOIN avantio_inmovilla AS ai ON ai.id = ds.id;

SELECT ds.id , ai.id 
FROM dynamic_rooms AS ds
RIGHT JOIN avantio_inmovilla AS ai ON ai.id = ds.id;


SELECT * FROM avantio_inmovilla;

UPDATE dynamic_rooms SET checkbox_destacado_home = 1 WHERE id = 1 OR id = 2 OR id = 3;
UPDATE dynamic_rooms SET dynamic_taxonomy_group = 1 , dynamic_taxonomy = 1 WHERE id = 3;
UPDATE dynamic_rooms SET dynamic_accion = 2 WHERE id = 3 OR id = 2;
SELECT * FROM dynamic_rooms WHERE dynamic_taxonomy_group = 1 AND checkbox_destacado_home = 1;

SELECT * FROM avantio_inmovilla;
SELECT * FROM dynamic_accion;
SELECT * FROM dynamic_agencia;
SELECT * FROM dynamic_usuario;
SELECT * FROM dynamic_gallery_franquicia_principal;
SELECT * FROM dynamic_gallery_inmo;
SELECT * FROM dynamic_gallery_usuario;
SELECT * FROM dynamic_geocity;
SELECT * FROM dynamic_geolocality;
SELECT * FROM dynamic_geodistrict;
SELECT * FROM dynamic_taxonomy;
SELECT * FROM dynamic_taxonomy_group;



UPDATE dynamic_rooms AS ds
SET ds.avantio_inmovilla = ds.id;

SELECT * FROM dynamic_rooms;

UPDATE dynamic_rooms AS ds
JOIN avantio_inmovilla AS ai ON ai.id = ds.id
SET ds.avantio_inmovilla = ds.id;


ALTER TABLE dynamic_rooms ADD COLUMN avantio_inmovilla INT(11) COMMENT "inmovilla"; 

SELECT * FROM dynamic_agencia;
SELECT * FROM dynamic_gallery_inmo;
SELECT * FROM dynamic_gallery_franquicia_principal;


SELECT * FROM dynamic_rooms;

UPDATE dynamic_rooms AS ds
JOIN dynamic_gallery_inmo AS dgi ON dgi.id = ds.id
SET dynamic_gallery_inmo = ds.id;

SELECT * FROM dynamic_rooms;
SELECT * FROM dynamic_gallery_inmo;

UPDATE dynamic_rooms 
SET dynamic_taxonomy_group = 3 , dynamic_taxonomy = 3 WHERE id <> -1;

UPDATE dynamic_rooms 
SET dynamic_taxonomy_group = 1 , dynamic_taxonomy = 1 WHERE id = 1;


SELECT * FROM dynamic_rooms;
SELECT * FROM dynamic_taxonomy_city;


SELECT * 
FROM dynamic_rooms
WHERE dynamic_taxonomy_group = 1;


UPDATE dynamic_rooms 
SET checkbox_destacado_home = 1
WHERE dynamic_taxonomy_group = 1;

SELECT * FROM dynamic_accion;
SELECT * FROM dynamic_taxonomy_city;
SELECT * FROM dynamic_taxonomy_group;


UPDATE dynamic_taxonomy_city SET dynamic_geolocality = 104299 WHERE id = 2;
UPDATE dynamic_taxonomy_city SET dynamic_geolocality = 104299 WHERE id = 371;
UPDATE dynamic_taxonomy_city SET dynamic_geolocality = 104299 WHERE id = 740;

SELECT * FROM dynamic_taxonomy_city;

SELECT * 
FROM dynamic_geolocality 
WHERE text_title LIKE "Aguilar de Segarra";

UPDATE dynamic_rooms SET dynamic_geocountry = 0 WHERE id <> -1;
UPDATE dynamic_rooms SET dynamic_georegion = 9 WHERE id <> -1;
UPDATE dynamic_rooms SET dynamic_geocity = 10 WHERE id <> -1;
UPDATE dynamic_rooms SET dynamic_geolocality = 104299 WHERE id <> -1;

# españa = 0 
SELECT * FROM dynamic_geocountry;
# catalunya = 9
SELECT * FROM dynamic_georegion;
# barcelona = 10
SELECT * FROM dynamic_geocity;
# aguilar de segarra = 104299
SELECT * FROM dynamic_geolocality;

SELECT * 
FROM dynamic_geolocality 
WHERE text_title LIKE "Aguilar de Segarra";

SELECT * FROM dynamic_geolocality;
SELECT * FROM dynamic_rooms WHERE LANGUAGE = 1;

USE pisosenm_inmobiliaria;

# SELECT * FROM dynamic_geocountry;
# SELECT * FROM dynamic_georegion;
# SELECT * FROM dynamic_geocity;
SELECT * FROM dynamic_geolocality;

SELECT uno.id, uno.text_title 
FROM pisosenm_inmobiliaria_siete_pruebas.dynamic_geolocality AS uno
JOIN pisosenm_inmobiliaria.dynamic_geolocality AS dos ON uno.position =  dos.position
WHERE uno.dynamic_geocity = 10 AND uno.text_title LIKE dos.text_title;
  
#FROM pisosenm_inmobiliaria_siete_pruebas.dynamic_geolocality AS geolocality_uno
#WHERE pisosenm_inmobiliaria.dynamic_geolocality IN()

SELECT * FROM dynamic_taxonomy_group;
SELECT * FROM dynamic_taxonomy_city;

UPDATE dynamic_offers_taxonomy SET dynamic_accion = 1 WHERE id > 0 AND id < 10;
UPDATE dynamic_offers_taxonomy SET dynamic_accion = 2 WHERE id >= 10 AND  id < 19;
UPDATE dynamic_offers_taxonomy SET dynamic_accion = 3 WHERE id >= 19 AND  id <= 27;

SELECT * FROM dynamic_offers_taxonomy;

SELECT dtc.* 
FROM dynamic_taxonomy_city AS dtc
JOIN dynamic_accion AS da ON da.id = dtc.dynamic_accion;

SELECT * FROM dynamic_accion;
SELECT * FROM dynamic_taxonomy_city;


# CREATE DATABASE pisosenm_inmobiliaria_siete_pruebas_dos CHARACTER SET utf8 COLLATE UTF8_GENERAL_CI;

USE pisosenm_inmobiliaria;
SELECT * FROM dynamic_rooms;

USE pisosenm_inmobiliaria_siete_pruebas;

SELECT * FROM dynamic_rooms;

SELECT * FROM dynamic_usuario;
SELECT * FROM dynamic_rooms as d WHERE d.checkbox_destacado_home = 0 AND d.language = 1 AND d.dynamic_taxonomy_group = 1;

SELECT * FROM dynamic_pages;
SELECT * FROM dynamic_taxonomy_city;


SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE `dynamic_taxonomy_group`;
SET FOREIGN_KEY_CHECKS = 1;


SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE `dynamic_faqspropietarios_type`;
DROP TABLE `dynamic_faqspropietarios`;
SET FOREIGN_KEY_CHECKS = 1;


SELECT * FROM dynamic_taxonomy_group;
SELECT * FROM dynamic_taxonomy_city;


SELECT region.* 
FROM dynamic_georegion as region
LEFT JOIN dynamic_geocountry as country ON country.id = region.dynamic_geocountry
WHERE country.id = 0 and region.language = 1;

DELETE FROM dynamic_georegion WHERE id <> -1;

UPDATE dynamic_geocity SET dynamic_georegion = 01 WHERE id = 5;

SELECT * FROM dynamic_geocountry;
SELECT * FROM dynamic_georegion;
SELECT * FROM dynamic_geocity;
SELECT * FROM dynamic_geolocality;
SELECT * FROM dynamic_geodistrict;


SELECT * FROM dynamic_geocity;

DELETE FROM dynamic_georegion;
SELECT * FROM dynamic_geocountry;
SELECT * FROM dynamic_georegion;
SELECT * FROM dynamic_geocity;
SELECT * FROM dynamic_geolocality;
SELECT * FROM dynamic_geodistrict;


DROP TABLE dynamic_georegion;


CREATE TABLE `dynamic_georegion` (
	`id` INT(11) NOT NULL COMMENT 'Identificador',
	`language` INT(11) NULL DEFAULT NULL COMMENT 'Id',
	`dynamic_geocountry` INT(11) NULL DEFAULT NULL COMMENT 'Identificador',
	`text_title` VARCHAR(255) NULL DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)' COLLATE 'utf8_unicode_ci',
	`status` VARCHAR(128) NULL DEFAULT NULL COLLATE 'utf8_unicode_ci',
	`position` INT(11) NULL DEFAULT NULL,
	PRIMARY KEY (`id`) USING BTREE,
	INDEX `IDX_6BDAE05CD4DB71B5` (`language`) USING BTREE,
	CONSTRAINT `FK_6BDAE05CD4DB71B5` FOREIGN KEY (`language`) REFERENCES `languages` (`id`) ON UPDATE RESTRICT ON DELETE RESTRICT
)
COLLATE='utf8_unicode_ci'
ENGINE=InnoDB;

DELETE FROM dynamic_georegion;

SELECT * FROM dynamic_georegion;
DELETE FROM dynamic_geocountry WHERE id <> -1;
SELECT * FROM dynamic_geocountry WHERE STATUS = "ACTIVED";
SELECT * FROM dynamic_geocountry WHERE STATUS = "PAUSED";

CREATE TABLE `dynamic_geocountry` (
	`id` INT(11) NOT NULL COMMENT 'Título',
	`language` VARCHAR(3) NOT NULL DEFAULT 'es' COLLATE 'utf8_general_ci',
	`text_title` VARCHAR(255) NULL DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)' COLLATE 'utf8_general_ci',
	`status` VARCHAR(128) NULL DEFAULT NULL COLLATE 'utf8_general_ci',
	`position` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`, `language`) USING BTREE
)
COMMENT='Geografic - Países'
COLLATE='utf8_general_ci'
ENGINE=InnoDB
;


SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE dynamic_geocountry;
DROP TABLE dynamic_geodistrict;
DROP TABLE dynamic_geolocality;
DROP TABLE dynamic_geocity;
DROP TABLE dynamic_georegion;
SET FOREIGN_KEY_CHECKS = 1;


# USE phpandfr_portvil_dos;
USE pisosenm_inmobiliaria_siete_pruebas;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE dynamic_geocountry;
DROP TABLE dynamic_geodistrict;
DROP TABLE dynamic_geolocality;
DROP TABLE dynamic_geocity;
DROP TABLE dynamic_georegion;
SET FOREIGN_KEY_CHECKS = 1;


SELECT DISTINCT TABLE_NAME, INDEX_NAME
FROM INFORMATION_SCHEMA.STATISTICS
WHERE TABLE_SCHEMA = 'pisosenm_inmobiliaria_siete_pruebas'
AND (
TABLE_NAME = "dynamic_geocountry" 
OR 
TABLE_NAME = "dynamic_georegion"
OR 
TABLE_NAME = "dynamic_geocity"
OR 
TABLE_NAME = "dynamic_geolocality"
OR 
TABLE_NAME = "dynamic_geodistrict"
);



# ALTER TABLE dynamic_geocountry DROP FOREIGN KEY  IDX_88ACB8A1D4DB71B5;


ALTER TABLE dynamic_geocountry DROP PRIMARY KEY;
ALTER TABLE dynamic_georegion DROP PRIMARY KEY;
ALTER TABLE dynamic_geocity DROP PRIMARY KEY;
ALTER TABLE dynamic_geolocality DROP PRIMARY KEY;
ALTER TABLE dynamic_geodistrict DROP PRIMARY KEY;


ALTER TABLE dynamic_georegion DROP FOREIGN KEY FK_6BDAE05CD4DB71B5;
ALTER TABLE dynamic_geocity DROP FOREIGN KEY FK_4245E0536BDAE05C;
ALTER TABLE dynamic_geocity DROP FOREIGN KEY FK_4245E053D4DB71B5;
ALTER TABLE dynamic_geolocality DROP FOREIGN KEY FK_E40D30844245E053;
ALTER TABLE dynamic_geolocality DROP FOREIGN KEY FK_E40D3084D4DB71B5;
ALTER TABLE dynamic_geodistrict DROP FOREIGN KEY FK_341ADCE5E40D3084;
ALTER TABLE dynamic_geodistrict DROP FOREIGN KEY FK_341ADCE5D4DB71B5;


DROP TABLE dynamic_geodistrict;
DROP TABLE dynamic_geolocality;
DROP TABLE dynamic_geocity;
DROP TABLE dynamic_georegion;
DROP TABLE dynamic_geocountry;


SELECT * FROM dynamic_geocountry;
SELECT * FROM dynamic_georegion;
SELECT * FROM dynamic_geocity;
SELECT * FROM dynamic_geolocality;
SELECT * FROM dynamic_geodistrict;


# ALTER TABLE dynamic_geocountry DROP FOREIGN KEY FK_88ACB8A1D4DB71B5;
ALTER TABLE dynamic_georegion DROP FOREIGN KEY FK_6BDAE05CD4DB71B5;
ALTER TABLE dynamic_geocity DROP FOREIGN KEY FK_4245E0536BDAE05C;
ALTER TABLE dynamic_geocity DROP FOREIGN KEY FK_4245E053D4DB71B5;
ALTER TABLE dynamic_geolocality DROP FOREIGN KEY FK_E40D30844245E053;
ALTER TABLE dynamic_geolocality DROP FOREIGN KEY FK_E40D3084D4DB71B5;
ALTER TABLE dynamic_geodistrict DROP FOREIGN KEY FK_341ADCE5E40D3084;
ALTER TABLE dynamic_geodistrict DROP FOREIGN KEY FK_341ADCE5D4DB71B5;


SELECT DISTINCT TABLE_NAME, INDEX_NAME
FROM INFORMATION_SCHEMA.STATISTICS
WHERE TABLE_SCHEMA = 'pisosenm_inmobiliaria_siete_pruebas'
AND (
TABLE_NAME = "dynamic_geocountry" 
OR 
TABLE_NAME = "dynamic_georegion"
OR 
TABLE_NAME = "dynamic_geocity"
OR 
TABLE_NAME = "dynamic_geolocality"
OR 
TABLE_NAME = "dynamic_geodistrict"
);

DROP TABLE dynamic_geodistrict;
DROP TABLE dynamic_geolocality;
DROP TABLE dynamic_geocity;
DROP TABLE dynamic_georegion;
DROP TABLE dynamic_geocountry;

# DELETE FROM dynamic_geocountry WHERE id <> -1;
SELECT * FROM dynamic_geocountry;
SELECT * FROM dynamic_georegion;
SELECT * FROM dynamic_geocity;
SELECT * FROM dynamic_geolocality;
SELECT * FROM dynamic_geodistrict;

codigo pais
codigo provincia


SELECT * FROM dynamic_services;


SELECT * FROM roles;
SELECT * FROM users;


INSERT INTO preferences
(
id,
scripts_body,
cache_time,
with_thumbnail_high,
with_thumbnail_low,
with_thumbnail_mobile,
text_mailform
)
SELECT
id,
scripts_body,
cache_time,
with_thumbnail_high,
with_thumbnail_low,
with_thumbnail_mobile,
text_mailform
FROM pisosenm_inmobiliaria.preferences;

INSERT INTO password_reset
(
id,
email
)
SELECT 
id,
email,
FROM pisosenm_inmobiliaria.password_reset;

INSERT INTO newsletter
(
id,
email,
LANGUAGE,
STATUS
)
SELECT
id,
email,
1,
STATUS
FROM pisosenm_inmobiliaria.newsletter;

DROP TABLE messenger_messages;


DELETE FROM message WHERE id <> -1;
SELECT * FROM message;


INSERT INTO message
(
id_indice,
id,
id2,
title,
user1,
user2,
message,
TIMESTAMP,
user1read,
user2read,
url
) 
SELECT 
id_indice,
id,
id2,
title,
user1,
user2,
message,
TIMESTAMP,
user1read,
user2read,
url
FROM pisosenm_inmobiliaria.message;

INSERT INTO dynamic_usuario
(
id,
text_title,
document_documento1,
text_titulo1,
document_documento2,
text_titulo2
) 
SELECT 
id,
text_title,
"",
"",
"",
""
FROM pisosenm_inmobiliaria.dynamic_usuario;


DELETE FROM dynamic_usuario WHERE id <> -1;
SELECT * FROM dynamic_usuario;


SELECT * FROM dynamic_testimonials;

INSERT INTO dynamic_testimonials 
(
id,
LANGUAGE,
text_title,
text_business,
textarea_description,
checkbox_destacada_home,
checkbox_destacada_alojamiento,
STATUS,
POSITION
)
SELECT 
id,
1,
text_title,
text_business,
textarea_description,
checkbox_destacada_home,
checkbox_destacada_alojamiento,
STATUS,
position
FROM pisosenm_inmobiliaria.dynamic_testimonials



INSERT INTO dynamic_taxonomy_group 
(
id,
LANGUAGE,
text_title,
text_title_plural,
text_subtitle,
text_body_title,
textarea_description,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
position
)
SELECT 
id,
LANGUAGE,
text_title,
text_title_plural,
text_subtitle,
text_body_title,
textarea_description,
text_page_title,
auto_slug,
text_slug,
text_meta_keywords,
text_meta_robots,
text_meta_description,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
position
FROM pisosenm_inmobiliaria.dynamic_taxonomy_group;


INSERT INTO dynamic_taxonomy_city 
(
id,
LANGUAGE,
dynamic_taxonomy_group,
dynamic_geolocality,
dynamic_accion,
text_title,
text_body_title,
textarea_description,
text_body_title_no_res,
textarea_description_no_res,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
position

)
SELECT 
id,
1,
dynamic_taxonomy_group,
dynamic_geolocality,
dynamic_accion,
text_title,
text_body_title,
textarea_description,
text_body_title_no_res,
textarea_description_no_res,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
position
FROM pisosenm_inmobiliaria.dynamic_taxonomy_city;


SELECT * FROM dynamic_taxonomy_group;
SELECT * FROM dynamic_taxonomy_city;

SELECT DISTINCT
TABLE_NAME,
INDEX_NAME
FROM INFORMATION_SCHEMA.STATISTICS
WHERE TABLE_SCHEMA = 'pisosenm_inmobiliaria_siete_pruebas'
AND INDEX_NAME = "UNIQ_77A90D3FD8A2292D";


SELECT * FROM dynamic_empresa;


UPDATE dynamic_empresa SET dynamic_gallery_empresa = id;
SELECT * FROM dynamic_empresa;
SELECT * FROM dynamic_gallery_empresa;



SELECT DISTINCT
TABLE_NAME,
INDEX_NAME
FROM INFORMATION_SCHEMA.STATISTICS
WHERE TABLE_SCHEMA = 'pisosenm_inmobiliaria_siete_pruebas'
AND INDEX_NAME = "UNIQ_B8C6E7CDFC195E46";


INSERT INTO dynamic_taxonomy_group 
(
id
language
text_title
text_title_plural
text_subtitle
text_body_title
textarea_description
text_page_title
text_slug
auto_slug
text_meta_keywords
text_meta_description
text_meta_robots
textarea_scripts_header
textarea_scripts_body
status
position
)
SELECT 
id
language
text_title
text_title_plural
text_subtitle
dynamic_gallery_inmo
text_body_title
textarea_description
text_page_title
auto_slug
text_slug
text_meta_keywords
text_meta_robots
text_meta_description
textarea_scripts_header
textarea_scripts_body
status
position
FROM pisosenm_inmobiliaria.dynamic_taxonomy_group;


INSERT INTO dynamic_taxonomy_city 
(
id,
LANGUAGE,
dynamic_taxonomy_group,
dynamic_geolocality,
text_title,
dynamic_gallery,
dynamic_gallery_home,
text_body_title,
dynamic_accion,
textarea_description,
text_body_title_no_res,
textarea_description_no_res,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
position
)
SELECT 
id,
1,
dynamic_taxonomy_group,
dynamic_geolocality,
dynamic_accion,
text_title,
dynamic_gallery,
dynamic_gallery_home,
text_body_title,
textarea_description,
text_body_title_no_res,
textarea_description_no_res,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
position
FROM pisosenm_inmobiliaria.dynamic_taxonomy_city;


SELECT * FROM dynamic_taxonomy;
SELECT * FROM dynamic_taxonomy_city;
SELECT * FROM dynamic_taxonomy_group;
SELECT * FROM dynamic_testimonials;


INSERT INTO dynamic_rooms 
(
id, 
language, 
dynamic_accion, 
dynamic_agencia, 
dynamic_agente_inmobiliario, 
dynamic_usuario, 
dynamic_taxonomy, 
dynamic_taxonomy_group, 
dynamic_geocountry, 
dynamic_georegion, 
dynamic_geocity, 
dynamic_geolocality, 
dynamic_geodistrict, 
dynamic_documents_inmo, 
dynamic_documents_usuario, 
dynamic_gallery_usuario, 
dynamic_gallery_inmo, 
text_title, 
text_subtitle, 
text_ref, 
text_zona, 
text_antiguedad, 
text_keypromo, 
text_latitud, 
text_altitud, 
text_conservacion, 
text_orientacion, 
number_precioinmo, 
number_precioalq, 
textarea_description, 
textarea_description_2, 
textarea_interior, 
checkbox_destacado, 
checkbox_destacado_home, 
checkbox_destacado_provincia, 
checkbox_destacado_taxonomia, 
checkbox_destacado_listado_inmobiliarias, 
checkbox_destacado_detalle_inmobiliaria, 
checkbox_destacado_listado_blog, 
checkbox_destacado_detalle_blog, 
checkbox_destacado_detalle_propiedad, 
checkbox_destacado_detalle_inmobiliaria_lateral, 
checkbox_destacado_oferta, 
checkbox_oferta, 
checkbox_destacado_newsletter, 
checkbox_destacado_agente, 
checkbox_destacado_home_agente, 
checkbox_destacado_provincia_agente, 
checkbox_destacado_taxonomia_agente, 
checkbox_destacado_listado_inmobiliarias_agente, 
checkbox_destacado_detalle_inmobiliaria_agente, 
checkbox_destacado_listado_blog_agente, 
checkbox_destacado_detalle_blog_agente, 
checkbox_destacado_detalle_propiedad_agente, 
checkbox_destacado_oferta_agente, 
checkbox_oferta_agente, 
checkbox_destacado_newsletter_agente, 
checkbox_vistos_recientemente_provincia, 
checkbox_vistos_recientemente_taxonomia, 
checkbox_vistos_recientemente_listado_inmobiliarias, 
checkbox_vistos_recientemente_detalle_inmobiliarias, 
checkbox_vistos_recientemente_listado_blog, 
checkbox_vistos_recientemente_detalle_blog, 
checkbox_vistos_recientemente_detalle_propiedad, 
checkbox_vistos_recientemente_provincia_agente, 
checkbox_vistos_recientemente_taxonomia_agente, 
checkbox_vistos_recientemente_listado_inmobiliarias_agente, 
checkbox_vistos_recientemente_detalle_inmobiliarias_agente, 
checkbox_vistos_recientemente_listado_blog_agente, 
checkbox_vistos_recientemente_detalle_blog_agente, 
checkbox_vistos_recientemente_detalle_propiedad_agente, 
text_page_title, 
text_slug, 
auto_slug, 
text_meta_keywords, 
text_meta_description, 
text_meta_robots, 
textarea_scripts_header, 
textarea_scripts_body, 
status, 
position 
)
SELECT
id, 
1, 
dynamic_accion, 
dynamic_agencia, 
dynamic_agente_inmobiliario, 
dynamic_usuario, 
dynamic_taxonomy, 
dynamic_taxonomy_group, 
dynamic_geocountry, 
dynamic_georegion, 
dynamic_geocity, 
dynamic_geolocality, 
dynamic_geodistrict, 
dynamic_documents_inmo, 
dynamic_documents_usuario, 
dynamic_gallery_usuario, 
dynamic_gallery_inmo,
text_title, 
text_subtitle, 
text_ref, 
text_zona, 
text_antiguedad, 
text_keypromo, 
text_latitud, 
text_altitud, 
text_conservacion, 
text_orientacion, 
number_precioinmo, 
number_precioalq, 
textarea_description, 
textarea_description_2, 
textarea_interior, 
checkbox_destacado, 
checkbox_destacado_home, 
checkbox_destacado_provincia, 
checkbox_destacado_taxonomia, 
checkbox_destacado_listado_inmobiliarias, 
checkbox_destacado_detalle_inmobiliaria, 
checkbox_destacado_listado_blog, 
checkbox_destacado_detalle_blog, 
checkbox_destacado_detalle_propiedad, 
checkbox_destacado_detalle_inmobiliaria_lateral, 
checkbox_destacado_oferta, 
checkbox_oferta, 
checkbox_destacado_newsletter, 
checkbox_destacado_agente, 
checkbox_destacado_home_agente, 
checkbox_destacado_provincia_agente, 
checkbox_destacado_taxonomia_agente, 
checkbox_destacado_listado_inmobiliarias_agente, 
checkbox_destacado_detalle_inmobiliaria_agente, 
checkbox_destacado_listado_blog_agente, 
checkbox_destacado_detalle_blog_agente, 
checkbox_destacado_detalle_propiedad_agente, 
checkbox_destacado_oferta_agente, 
checkbox_oferta_agente, 
checkbox_destacado_newsletter_agente, 
checkbox_vistos_recientemente_provincia, 
checkbox_vistos_recientemente_taxonomia, 
checkbox_vistos_recientemente_listado_inmobiliarias, 
checkbox_vistos_recientemente_detalle_inmobiliarias, 
checkbox_vistos_recientemente_listado_blog, 
checkbox_vistos_recientemente_detalle_blog, 
checkbox_vistos_recientemente_detalle_propiedad, 
checkbox_vistos_recientemente_provincia_agente, 
checkbox_vistos_recientemente_taxonomia_agente, 
checkbox_vistos_recientemente_listado_inmobiliarias_agente, 
checkbox_vistos_recientemente_detalle_inmobiliarias_agente, 
checkbox_vistos_recientemente_listado_blog_agente, 
checkbox_vistos_recientemente_detalle_blog_agente, 
checkbox_vistos_recientemente_detalle_propiedad_agente, 
text_page_title, 
auto_slug, 
text_slug, 
text_meta_keywords, 
text_meta_robots, 
text_meta_description, 
textarea_scripts_header, 
textarea_scripts_body, 
status, 
position
FROM pisosenm_inmobiliaria.dynamic_rooms


INSERT INTO dynamic_offers_taxonomy 
(
id,
LANGUAGE,
dynamic_accion,
dynamic_taxonomy_group,
text_title,
dynamic_gallery,
dynamic_gallery_home,
text_body_title,
textarea_description,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
position

)
SELECT 
id,
1,
dynamic_accion,
dynamic_taxonomy_group,
text_title,
dynamic_gallery,
dynamic_gallery_home,
text_body_title,
textarea_description,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
position
FROM pisosenm_inmobiliaria.dynamic_offers_taxonomy;


INSERT INTO dynamic_offers 
(
id,
LANGUAGE,
dynamic_offers_taxonomy,
dynamic_gallery,
text_title,
text_body_title,
textarea_summary,
textarea_description,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
position
)
SELECT 
id,
1,
dynamic_offers_taxonomy,
dynamic_gallery,
text_title,
text_body_title,
textarea_summary,
textarea_description,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
POSITION
FROM pisosenm_inmobiliaria.dynamic_offers;


INSERT INTO dynamic_mail_tipo_portal 
(
id,
LANGUAGE,
text_title,
textarea_description,
text_body_title_no_res,
textarea_description_no_res,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
position

)
SELECT 
id,
1,
text_title,
textarea_description,
text_body_title_no_res,
textarea_description_no_res,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
position
FROM pisosenm_inmobiliaria.dynamic_mail_tipo_portal;


INSERT INTO dynamic_mail_empresa 
(
id,
LANGUAGE,
dynamic_mail_tipo_portal,
dynamic_geolocality,
dynamic_geodistrict,
text_title,
text_nombre_empresa,
text_nombre_empresa_comercial,
text_direccion,
text_phone,
text_web,
text_email,
text_actividad,
text_producto,
textarea_description,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
position
)
SELECT 
id,
1,
dynamic_mail_tipo_portal,
dynamic_geolocality,
dynamic_geodistrict,
text_title,
text_nombre_empresa,
text_nombre_empresa_comercial,
text_direccion,
text_phone,
text_web,
text_email,
text_actividad,
text_producto,
textarea_description,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
position
FROM pisosenm_inmobiliaria.dynamic_mail_empresa;

SELECT * FROM dynamic_geocountry;
SELECT * FROM dynamic_georegion;
SELECT * FROM dynamic_geocity;
SELECT * FROM dynamic_geolocality;
SELECT * FROM dynamic_geodistrict;


INSERT INTO dynamic_gallery_usuario_principal
(
id,
zipstatus,
image_principal,
text_title,
text_alt,
imagethn_principal,
text_importada,
STATUS,
position
)
SELECT
id,
zip_status,
image_principal,
text_title,
text_alt,
imagethn_principal,
text_importada,
"ACTIVED",
1
FROM pisosenm_inmobiliaria.dynamic_gallery_usuario_principal;


INSERT INTO dynamic_gallery_usuario
(
id, 
dynamic_usuario, 
zipstatus, 
text_title, 
text_title_image_1, 
text_alt_image_1, 
image_1, 
text_title_image_2, 
text_alt_image_2, 
image_2, 
text_alt_image_3, 
text_title_image_3, 
image_3, 
text_title_image_4, 
text_alt_image_4, 
image_4, 
text_title_image_5, 
text_alt_image_5, 
image_5, 
text_title_image_6, 
text_alt_image_6, 
image_6, 
text_title_image_7, 
text_alt_image_7, 
image_7, 
text_title_image_8, 
text_alt_image_8, 
image_8, 
text_title_image_9, 
text_alt_image_9, 
image_9, 
text_title_image_10, 
text_alt_image_10, 
image_10, 
text_title_image_11, 
text_alt_image_11, 
image_11, 
text_title_image_12, 
text_alt_image_12, 
image_12, 
text_title_image_13, 
text_alt_image_13, 
image_13, 
text_title_image_14, 
text_alt_image_14, 
image_14, 
text_title_image_15, 
text_alt_image_15, 
image_15, 
text_alt_image_16, 
text_title_image_16, 
image_16, 
text_title_image_17, 
text_alt_image_17, 
image_17, 
text_title_image_18, 
text_alt_image_18, 
image_18, 
text_title_image_19, 
text_alt_image_19, 
image_19, 
text_title_image_20, 
text_alt_image_20, 
image_20, 
text_title_image_21, 
text_alt_image_21, 
image_21, 
text_title_image_22, 
text_alt_image_22, 
image_22, 
text_title_image_23, 
text_alt_image_23, 
image_23, 
text_title_image_24, 
text_alt_image_24, 
image_24, 
text_title_image_25, 
text_alt_image_25, 
image_25
)
SELECT 
id, 
dynamic_usuario,
zipstatus, 
text_title, 
 text_title_image_1, 
text_alt_image_1, 
image_1, 
text_title_image_2, 
text_alt_image_2, 
image_2, 
text_alt_image_3, 
text_title_image_3, 
image_3, 
text_title_image_4, 
text_alt_image_4, 
image_4, 
text_title_image_5, 
text_alt_image_5, 
image_5, 
text_title_image_6, 
text_alt_image_6, 
image_6, 
text_title_image_7, 
text_alt_image_7, 
image_7, 
text_title_image_8, 
text_alt_image_8, 
image_8, 
text_title_image_9, 
text_alt_image_9, 
image_9, 
text_title_image_10, 
text_alt_image_10, 
image_10, 
text_title_image_11, 
text_alt_image_11, 
image_11, 
text_title_image_12, 
text_alt_image_12, 
image_12, 
text_title_image_13, 
text_alt_image_13, 
image_13, 
text_title_image_14, 
text_alt_image_14, 
image_14, 
text_title_image_15, 
text_alt_image_15, 
image_15, 
text_alt_image_16, 
text_title_image_16, 
image_16, 
text_title_image_17, 
text_alt_image_17, 
image_17, 
text_title_image_18, 
text_alt_image_18, 
image_18, 
text_title_image_19, 
text_alt_image_19, 
image_19, 
text_title_image_20, 
text_alt_image_20, 
image_20, 
text_title_image_21, 
text_alt_image_21, 
image_21, 
text_title_image_22, 
text_alt_image_22, 
image_22, 
text_title_image_23, 
text_alt_image_23, 
image_23, 
text_title_image_24, 
text_alt_image_24, 
image_24, 
text_title_image_25, 
text_alt_image_25, 
image_25
FROM pisosenm_inmobiliaria.dynamic_gallery_usuario;

DELETE FROM dynamic_gallery_inmo_principal WHERE id <> -1;

INSERT INTO dynamic_gallery_inmo_principal
(
id,
LANGUAGE,
dynamic_agencia,
zipstatus,
image_principal,
text_title,
text_alt,
imagethn_principal,
text_importada,
STATUS,
POSITION
)
SELECT 
id,
1,
dynamic_agencia,
zipstatus,
image_principal,
text_title,
text_alt,
imagethn_principal,
text_importada,
"ACTIVED",
1
FROM pisosenm_inmobiliaria.dynamic_gallery_inmo_principal;

INSERT INTO dynamic_faqsinmobiliarias
(
id,
LANGUAGE,
dynamic_faqsinmobiliarias_type,
text_title,
textarea_description,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
position
)
SELECT 
id,
1,
dynamic_faqsinmobiliarias_type,
text_title,
textarea_description,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
position
FROM pisosenm_inmobiliaria.dynamic_faqsinmobiliarias;


SELECT * FROM dynamic_faqsagentes_type;

INSERT INTO dynamic_faqsagentes_type
(
id,
text_title,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
POSITION,
language	
)
SELECT 
id,
text_title,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
POSITION,
1
FROM pisosenm_inmobiliaria.dynamic_faqsagentes_type;


INSERT INTO dynamic_faqsagentes
(
id,
LANGUAGE,
dynamic_faqsagentes_type,
text_title,
textarea_description,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
POSITION
)
SELECT 
id,
1,
dynamic_faqsagentes_type,
text_title,
textarea_description,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
POSITION
FROM pisosenm_inmobiliaria.dynamic_faqsagentes;


INSERT INTO dynamic_empresa
(
id,
LANGUAGE,
dynamic_taxonomy_group,
dynamic_geolocality,
dynamic_accion,
dynamic_gallery_empresa,
text_title,
text_subtitle,
number_telf,
number_mobile,
number_fax,
text_direccion,
text_email,
text_website,
text_latitud,
text_longitud,
text_facebook,
text_twitter,
text_instagram,
text_pinterest,
text_google_plus,
google_place_id,
google_url,
textarea_description,
textarea_description_2,
textarea_interior,
text_body_title,
checkbox_destacado_provincia,
checkbox_destacado_listado_inmobiliarias,
checkbox_destacado_detalle_inmobiliaria,
checkbox_destacado_detalle_propiedad,
checkbox_destacado_buscador,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
POSITION
)
SELECT 
id,
1,
dynamic_taxonomy_group,
dynamic_geolocality,
dynamic_accion,
dynamic_gallery_empresa,
text_title,
text_subtitle,
number_telf,
number_mobile,
number_fax,
text_direccion,
text_email,
text_website,
text_latitud,
text_longitud,
text_facebook,
text_twitter,
text_instagram,
text_pinterest,
text_google_plus,
google_place_id,
google_url,
textarea_description,
textarea_description_2,
textarea_interior,
text_body_title,
checkbox_destacado_provincia,
checkbox_destacado_listado_inmobiliarias,
checkbox_destacado_detalle_inmobiliaria,
checkbox_destacado_detalle_propiedad,
checkbox_destacado_buscador,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
POSITION
FROM pisosenm_inmobiliaria.dynamic_empresa;

INSERT INTO dynamic_documents_usuario
(
id,
LANGUAGE,
dynamic_usuario,
text_title,
document_documento1,
text_titulo1,
document_documento2,
text_titulo2
)
SELECT 
id,
1,
1,
text_title,
document_documento1,
text_titulo1,
document_documento2,
text_titulo2
FROM pisosenm_inmobiliaria.dynamic_documents_usuario; 



SELECT * FROM dynamic_usuario;
INSERT INTO dynamic_usuario 
(id , text_title , document_documento1 , text_titulo1 , document_documento2 , text_titulo2 ) 
VALUES 
(1, "Usuario 1" , "" , "" ,  "" , "");

INSERT INTO dynamic_documents_inmo
(
id,
LANGUAGE,
users,
dynamic_agencia,
text_title,
document_documento1,
text_titulo1,
document_documento2,
text_titulo2
)
SELECT 
id,
1,
dynamic_usuario,
dynamic_agencia,
text_title,
document_documento1,
text_titulo1,
document_documento2,
text_titulo2
FROM pisosenm_inmobiliaria.dynamic_documents_inmo;

INSERT INTO dynamic_cron
(
id,
text_title,
text_direccion,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
POSITION,
LANGUAGE,
dynamic_agencia,
users
)
SELECT 
id,
text_title,
text_direccion,
text_page_title,
text_slug,
auto_slug,
text_meta_description,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
POSITION,
1,
dynamic_agencia,
dynamic_usuario
FROM pisosenm_inmobiliaria.dynamic_cron;

INSERT INTO dynamic_agente_inmobiliario
(
id,
LANGUAGE,
dynamic_agencia,
text_title,
text_email,
text_website,
text_facebook,
text_twitter,
text_instagram,
text_pinterest,
text_google_plus,
number_telf,
number_mobile,
number_fax,
image_principal,
textarea_description,
text_latitud,
text_longitud,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
POSITION
)
SELECT 
id,
1,
dynamic_agencia,
text_title,
text_email,
text_website,
text_facebook,
text_twitter,
text_instagram,
text_pinterest,
text_google_plus,
number_telf,
number_mobile,
number_fax,
image_principal,
textarea_description,
text_latitud,
text_longitud,
text_page_title,
auto_slug,
text_slug,
text_meta_keywords,
text_meta_robots,
text_meta_description,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
POSITION
FROM pisosenm_inmobiliaria.dynamic_agente_inmobiliario;


# SELECT * FROM dynamic_agencia;

INSERT INTO dynamic_agencia 
(
id,
LANGUAGE,
text_title,
number_telf,
number_mobile,
number_fax,
text_direccion,
text_email,
text_website,
text_facebook,
text_twitter,
text_instagram,
text_pinterest,
text_google_plus,
text_body_title,
textarea_description,
text_latitud,
text_longitud,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
POSITION
)

SELECT 
id,
1,
text_title,
number_telf,
number_mobile,
number_fax,
text_direccion,
text_email,
text_website,
text_facebook,
text_twitter,
text_instagram,
text_pinterest,
text_google_plus,
text_body_title,
textarea_description,
text_latitud,
text_longitud,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
POSITION
FROM pisosenm_inmobiliaria.dynamic_agencia;



SELECT * FROM dynamic_advantages;


INSERT INTO dynamic_advantages 
(
id,
language,
text_title,
textarea_description,
text_icon,
checkbox_destacada_home,
checkbox_destacada_alojamiento,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
position
)
SELECT 
id,
1,
text_title,
textarea_description,
text_icon,
checkbox_destacada_home,
checkbox_destacada_alojamiento,
text_title,
text_title,
text_title,
text_title,
text_title,
text_title,
text_title,
text_title,
status,
position
FROM pisosenm_inmobiliaria.dynamic_advantages;



id
text_title
textarea_description
text_icon
checkbox_destacada_home
checkbox_destacada_alojamiento
text_page_title
text_slug
auto_slug
text_meta_keywords
text_meta_description
text_meta_robots
textarea_scripts_header
textarea_scripts_body
status
position


id
language
text_title
textarea_description
text_icon
checkbox_destacada_home
checkbox_destacada_alojamiento
status
position



DROP TABLE dynamic_advantatges;

# ALTER TABLE dynamic_pages DROP KEY dynamicGalleryFranquiciaPrincipal_uniq;
# ALTER TABLE dynamic_pages DROP FOREIGN KEY FK_8702BC0E3BD8FA1E;
# SHOW CREATE TABLE dynamic_pages;


CREATE TABLE `dynamic_pages` (
  `id` int(11) NOT NULL COMMENT 'TÃ­tulo',
  `language` int(11) DEFAULT NULL COMMENT 'Id',
  `dynamic_gallery_franquicia_principal` int(11) NOT NULL,
  `text_title` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'TÃ­tulo Cabecera',
  `text_section` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nombre pÃ¡gina estÃ¡tica (sÃ³lo para tabla admin)',
  `text_subtitle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'SubtÃ­tulo Cabecera (mÃ¡x 100 carÃ¡cteres)',
  `text_body_title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'TÃ­tulo de la pÃ¡gina (H1)',
  `textarea_description` text COLLATE utf8mb4_unicode_ci COMMENT 'Contenido de la pÃ¡gina',
  `text_dtitle_1` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'TÃ­tulo 1',
  `text_dsubtitle_1` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'SubtÃ­tulo 1',
  `dynamic_gallery_1` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Imagen 1',
  `textarea_ddescription_1` mediumtext COLLATE utf8mb4_unicode_ci COMMENT 'DescripciÃ³n 1',
  `text_dtitle_2` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'TÃ­tulo 2',
  `text_dsubtitle_2` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'SubtÃ­tulo 2',
  `dynamic_gallery_2` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Imagen 2',
  `textarea_ddescription_2` mediumtext COLLATE utf8mb4_unicode_ci COMMENT 'DescripciÃ³n 2',
  `text_dtitle_3` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'TÃ­tulo 3',
  `text_dsubtitle_3` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'SubtÃ­tulo 3',
  `dynamic_gallery_3` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Imagen 3',
  `textarea_ddescription_3` text COLLATE utf8mb4_unicode_ci COMMENT 'DescripciÃ³n 3',
  `textarea_description_inferior` text COLLATE utf8mb4_unicode_ci COMMENT 'Contenido de la pÃ¡gina Inferior',
  `textarea_description_home` text COLLATE utf8mb4_unicode_ci COMMENT 'DescripciÃ³n 2',
  `text_page_title` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'TÃ­tulo de la pestaÃ±a de la pÃ¡gina',
  `text_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Url manual (vacÃ­o usarÃ¡ auto slug)',
  `auto_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Meta Keywords (mÃ¡x 255 carÃ¡cteres)',
  `text_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COLLATE utf8mb4_unicode_ci COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COLLATE utf8mb4_unicode_ci COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;))',
  `status` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Status',
  `position` int(11) DEFAULT NULL COMMENT 'PosiciÃ³n',
  PRIMARY KEY (`id`),
  KEY `IDX_8702BC0ED4DB71B5` (`language`),
  KEY `IDX_8702BC0E3BD8FA1E` (`dynamic_gallery_franquicia_principal`),
  CONSTRAINT `FK_8702BC0E3BD8FA1E` FOREIGN KEY (`dynamic_gallery_franquicia_principal`) REFERENCES `dynamic_gallery_franquicia_principal` (`id`),
  CONSTRAINT `FK_8702BC0ED4DB71B5` FOREIGN KEY (`language`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci


CREATE TABLE `dynamic_pages` (
  `id` int(11) NOT NULL COMMENT 'TÃ­tulo',
  `language` int(11) DEFAULT NULL COMMENT 'Id',
  `dynamic_gallery_franquicia_principal` int(11) DEFAULT NULL,
  `text_title` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'TÃ­tulo Cabecera',
  `text_section` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nombre pÃ¡gina estÃ¡tica (sÃ³lo para tabla admin)',
  `text_subtitle` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'SubtÃ­tulo Cabecera (mÃ¡x 100 carÃ¡cteres)',
  `text_body_title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'TÃ­tulo de la pÃ¡gina (H1)',
  `textarea_description` text COLLATE utf8mb4_unicode_ci COMMENT 'Contenido de la pÃ¡gina',
  `text_dtitle_1` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'TÃ­tulo 1',
  `text_dsubtitle_1` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'SubtÃ­tulo 1',
  `dynamic_gallery_1` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Imagen 1',
  `textarea_ddescription_1` mediumtext COLLATE utf8mb4_unicode_ci COMMENT 'DescripciÃ³n 1',
  `text_dtitle_2` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'TÃ­tulo 2',
  `text_dsubtitle_2` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'SubtÃ­tulo 2',
  `dynamic_gallery_2` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Imagen 2',
  `textarea_ddescription_2` mediumtext COLLATE utf8mb4_unicode_ci COMMENT 'DescripciÃ³n 2',
  `text_dtitle_3` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'TÃ­tulo 3',
  `text_dsubtitle_3` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'SubtÃ­tulo 3',
  `dynamic_gallery_3` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Imagen 3',
  `textarea_ddescription_3` text COLLATE utf8mb4_unicode_ci COMMENT 'DescripciÃ³n 3',
  `textarea_description_inferior` text COLLATE utf8mb4_unicode_ci COMMENT 'Contenido de la pÃ¡gina Inferior',
  `textarea_description_home` text COLLATE utf8mb4_unicode_ci COMMENT 'DescripciÃ³n 2',
  `text_page_title` varchar(75) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'TÃ­tulo de la pestaÃ±a de la pÃ¡gina',
  `text_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Url manual (vacÃ­o usarÃ¡ auto slug)',
  `auto_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Meta Keywords (mÃ¡x 255 carÃ¡cteres)',
  `text_meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COLLATE utf8mb4_unicode_ci COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COLLATE utf8mb4_unicode_ci COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;))',
  `status` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Status',
  `position` int(11) DEFAULT NULL COMMENT 'PosiciÃ³n',
  PRIMARY KEY (`id`),
  KEY `IDX_8702BC0ED4DB71B5` (`language`),
  KEY `dynamicGalleryFranquiciaPrincipal_uniq` (`dynamic_gallery_franquicia_principal`) USING BTREE,
  CONSTRAINT `FK_8702BC0E3BD8FA1E` FOREIGN KEY (`dynamic_gallery_franquicia_principal`) REFERENCES `dynamic_gallery_franquicia_principal` (`id`),
  CONSTRAINT `FK_8702BC0ED4DB71B5` FOREIGN KEY (`language`) REFERENCES `languages` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci


ALTER TABLE dynamic_pages DROP FOREIGN KEY "FK_8702BC0E3BD8FA1E3BD8FA1E";


SELECT * FROM dynamic_gallery_franquicia_principal;
SELECT * FROM dynamic_pages;


SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE dynamic_pages DROP FOREIGN KEY FK_8702BC0E3BD8FA1E3BD8FA1E;

SELECT * FROM dynamic_gallery_franquicia_principal;
SELECT * FROM dynamic_pages;
	

SELECT * FROM dynamic_advantages;
INSERT INTO dynamic_advantages 
(
id,
text_title,
textarea_description,
text_icon,
checkbox_destacada_home,
checkbox_destacada_alojamiento,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
status,
position
)
SELECT 
id,
LANGUAGE,
text_title,
textarea_description,
text_icon,
checkbox_destacada_home,
checkbox_destacada_alojamiento,
STATUS,
POSITION

id
language
text_title
textarea_description
text_icon
checkbox_destacada_home
checkbox_destacada_alojamiento
status
position


SELECT * FROM dynamic_accion;

INSERT INTO dynamic_accion
(
id,
LANGUAGE,
text_title,
textarea_description,
text_body_title_no_res,
textarea_description_no_res,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
STATUS,
position
)
SELECT 
id,
1,
text_title,
textarea_description,
text_body_title_no_res,
textarea_description_no_res,
text_page_title,
text_slug,
auto_slug,
text_meta_keywords,
text_meta_description,
text_meta_robots,
textarea_scripts_header,
textarea_scripts_body,
status,
position
FROM pisosenm_inmobiliaria.dynamic_accion;



id
language
text_title
textarea_description
text_body_title_no_res
textarea_description_no_res
text_page_title
text_slug
auto_slug
text_meta_keywords
text_meta_description
text_meta_robots
textarea_scripts_header
textarea_scripts_body
status
position

SELECT * FROM contacto;

INSERT INTO contacto
(
	id,
	text_title,
	text_email,
	number_phone,
	text_subject,
	textarea_message
)
SELECT id , NAME ,  email , phone , SUBJECT , form_message
FROM pisosenm_inmobiliaria.contacto;


SELECT * FROM avantio_inmovilla;

INSERT INTO avantio_inmovilla
(
id, 
language, 
text_tipo_bano, 
text_tipo_cocina, 
text_tipo_fachada, 
text_carpinteria, 
text_carpinteria_exterior, 
text_tipo_calefaccion, 
text_tipo_exterior, 
text_visitas, 
text_aguacaliente, 
text_tipo_suelo, 
text_superficie_terraza, 
text_tipo_postigo, 
number_superficie_util, 
number_superficie_parcela, 
number_superficie_construida, 
number_habdobles, 
number_habitaciones, 
number_numero_plantas, 
number_numero_planta, 
number_banyos, 
number_aseos, 
number_gastos_comunidad, 
number_metros_comedor, 
number_metros_cocina, 
number_distancia_del_mar, 
number_metros_terraza, 
checkbox_agua, 
checkbox_opcioncompra, 
checkbox_salon, 
checkbox_airecentral, 
checkbox_aire_acondicionado, 
checkbox_alarma, 
checkbox_alarma_incendio, 
checkbox_alarma_robo, 
checkbox_adaptado_minusvalido, 
checkbox_armarios_empotrados, 
checkbox_caja_fuerte, 
checkbox_calefaccion_central, 
checkbox_chimenea, 
checkbox_cocina_independiente, 
checkbox_gas_ciudad, 
checkbox_gimnasio, 
checkbox_habitacion_juegos, 
checkbox_hidromasaje, 
checkbox_jacuzzi, 
checkbox_linea_teleronica, 
checkbox_muebles, 
checkbox_ojo_de_buey, 
checkbox_tv, 
checkbox_balcon, 
checkbox_barbacoa, 
checkbox_terraza_acristalada, 
checkbox_comunidad_incluida, 
checkbox_ascensor, 
checkbox_bar, 
checkbox_deposito_agua, 
checkbox_descalcificador, 
checkbox_despensa, 
checkbox_diafano, 
checkbox_esquina, 
checkbox_galeria, 
checkbox_garaje_plazas, 
checkbox_garaje_doble, 
checkbox_garaje_incluido, 
checkbox_lavanderia, 
checkbox_preinstalacion_aire_acondicionado, 
checkbox_luminoso, 
checkbox_luz, 
checkbox_piscina_comunitaria, 
checkbox_piscina_de_propiedad, 
checkbox_primera_linea_de_mar, 
checkbox_parking, 
checkbox_patio, 
checkbox_puerta_blindada, 
checkbox_sauna, 
checkbox_solarium, 
checkbox_sotano, 
checkbox_trastero, 
checkbox_satelite, 
checkbox_urbanizacion, 
checkbox_vestuarios, 
checkbox_videoportero, 
checkbox_energialetra, 
checkbox_energiarecibido, 
checkbox_autobuses, 
checkbox_colegios, 
checkbox_vistas, 
checkbox_zonas_infantiles, 
checkbox_terraza, 
checkbox_calefaccion, 
checkbox_puertas_automatico, 
checkbox_vistas_despejadas, 
checkbox_arboles, 
checkbox_centros_comerciales, 
checkbox_vallado, 
checkbox_zona_montana, 
checkbox_jardin, 
checkbox_zonas_verdes, 
checkbox_bomba_frio_y_calor, 
checkbox_tren, 
checkbox_aprt_separado, 
checkbox_buhardilla, 
checkbox_hospitales, 
checkbox_acceso_pmr, 
checkbox_parking_opcional, 
checkbox_aire_acondicionado_centralizado, 
checkbox_todo_exterior, 
checkbox_garaje_opcional, 
checkbox_mirador, 
checkbox_montacargas, 
checkbox_parabolica, 
checkbox_pergola, 
checkbox_linia_telefonica, 
checkbox_electrodomesticos, 
checkbox_zona_de_costa, 
checkbox_golf, 
checkbox_trifasica, 
checkbox_riego_automatico, 
checkbox_tranvia, 
checkbox_hilo_musical, 
checkbox_altillo, 
checkbox_puertas_automaticas, 
checkbox_video_portero
)
SELECT 
id, 
1, 
text_tipo_bano, 
text_tipo_cocina, 
text_tipo_fachada, 
text_carpinteria, 
text_carpinteria_exterior, 
text_tipo_calefaccion, 
text_tipo_exterior, 
text_vistas, 
text_aguacaliente, 
text_tipo_suelo, 
text_superficie_terraza, 
text_tipo_postigo, 
number_superficie_util, 
number_superficie_parcela, 
number_superficie_construida, 
number_habdobles, 
number_habitaciones, 
number_numero_plantas, 
number_numero_planta, 
number_banyos, 
number_aseos, 
number_gastos_comunidad, 
number_metros_comedor, 
number_metros_cocina, 
number_distancia_del_mar, 
number_metros_terraza, 
checkbox_agua, 
checkbox_opcioncompra, 
checkbox_salon, 
checkbox_airecentral, 
checkbox_aire_acondicionado, 
checkbox_alarma, 
checkbox_alarma_incendio, 
checkbox_alarma_robo, 
checkbox_adaptado_minusvalido, 
checkbox_armarios_empotrados, 
checkbox_caja_fuerte, 
checkbox_calefaccion_central, 
checkbox_chimenea, 
checkbox_cocina_independiente, 
checkbox_gas_ciudad, 
checkbox_gimnasio, 
checkbox_habitacion_juegos, 
checkbox_hidromasaje, 
checkbox_jacuzzi, 
checkbox_linea_teleronica, 
checkbox_muebles, 
checkbox_ojo_de_buey, 
checkbox_tv, 
checkbox_balcon, 
checkbox_barbacoa, 
checkbox_terraza_acristalada, 
checkbox_comunidad_incluida, 
checkbox_ascensor, 
checkbox_bar, 
checkbox_deposito_agua, 
checkbox_descalcificador, 
checkbox_despensa, 
checkbox_diafano, 
checkbox_esquina, 
checkbox_galeria, 
checkbox_garaje_plazas, 
checkbox_garaje_doble, 
checkbox_garaje_incluido, 
checkbox_lavanderia, 
checkbox_preinstalacion_aire_acondicionado, 
checkbox_luminoso, 
checkbox_luz, 
checkbox_piscina_comunitaria, 
checkbox_piscina_de_propiedad, 
checkbox_primera_linea_de_mar, 
checkbox_parking, 
checkbox_patio, 
checkbox_puerta_blindada, 
checkbox_sauna, 
checkbox_solarium, 
checkbox_sotano, 
checkbox_trastero, 
checkbox_satelite, 
checkbox_urbanizacion, 
checkbox_vestuarios, 
checkbox_videoportero, 
checkbox_energialetra, 
checkbox_energiarecibido, 
checkbox_autobuses, 
checkbox_colegios, 
checkbox_vistas, 
checkbox_zonas_infantiles, 
checkbox_terraza, 
checkbox_calefaccion, 
checkbox_puertas_automatico, 
checkbox_vistas_despejadas, 
checkbox_arboles, 
checkbox_centros_comerciales, 
checkbox_vallado, 
checkbox_zona_montana, 
checkbox_jardin, 
checkbox_zonas_verdes, 
checkbox_bomba_frio_y_calor, 
checkbox_tren, 
checkbox_aprt_separado, 
checkbox_buhardilla, 
checkbox_hospitales, 
checkbox_acceso_pmr, 
checkbox_parking_opcional, 
checkbox_aire_acondicionado_centralizado, 
checkbox_todo_exterior, 
checkbox_garaje_opcional, 
checkbox_mirador, 
checkbox_montacargas, 
checkbox_parabolica, 
checkbox_pergola, 
checkbox_linia_telefonica, 
checkbox_electrodomesticos, 
checkbox_zona_de_costa, 
checkbox_golf, 
checkbox_trifasica, 
checkbox_riego_automatico, 
checkbox_tranvia, 
checkbox_hilo_musical, 
checkbox_altillo, 
checkbox_puertas_automaticas, 
checkbox_video_portero
FROM pisosenm_inmobiliaria.avantio_inmovilla; 


SELECT * FROM automatizacion;

INSERT INTO automatizacion (id , text_title, fecha , language , users)
SELECT id , nombre , fecha , 1 , id_usuario  
FROM pisosenm_inmobiliaria.automatizacion; 

DELETE FROM automatizacion WHERE id <> -1;

SELECT * FROM users; 
SELECT * FROM automatizacion;

INSERT INTO automatizacion (id , text_title, fecha , language , users)
SELECT id , nombre , fecha , 1 , id_usuario  
FROM pisosenm_inmobiliaria.automatizacion; 


# COLUMN_NAME
'id'
'text_title'
'fecha'
'language'
'users'

# COLUMN_NAME
'id'
'id_usuario'
'language'
'nombre'
'fecha'



# COLUMN_NAME
'id'
'username'
'password'
'email'
'grupo'
'status'
'roleId'

# COLUMN_NAME
'id'
'username'
'password'
'email'
'grupo'
'status'
'roleId'




SELECT * FROM users;
SELECT * FROM roles;


INSERT INTO users (id , rolId, username , password , email , grupo , status , roles)
SELECT id , roleId , username , password , email  , grupo  , STATUS , grupo  
FROM pisosenm_inmobiliaria.users; 

# COLUMN_NAME
'id'
'rolId'
'username'
'password'
'email'
'grupo'
'status'
'roles'


# COLUMN_NAME
'id'
'username'
'password'
'email'
'grupo'
'status'
'roleId'


INSERT INTO roles (id , role , password , email , grupo , status , roles , rolId)
SELECT id , id , 1 , dynamic_geolocality  , text_title  , STATUS , POSITION 
FROM pisosenm_inmobiliaria.dynamic_geodistrict WHERE id > 9 AND id <> 13; 

SELECT * FROM dynamic_accion;
SELECT * FROM dynamic_taxonomy_city;


SELECT * FROM dynamic_geocountry;
SELECT * FROM dynamic_georegion;
SELECT * FROM dynamic_geocity;
SELECT * FROM dynamic_geolocality;
SELECT * FROM dynamic_geodistrict;

INSERT INTO dynamic_geodistrict (id , id_district , language , dynamic_geolocality , text_title , STATUS , POSITION)
SELECT id , id , 1 , dynamic_geolocality  , text_title  , STATUS , POSITION 
FROM pisosenm_inmobiliaria.dynamic_geodistrict WHERE id > 9 AND id <> 13; 


# COLUMN_NAME
'id'
'id_district'
'language'
'dynamic_geolocality'
'text_title'
'status'
'position'


# COLUMN_NAME
'id'
'language'
'text_title'
'text_postalcode'
'dynamic_geolocality'
'status'
'position'


INSERT INTO dynamic_geolocality (id , id_locality , language , dynamic_geocity , text_title , STATUS , POSITION)
SELECT id , id , 1 , 1,  text_title , STATUS, POSITION FROM pisosenm_inmobiliaria.dynamic_geolocality;

SELECT * FROM dynamic_geolocality;

id
id_locality
language
dynamic_geocity
text_title
status
position


id
language
text_title
dynamic_geocity
number_release
status
position
text_geo_latitud
text_geo_longitud
status_realstate

DELETE FROM dynamic_geodistrict WHERE id <> -1;
DELETE FROM dynamic_geolocality WHERE id <> -1;

# geo
SELECT * FROM dynamic_geocountry;
SELECT * FROM dynamic_georegion;
SELECT * FROM dynamic_geolocality;
SELECT * FROM dynamic_geocity;
SELECT * FROM dynamic_geodistrict;


INSERT INTO dynamic_geocountry (id , id_country , LANGUAGE , text_title , STATUS , POSITION)
SELECT 1, id , "es" , text_title , STATUS, POSITION FROM pisosenm_inmobiliaria.dynamic_geocountry;


'id'
'language'
'text_title'
'status'
'position'

SELECT * FROM dynamic_pages;
SELECT * FROM dynamic_gallery_franquicia_principal;
SELECT * FROM dynamic_pages;

INSERT INTO dynamic_pages ( 
id,language, dynamic_gallery_franquicia_principal, text_title, text_section, text_subtitle, text_body_title, textarea_description, 
text_dtitle_1, text_dsubtitle_1, dynamic_gallery_1, textarea_ddescription_1, text_dtitle_2, text_dsubtitle_2, dynamic_gallery_2, textarea_ddescription_2 , 
text_dtitle_3, text_dsubtitle_3, dynamic_gallery_3, textarea_ddescription_3, textarea_description_inferior , textarea_description_home, text_page_title, text_slug, 
auto_slug, text_meta_keywords, text_meta_description, text_meta_robots, textarea_scripts_header, textarea_scripts_body, STATUS , POSITION)
SELECT  
id , 1, 1  , text_title , text_section  , text_subtitle , text_body_title ,  
textarea_description  , text_dtitle_1  , text_dsubtitle_1  , dynamic_gallery_1  , textarea_ddescription_1  , text_dtitle_2 , 
text_dsubtitle_2  , dynamic_gallery_2  , textarea_ddescription_2  , text_dtitle_3  , text_dsubtitle_3  , dynamic_gallery_3 ,
textarea_ddescription_3  , textarea_description_inferior  , textarea_description_home  , text_page_title  , text_slug ,
auto_slug  , text_meta_keywords  , text_meta_description , text_meta_robots  , textarea_scripts_header  , textarea_scripts_body, 
status  , position from pisosenm_inmobiliaria_siete.dynamic_pages;

INSERT INTO dynamic_gallery_franquicia_principal(id , zipstatus , image_principal , text_title  , text_alt  , imagethn_principal , text_importada , STATUS , position)
VALUES 
(1, "zip" , "imagen.jpg", "imagen title" , "imagen alt" , "imagenth_principal.jpg" , "text portada" , "ACTIVED" , 1);

id int(11) PK 
zipstatus varchar(128) 
image_principal varchar(255) 
text_title varchar(75) 
text_alt varchar(75) 
imagethn_principal varchar(255) 
text_importada varchar(255) 
status varchar(128) 
position int(11)

SELECT * FROM languages;

UPDATE languages SET text_locale = "es_ES" WHERE id = 1;
UPDATE languages SET text_locale = "en_EN" WHERE id = 2;

SELECT * FROM languages;

SELECT * FROM languages;

INSERT INTO languages(`id` , `language` , `text_name`,`number_actived`,`number_default`,`text_lang`,`status`,`position`,`text_locale`)
VALUES
(1,"es","es","EspaÃ±ol",1,1,"Spanish","ACTIVED",1,"es_ES"),
(2,"en","en","InglÃ©s",1,0,"English","ACTIVED",2,"en_EN");


INSERT INTO languages ()
INSERT INTO dynamic_pages SELECT * from pisosenm_inmobiliaria_siete.dynamic_pages;

INSERT INTO automatizacion (id, text_title , fecha) VALUES (4 , "titulo prueba" , "2022-11-21");
SELECT * FROM automatizacion;

INSERT INTO automatizacion (id, text_title) VALUES (3 , "2022-11-21");

INSERT INTO automatizacion (id, text_title) 
VALUES 
(NULL, "prueba uno"),
(NULL, "prueba dos");


SELECT * FROM automatizacion;


DROP TABLE automaticacion;
	
# SELECT * FROM automatizacion;
SELECT * FROM dynamic_accion;
INSERT INTO dynamic_accion (id, text_title) VALUES (NULL, "prueba");

SELECT * FROM avantio_booking_payment 
WHERE booking_code = 15955931;

SELECT * FROM avantio_booking_amount 
WHERE booking_code = 15955931;

SELECT * 
FROM avantio_client
WHERE NAME LIKE "pablo%" AND surname LIKE "suarez%";
# CREATE DATABASE phpandfr_portvil_tres CHARACTER SET utf8 COLLATE UTF8_GENERAL_CI;
*/
