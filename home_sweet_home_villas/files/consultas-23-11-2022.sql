USE pisosenm_inmobiliaria_siete_pruebas;


SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'pisosenm_inmobiliaria_siete_pruebas' 
AND TABLE_NAME = 'avantio_inmovilla';
  


/*
SELECT * 
FROM pisosenm_inmobiliaria_siete_pruebas.dynamic_geocity;

SELECT * 
FROM pisosenm_inmobiliaria_siete_pruebas.dynamic_geolocality AS geolocality
JOIN pisosenm_inmobiliaria_siete_pruebas.dynamic_geocity AS geocity ON geocity.id = geolocality.dynamic_geocity
WHERE geocity.id = 10;

INSERT INTO pisosenm_inmobiliaria_siete_pruebas.dynamic_taxonomy_group 
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
	POSITION
) 

	SELECT id ,1 , text_title, text_title_plural , text_subtitle , text_body_title , textarea_description ,  text_page_title ,  text_slug ,auto_slug , text_meta_keywords , 
	text_meta_description , text_meta_robots , textarea_scripts_header ,  textarea_scripts_body , STATUS , POSITION FROM pisosenm_inmobiliaria.dynamic_taxonomy_group; 

	
	(
	SELECT id,1 FROM pisosenm_inmobiliaria.dynamic_taxonomy_group
	),
	1,
	(
	SELECT text_title FROM pisosenm_inmobiliaria.dynamic_taxonomy_group
	),
	(
	SELECT text_title_plural FROM pisosenm_inmobiliaria.dynamic_taxonomy_group
	),
	(
	SELECT text_subtitle FROM pisosenm_inmobiliaria.dynamic_taxonomy_group	
	),
	(
	SELECT text_body_title FROM pisosenm_inmobiliaria.dynamic_taxonomy_group	
	),
	(
	SELECT textarea_description FROM pisosenm_inmobiliaria.dynamic_taxonomy_group
	),
	(
	SELECT text_page_title FROM pisosenm_inmobiliaria.dynamic_taxonomy_group	
	),
	(
	SELECT text_slug FROM pisosenm_inmobiliaria.dynamic_taxonomy_group	
	),
	(
	SELECT auto_slug FROM pisosenm_inmobiliaria.dynamic_taxonomy_group	
	),
	(
	SELECT text_meta_keywords FROM pisosenm_inmobiliaria.dynamic_taxonomy_group	
	),
	(
	SELECT text_meta_description FROM pisosenm_inmobiliaria.dynamic_taxonomy_group	
	),
	(
	SELECT text_meta_robots FROM pisosenm_inmobiliaria.dynamic_taxonomy_group	
	),
	(
	SELECT textarea_scripts_header FROM pisosenm_inmobiliaria.dynamic_taxonomy_group	
	),
	(
	SELECT textarea_scripts_body FROM pisosenm_inmobiliaria.dynamic_taxonomy_group	
	),
	(
	SELECT status FROM pisosenm_inmobiliaria.dynamic_taxonomy_group	
	),
	(
	SELECT position FROM pisosenm_inmobiliaria.dynamic_taxonomy_group
	)
	*/



/*
# pissosenm_inmobiliaria
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


# pisosenm_inmobiliaria_site_pruebas
COLUMN_NAME
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
*/


USE information_schema;

SELECT COLUMN_NAME FROM COLUMNS
WHERE 
TABLE_NAME = "dynamic_taxonomy_group"
AND table_schema = "pisosenm_inmobiliaria";


SELECT COLUMN_NAME FROM COLUMNS
WHERE 
TABLE_NAME = "dynamic_taxonomy_group"
AND table_schema = "pisosenm_inmobiliaria_siete_pruebas";

/*
SELECT * 
FROM SCHEMATA
WHERE SCHEMA_NAME = "pisosenm_inmobiliaria";
 

SHOW TABLES;
DESCRIBE COLUMNS;
DESCRIBE SCHEMATA;
# SHOW FULL COLUMNS(COLUMNS);


SELECT * 
FROM information_schema.columns
WHERE information_schema.table_schema = "dynamic_taxonomy_group"
AND information_schema.SCHEMATA = "pisosenm_inmobiliaria";



USE pisosenm_inmobiliaria_siete_pruebas;

SELECT * FROM dynamic_testimonials;
SELECT * FROM dynamic_gallery_franquicia_principal;


SELECT * FROM dynamic_accion;
SELECT * FROM dynamic_taxonomy_city;

USE tiendapi_inmobiliaria_dos;
SELECT * FROM wp_options;
SELECT * FROM wp_posts WHERE post_type = "estate_property";

USE homeswe1_web_dos;

SELECT * FROM dynamic_services WHERE LANGUAGE = "es" ORDER BY text_title asc;
SELECT * FROM avantio_accomodations where id = 380831 AND LANGUAGE = "es";

SELECT * FROM dynamic_services 
WHERE LANGUAGE = "es" AND text_title LIKE "pisci%"
ORDER BY text_title asc;

SELECT * FROM avantio_accomodations where id = 380831 AND LANGUAGE = "es";


# DELETE FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE id = 104;

SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE language = "es";
SELECT * FROM dynamic_taxonomy_geographic_language_carac WHERE language = "es";

SELECT * 
FROM dynamic_taxonomy_geographic_language_extra
WHERE LANGUAGE = "es";

SELECT * 
FROM dynamic_taxonomy_geographic_language_carac
WHERE LANGUAGE = "es";

SELECT * 
FROM dynamic_taxonomy_geographic_language_fields_customitzation 
WHERE LANGUAGE = "es";


# Can Pratts
SELECT * FROM avantio_accomodations WHERE dynamic_geocity = 7 AND LANGUAGE = "es"
UNION 
SELECT * FROM hshv_avantio_accomodations WHERE dynamic_geocity = 7 AND LANGUAGE = "es";  

SELECT a.id , a.id_avantio 
FROM avantio_accomodations a 
LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity 
LEFT JOIN avantio_rates as r on r.accommodation_id = a.id 
LEFT JOIN avantio_accomodations_extras as aae on aae.avantio_accomodations = a.id 
LEFT JOIN avantio_accomodations_locations l ON a.id = l.avantio_accomodations 
JOIN dynamic_rooms as ds ON ds.id = a.id 
WHERE ds.language = 'es' 
AND a.language = 'es' 
AND a.number_banyos_banyera + a.number_banyos_ducha >= 0 
AND a.number_habitaciones >= 0 AND a.dynamic_geocity = '7' 
AND a.number_capacidad_maxima > 4 AND a.id NOT IN ( 
SELECT DISTINCT(room_id) FROM mrbs_entry WHERE (checkin <= '1970-01-01' AND checkout >= '1970-01-01') OR (checkin <= '1970-01-01' AND checkout >= '1970-01-01') OR (checkin >= '1970-01-01' AND checkout <= '1970-01-01') ) UNION SELECT b.id , b.id_avantio FROM hshv_avantio_accomodations b LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity LEFT JOIN hshv_avantio_rates as rh on rh.accommodation_id = b.id LEFT JOIN hshv_avantio_accomodations_extras as haae on haae.avantio_accomodations = b.id LEFT JOIN hshv_avantio_accomodations_locations hl ON b.id = hl.avantio_accomodations JOIN hshv_dynamic_rooms as hds ON hds.id = b.id WHERE hds.language = 'es' AND b.language = 'es' AND b.number_banyos_banyera + b.number_banyos_ducha >= 0 AND b.number_habitaciones >= 0 AND b.dynamic_geocity='7' AND b.number_capacidad_maxima > 4 AND b.id NOT IN ( SELECT DISTINCT(room_id) FROM mrbs_entry WHERE (checkin <= '1970-01-01' AND checkout >= '1970-01-01') OR (checkin <= '1970-01-01' AND checkout >= '1970-01-01') OR (checkin >= '1970-01-01' AND checkout <= '1970-01-01') ) ORDER by id ASC


SELECT * FROM dynamic_geocity WHERE LANGUAGE = "es";

SELECT * FROM avantio_accomodations WHERE LANGUAGE = "es";

SELECT * 
FROM avantio_accomodations AS aa WHERE aa.LANGUAGE = "es" and aa.dynamic_geocity = 7 
UNION
SELECT * FROM hshv_avantio_accomodations as haa WHERE haa.LANGUAGE = "es" and haa.dynamic_geocity = 7;


SELECT * 
FROM avantio_accomodations AS aa WHERE aa.LANGUAGE = "es" and aa.dynamic_geocity = 7 AND aa.STATUS = "ACTIVED" 
UNION
SELECT * FROM hshv_avantio_accomodations as haa WHERE haa.LANGUAGE = "es" and haa.dynamic_geocity = 7 AND haa.STATUS = "ACTIVED";


SELECT * 
FROM avantio_accomodations AS aa WHERE aa.LANGUAGE = "es" and aa.dynamic_geocity = 7 AND a.id NOT IN
(
)
UNION
SELECT * FROM hshv_avantio_accomodations as haa WHERE haa.LANGUAGE = "es" and haa.dynamic_geocity = 7;


$sql.= " ( ";
$sql.= " SELECT DISTINCT(room_id) ";
$sql.= " FROM mrbs_entry ";
$sql.= " WHERE ";
$sql.= " (checkin <= '".$fecha_ini."' AND  checkout >= '".$fecha_salida."') OR ";
$sql.= " (checkin <= '".$fecha_salida."' AND checkout >= '".$fecha_salida."') OR ";
$sql.= " (checkin >= '".$fecha_ini."' AND checkout <= '".$fecha_salida."') ";
$sql.= " ) ";


SELECT * FROM dynamic_geocity WHERE LANGUAGE = "es";  

SELECT count(*) as total 
FROM 
( 
SELECT DISTINCT(a.id) 
FROM avantio_accomodations a 
LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity 
LEFT JOIN avantio_rates as r on r.accommodation_id = a.id 
LEFT JOIN avantio_accomodations_extras as aae on aae.avantio_accomodations = a.id 
LEFT JOIN avantio_accomodations_locations l ON a.id = l.avantio_accomodations 
WHERE a.language = 'es' AND a.status = 'ACTIVED' AND a.id NOT IN 
( 
SELECT DISTINCT(room_id) 
FROM mrbs_entry 
WHERE (checkin <= '2022-11-22' AND checkout >= '2022-11-29') 
OR 
(checkin <= '2022-11-29' AND checkout >= '2022-11-29') 
OR (checkin >= '2022-11-22' AND checkout <= '2022-11-29') 
) 
UNION 
SELECT DISTINCT(b.id) 
FROM hshv_avantio_accomodations b 
LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity 
LEFT JOIN hshv_avantio_rates as rh on rh.accommodation_id = b.id 
LEFT JOIN hshv_avantio_accomodations_extras as haae on haae.avantio_accomodations = b.id 
LEFT JOIN hshv_avantio_accomodations_locations hl ON b.id = hl.avantio_accomodations 
WHERE b.language = 'es' AND b.status = 'ACTIVED' AND b.id 
NOT IN 
( 
SELECT DISTINCT(room_id) 
FROM mrbs_entry 
WHERE (checkin <= '2022-11-22' AND checkout >= '2022-11-29') 
OR 
(checkin <= '2022-11-29' AND checkout >= '2022-11-29') 
OR 
(checkin >= '2022-11-22' AND checkout <= '2022-11-29') 
) 
) AS X ;



SELECT COUNT(*) AS total 
FROM 
( 
	select id AS id 
	from avantio_accomodations 
	WHERE FIND_IN_SET(7,multiple_taxonomy_geographic_language_extra) 
	AND LANGUAGE = 'es' 
	AND status = 'ACTIVED' 
UNION ALL 
	select id AS id 
	from hshv_avantio_accomodations 
   WHERE FIND_IN_SET(7,multiple_taxonomy_geographic_language_extra)
	AND LANGUAGE = 'es' 
	AND status = 'ACTIVED' 
	ORDER by id ASC 
) AS x;


SELECT * FROM avantio_accomodations WHERE language = "es";

SELECT * FROM avantio_accomodations WHERE language = "es" AND multiple_taxonomy_geographic_language_extra = 7;

SELECT * FROM dynamic_taxonomy_geographic_language_extra WHERE language = "es";
SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation;

SELECT * FROM avantio_accomodations WHERE language = "es" AND multiple_taxonomy_geographic_language_extra = 7
UNION ALL 
SELECT * FROM hshv_avantio_accomodations WHERE language = "es" AND multiple_taxonomy_geographic_language_extra = 7;

# SELECT * FROM 
# DELETE FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE id = 83;
# SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation;

SELECT * FROM dynamic_regiones_menu;
SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE LANGUAGE = "en";
SELECT * FROM avantio_accomodations WHERE LANGUAGE = "es" AND multiple_taxonomy_geographic_language_extra IN(3) AND STATUS = "ACTIVED";
SELECT * FROM dynamic_taxonomy_geographic_language_extra WHERE LANGUAGE = "es";
SELECT * FROM dynamic_taxonomy_geographic_language_carac WHERE LANGUAGE = "es";
SELECT * FROM dynamic_colecciones_home;
ALTER TABLE dynamic_colecciones_home ADD COLUMN checkbox_home CHAR(3) COMMENT "destacado home";

SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE LANGUAGE = "es";
SELECT * FROM dynamic_taxonomy_geographic_language_extra WHERE LANGUAGE = "es";
SELECT * FROM dynamic_taxonomy_geographic_language_carac WHERE LANGUAGE = "es";
# SELECT * FROM avantio_accomodations WHERE LANGUAGE = "es" AND multiple_taxonomy_geographic_language_extra IN(1,2,3,4,5,6,7);


SELECT * FROM avantio_accomodations WHERE LANGUAGE = "es" AND multiple_taxonomy_geographic_language_extra IN(3) AND STATUS = "ACTIVED";
SELECT * FROM hshv_avantio_accomodations WHERE LANGUAGE = "es" AND multiple_taxonomy_geographic_language_extra IN(3) and STATUS = "ACTIVED";
# SELECT * FROM avantio_accomodations WHERE LANGUAGE = "es" AND multiple_taxonomy_geographic_language_carac IN(1);

SELECT COUNT(*) AS total
FROM
(
select id AS id 
from avantio_accomodations 
WHERE multiple_taxonomy_geographic_language_extra IN(3) 
AND LANGUAGE = "es" AND status = 'ACTIVED'
UNION ALL
select id AS id 
from hshv_avantio_accomodations 
WHERE multiple_taxonomy_geographic_language_extra IN(3) 
AND LANGUAGE = "es" AND status = 'ACTIVED' ORDER by id asc
) AS x;


ALTER TABLE dynamic_taxonomy_geographic_language_fields_customitzation ADD column dynamic_url_extra_carac_parametro INT(11) COMMENT "Carac parametro";

SELECT * FROM avantio_accomodations WHERE LANGUAGE = "es";
SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE LANGUAGE = "es";
SELECT * FROM dynamic_taxonomy_geographic_language_extra WHERE LANGUAGE = "es";
SELECT * FROM dynamic_taxonomy_geographic_language_carac WHERE LANGUAGE = "es";


DELETE FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE id = 82; 
SELECT * FROM plantilla_room;
SELECT * FROM plantilla;
*/