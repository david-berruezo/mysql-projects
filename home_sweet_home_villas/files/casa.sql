USE homeswe1_web_dos;

SELECT * FROM dynamic_document_hshv;
SELECT * FROM dynamic_document;

/*
SELECT * FROM hshv_avantio_accomodations_extras;
SELECT * FROM avantio_accomodations_extras;

SELECT * 
FROM avantio_accomodations_pictures where 358797;

SELECT COUNT(uri_900x600) AS total 
FROM avantio_accomodations_pictures AS aap
WHERE aap.avantio_accomodations = 380831
GROUP BY uri_900x600;

SELECT uri_900x600 
FROM avantio_accomodations_pictures AS aap
WHERE aap.avantio_accomodations = 380831;

SELECT COUNT(*) AS "Numero de fotos" , aa.id , aa.text_title
FROM avantio_accomodations_pictures AS aap
JOIN avantio_accomodations AS aa ON aa.id = aap.avantio_accomodations AND aa.`language` = "es"
GROUP BY aap.avantio_accomodations;


SELECT * 
FROM avantio_accomodations_pictures AS aap
WHERE aap.avantio_accomodations = 380831;


INSERT INTO avantio_accomodations_pictures(id,avantio_accomodations,uri_900x600,uri_650x450,uri_99x66,id_avantio) VALUES (50,351396,"","","",1);
INSERT INTO avantio_accomodations_pictures(id,avantio_accomodations,uri_900x600,uri_650x450,uri_99x66,id_avantio) VALUES (50,352889,"","","",1);

SELECT * 
FROM avantio_accomodations_pictures AS aap
WHERE aap.avantio_accomodations IN(351396,352889)
ORDER BY aap.avantio_accomodations;

SELECT * 
FROM avantio_accomodations_pictures_dos AS aap
WHERE aap.avantio_accomodations IN(351396,352889)
ORDER BY aap.avantio_accomodations;

SELECT COUNT(*) AS "Numero de fotos" , aa.id , aa.text_title
FROM avantio_accomodations_pictures AS aap
JOIN avantio_accomodations AS aa ON aa.id = aap.avantio_accomodations AND aa.`language` = "es"
WHERE aa.id IN(351396,352889)
GROUP BY aap.avantio_accomodations;
            
SELECT * 
FROM avantio_accomodations_pictures AS aap
WHERE id IN(351396,352889)
ORDER BY aap.avantio_accomodations;

SELECT * 
FROM avantio_accomodations_pictures_dos AS aap
ORDER BY aap.avantio_accomodations;

RENAME TABLE avantio_accomodations_pictures TO  avantio_accomodations_pictures_dos;

SELECT * 
FROM avantio_accomodations_pictures AS aap
ORDER BY aap.avantio_accomodations;

SELECT MAX(id) AS "total"
FROM avantio_accomodations_pictures;

SELECT COUNT(*) AS "Numero de fotos" , aa.id , aa.text_title
FROM avantio_accomodations_pictures AS aap
JOIN avantio_accomodations AS aa ON aa.id = aap.avantio_accomodations AND aa.`language` = "es"
GROUP BY aap.avantio_accomodations;

SELECT * 
FROM avantio_accomodations_pictures AS aap
ORDER BY aap.avantio_accomodations;

SELECT text_page_title FROM dynamic_rooms WHERE language = "es";

UPDATE dynamic_rooms AS dr 
JOIN dynamic_rooms AS dr1 ON dr1.id = dr.id AND dr1.language = dr.language
SET dr.text_page_title = dr1.text_title;

UPDATE hshv_dynamic_rooms AS dr 
JOIN hshv_dynamic_rooms AS dr1 ON dr1.id = dr.id AND dr1.language = dr.language
SET dr.text_page_title = dr1.text_title;


UPDATE dynamic_rooms SET text_page_title = 
(
	SELECT dr.text_title 
	FROM dynamic_rooms AS dr
	WHERE dr.language = "es" 
)
WHERE language = "es";

# SELECT * FROM avantio_accomodations WHERE language = "es" AND STATUS = "ACTIVED";
# SELECT * FROM dynamic_rooms WHERE language = "es" AND STATUS = "ACTIVED";

SELECT MAX(id) FROM hshv_dynamic_rooms;
SELECT MAX(id) FROM hshv_avantio_rates_acommodation;

# INSERT INTO hshv_avantio_rates_acommodation(id,id_avantio_acommodation) VALUES(125 ,125); 
SELECT * FROM hshv_avantio_rates;
SELECT * FROM hshv_avantio_occupation_rules;
SELECT accommodation_id, SUM(price) as price, MAX(capacity) as capacity FROM avantio_rates WHERE fecha BETWEEN '2023-10-08' AND '2023-10-14' AND accommodation_id IN (357815,357823,357831) GROUP BY 1 ;
SELECT * FROM plantilla;
DELETE FROM plantilla WHERE id <> -1;
ALTER TABLE plantilla_room ADD COLUMN text_search_checkin_admin VARCHAR(255) COMMENT "Plantilla Room";
ALTER TABLE plantilla_room ADD COLUMN text_search_checkout_admin VARCHAR(255) COMMENT "Plantilla Room";

SELECT * FROM plantilla_room;
SELECT * FROM avantio_rates where accommodation_id =  357815;

# UPDATE dynamic_taxonomy_geographic_language_fields_customitzation SET checkbox_modificado = 0 WHERE id <> -1;

DELETE dtg FROM dynamic_taxonomy_geographic_language_fields_customitzation AS dtg 
where dtg.checkbox_modificado <> 1 AND dtg.dynamic_geolocality <> 0 AND dtg.dynamic_url_extra_parametro = 0 AND dtg.language = "es";

DELETE dtg FROM dynamic_taxonomy_geographic_language_fields_customitzation AS dtg 
where dtg.checkbox_modificado = NULL AND dtg.dynamic_geolocality <> 0 AND dtg.dynamic_url_extra_parametro = 0 AND dtg.language = "es"
AND dtg.id IN
(
	SELECT dt.id FROM dynamic_taxonomy_geographic_language_fields_customitzation AS dt	
	WHERE dt.checkbox_modificado <> 1 AND dt.language = "es"
);


SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE LANGUAGE  =  "es";
SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE dynamic_geocountry <> 0 AND LANGUAGE = "es";
SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE dynamic_geoarea <> 0 AND LANGUAGE = "es";
SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE dynamic_georegion <> 0 AND language  = "es";
SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE dynamic_geocity <> 0 AND language  = "es";
SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE dynamic_geolocality <> 0 AND LANGUAGE  =  "es";
SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE dynamic_geodistrict <> 0 AND LANGUAGE  =  "es";

# CREATE DATABASE homeswe1_wp2 COLLATE utf8_general_ci CHARACTER SET UTF8;
# ALTER TABLE dynamic_taxonomy_geographic_language_fields_customitzation ADD COLUMN checkbox_modificado TINYINT(4) COMMENT "Modificar url";

SELECT dt.*  
FROM dynamic_taxonomy_geographic_language_fields_customitzation AS dt 
WHERE language = "es" AND ID = 81;

SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE dynamic_geocountry = 1 AND LANGUAGE = "es";
SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE dynamic_geoarea = 1 AND LANGUAGE = "es";
SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE dynamic_georegion = 1 AND language  = "es";
SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE dynamic_geocity = 1 AND language  = "es";
SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE dynamic_geodistrict = 1 AND LANGUAGE  =  "es";

# avantio_accomodations_pictures
# get all pictures from 1 property
SELECT COUNT(*) AS "total registros" , aap.* 
FROM avantio_accomodations_pictures AS aap 
WHERE avantio_accomodations = 351396
GROUP BY avantio_accomodations asc;


# avantio_accomodations_pictures
# get all pictures from all order by total fotos
SELECT COUNT(*) AS "total registros" , aap.* 
FROM avantio_accomodations_pictures AS aap 
GROUP BY avantio_accomodations 
ORDER BY COUNT(*) desc;

# avantio_accomodations_pictures
SELECT MAX(DISTINCT(id)) AS "total registros" , aap.* 
FROM avantio_accomodations_pictures AS aap 
GROUP BY avantio_accomodations
ORDER BY COUNT(*) desc;

# maximo id en subquery
# usando MAX
SELECT * FROM avantio_accomodations_pictures
WHERE id = 
(
SELECT MAX(id) 
FROM avantio_accomodations_pictures 
);

# maximo id en subquery
# usando MAX
SELECT * FROM avantio_accomodations_pictures
GROUP BY avantio_accomodations
ORDER BY MAX(avantio_accomodations) desc;


# avantio_accomodations_pictures
# entre 25 y 30 por propiedad
SELECT COUNT(*) AS "total registros" , haap.* 
FROM hshv_avantio_accomodations_pictures AS haap
WHERE hshv_dynamic_rooms = 4
GROUP BY hshv_dynamic_rooms asc;


# hshv_avantio_accomodations_pictures
# entre 25 y 30 por propiedad
SELECT COUNT(*) AS "total registros" , haap.* 
FROM hshv_avantio_accomodations_pictures AS haap
GROUP BY hshv_dynamic_rooms asc;




# get all hshv_pictures
SELECT COUNT(*) AS "total registros" , aap.* 
FROM hshv_avantio_accomodations_pictures AS aap 
WHERE avantio_accomodations = 351396
GROUP BY avantio_accomodations asc;


# WHERE avantio_accomdations = 351396;
# SELECT * FROM hshv_avantio_accomodations_pictures; 
# WHERE hshv_dynamic_rooms = 351396;

/*
SELECT * 
FROM dynamic_rooms
WHERE LANGUAGE = "es" AND id = 359040;


UPDATE dynamic_taxonomy_geographic_language_fields_customitzation SET textarea_description_2 = REPLACE(textarea_description_2, 'pie de pagina', '');

SELECT textarea_description_2 
FROM `dynamic_taxonomy_geographic_language_fields_customitzation`;


select id , id_avantio from avantio_accomodations 
WHERE dynamic_georegion = '3' 
AND language = 'es' 
AND status = 'ACTIVED' 
AND avantio_accomodations.id NOT IN 
( 
SELECT DISTINCT(room_id) 
FROM mrbs_entry WHERE 
(checkin <= '2022-10-18' AND checkout >= '2022-10-19') 
OR (checkin <= '2022-10-19' AND checkout >= '2022-10-19') 
OR (checkin >= '2022-10-18' AND checkout <= '2022-10-19') ) 
UNION 
select id , id_avantio from hshv_avantio_accomodations 
WHERE dynamic_georegion = '3' 
AND language = 'es' 
AND status = 'ACTIVED' 
AND hshv_avantio_accomodations.id NOT IN 
( 
SELECT DISTINCT(room_id) 
FROM mrbs_entry WHERE 
(
checkin <= '2022-10-18' 
AND checkout >= '2022-10-19') 
OR (checkin <= '2022-10-19' 
AND checkout >= '2022-10-19') 
OR (checkin >= '2022-10-18' 
AND checkout <= '2022-10-19') 
)
ORDER by id asc LIMIT 0, 20


SELECT COUNT(*) AS total 
FROM ( 
select DISTINCT(id) AS id 
from avantio_accomodations 
WHERE dynamic_georegion = '3' 
AND LANGUAGE = 'es' 
AND status = 'ACTIVED' 
AND avantio_accomodations.id NOT IN 
( 
SELECT DISTINCT(room_id) 
FROM mrbs_entry WHERE 
(checkin <= '2022-10-18' AND checkout >= '2022-10-19') 
OR (checkin <= '2022-10-19' AND checkout >= '2022-10-19') 
OR (checkin >= '2022-10-18' AND checkout <= '2022-10-19') ) 
UNION 
select DISTINCT(id) AS id 
from hshv_avantio_accomodations 
WHERE dynamic_georegion = '3' 
AND LANGUAGE = 'es' 
AND status = 'ACTIVED' 
AND hshv_avantio_accomodations.id NOT IN 
( 
SELECT DISTINCT(room_id) 
FROM mrbs_entry WHERE 
(checkin <= '2022-10-18' AND checkout >= '2022-10-19') OR (checkin <= '2022-10-19' AND checkout >= '2022-10-19') OR (checkin >= '2022-10-18' AND checkout <= '2022-10-19') ) ORDER by id asc ) AS x;


DELETE mrbs_room FROM mrbs_room
JOIN avantio_accomodations AS aa ON aa.id = mrbs_room.id_avantio AND aa.language = "es";


SELECT * FROM mrbs_room;
SELECT * FROM mrbs_entry;

SELECT * FROM mrbs_room
JOIN avantio_accomodations AS aa ON aa.id = mrbs_room.id_avantio AND aa.language = "es";


INSERT INTO mrbs_room (`id` , `disabled` , `area_id` , `room_name` , `sort_key` , `description` , `capacity` , `room_admin_email` , `invalid_types` , `custom_html` , `id_avantio`)
SELECT aa.id , 0 , 1, aa.text_title , aa.text_title , aa.text_title , 2, "davidberruezo@davidberruezo.com" , NULL , NULL , aa.id 
FROM avantio_accomodations AS aa WHERE aa.language = "es" AND aa.id <> 380831 AND aa.id <> 367698;  



INSERT INTO mrbs_room (`id` , `disabled` , `area_id` , `room_name` , `sort_key` , `description` , `capacity` , `room_admin_email` , `invalid_types` , `custom_html` , `id_avantio`)
SELECT NULL, 0 , 1, aa.text_title , aa.text_title , aa.text_title , 2, "davidberruezo@davidberruezo.com" , NULL , NULL , aa.id 
FROM avantio_accomodations AS aa WHERE aa.language = "es" AND aa.id <> 380831 AND aa.id <> 367698;  


# JOIN hshv_avantio_accomodations AS haa ON haa.text_title <> aa.text_title;  


SELECT * FROM mrbs_room;
SELECT * FROM avantio_accomodations WHERE language = "es" AND STATUS = "ACTIVED";
SELECT * FROM hshv_avantio_accomodations WHERE language = "es" AND STATUS = "ACTIVED";

SELECT aa.* 
FROM avantio_accomodations AS aa
JOIN hshv_avantio_accomodations AS haa ON haa.text_title <> aa.text_title WHERE
aa.language = "es"; 



SELECT * FROM hshv_avantio_accomodations; 
SELECT * FROM mrbs_room;
SELECT * FROM mrbs_entry WHERE room_id = 2;


SELECT * FROM avantio_accomodations; 


INSERT INTO mrbs_room (`disabled` , `area_id` , `room_name` , `sort_key` , `description` , `capacity` , `room_admin_email` , `invalid_types` , `custom_html` , `id_avantio`)
SELECT 0 , 1, text_title , text_title , text_title , 2, "davidberruezo@davidberruezo.com" , NULL , NULL , id 
FROM avantio_accomodations
WHERE language = "es";  



ALTER TABLE mrbs_room DROP INDEX unique;

SELECT * FROM mrbs_area;
SELECT * FROM mrbs_entry;
SELECT * FROM mrbs_participants;
SELECT * FROM mrbs_repeat;
SELECT * FROM mrbs_room;
SELECT * FROM mrbs_sessions;
SELECT * FROM mrbs_users;
SELECT * FROM mrbs_variables;
SELECT * FROM mrbs_zoneinfo;


ALTER TABLE mrbs_room ADD COLUMN id_avantio INT(10) COMMENT "Identificador de Avantio";

INSERT INTO mrbs_room (`id`, `disabled` , `area_id` , `room_name` , `sort_key` , `description` , `capacity` , `room_admin_email` , `invalid_types` , `custom_html`)
SELECT id , 0 , 1, text_title , text_title , text_title , 2, "davidberruezo@davidberruezo.com" , NULL , NULL 
WHERE language = "es";  

# ALTER TABLE mrbs_entry ADD COLUMN checkin DATE COMMENT "Fecha entrada";
# ALTER TABLE mrbs_entry ADD COLUMN checkout DATE COMMENT "Fecha salida";

select COUNT(*) AS total, room_id  
from mrbs_entry
GROUP BY room_id; 

SELECT * 
FROM mrbs_entry 
WHERE room_id = 10;

SELECT DISTINCT(room_id) 
FROM mrbs_entry 
WHERE room_id = 10 
AND  (
(checkin <= "2022-10-15" AND  checkout >= "2022-10-18") 
OR 
(checkin <= "2022-10-18" AND checkout >= "2022-10-18")
OR
(checkin >= "2022-10-15" AND checkout <= "2022-10-18")
);


SELECT DISTINCT(b.id) 
FROM hshv_avantio_accomodations b 
LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity 
LEFT JOIN hshv_avantio_rates as rh on rh.accommodation_id = b.id 
LEFT JOIN hshv_avantio_accomodations_extras as haae on haae.avantio_accomodations = b.id 
LEFT JOIN hshv_avantio_accomodations_locations hl ON b.id = hl.avantio_accomodations 
WHERE b.language = 'es' AND b.status = 'ACTIVED' AND b.id NOT IN
(
	SELECT DISTINCT(room_id) 
	FROM mrbs_entry 
	WHERE room_id = 10 
	AND  (
		(checkin <= "2022-10-15" AND  checkout >= "2022-10-18") 
		OR 
		(checkin <= "2022-10-18" AND checkout >= "2022-10-18")	
		OR
		(checkin >= "2022-10-15" AND checkout <= "2022-10-18")
		)
); 


SELECT count(*) as total FROM
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
   WHERE 
		(checkin <= "2022-10-15" AND  checkout >= "2022-10-18") OR 
		(checkin <= "2022-10-18" AND checkout >= "2022-10-18") OR
		(checkin >= "2022-10-15" AND checkout <= "2022-10-18")
) 
UNION 
SELECT DISTINCT(b.id) FROM hshv_avantio_accomodations b 
LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity 
LEFT JOIN hshv_avantio_rates as rh on rh.accommodation_id = b.id 
LEFT JOIN hshv_avantio_accomodations_extras as haae on haae.avantio_accomodations = b.id 
LEFT JOIN hshv_avantio_accomodations_locations hl ON b.id = hl.avantio_accomodations 
WHERE b.language = 'es' AND b.status = 'ACTIVED' AND b.id NOT IN
(
	SELECT DISTINCT(room_id) 
	FROM mrbs_entry 
   WHERE
		(checkin <= "2022-10-15" AND  checkout >= "2022-10-18") OR 
		(checkin <= "2022-10-18" AND checkout >= "2022-10-18") OR
		(checkin >= "2022-10-15" AND checkout <= "2022-10-18")
) 
) AS x;



SELECT count(*) as total FROM
( 
SELECT a.id 
FROM avantio_accomodations a 
LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity 
LEFT JOIN avantio_rates as r on r.accommodation_id = a.id 
LEFT JOIN avantio_accomodations_extras as aae on aae.avantio_accomodations = a.id 
LEFT JOIN avantio_accomodations_locations l ON a.id = l.avantio_accomodations 
WHERE a.language = 'es' AND a.status = 'ACTIVED' 
UNION 
SELECT b.id FROM hshv_avantio_accomodations b 
LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity 
LEFT JOIN hshv_avantio_rates as rh on rh.accommodation_id = b.id 
LEFT JOIN hshv_avantio_accomodations_extras as haae on haae.avantio_accomodations = b.id 
LEFT JOIN hshv_avantio_accomodations_locations hl ON b.id = hl.avantio_accomodations 
WHERE b.language = 'es' AND b.status = 'ACTIVED' 
) AS x;


SELECT * FROM avantio_accomodations WHERE language = "es" AND STATUS = "ACTIVED";
SELECT * FROM hshv_avantio_accomodations WHERE language = "es" AND STATUS = "ACTIVED";


SELECT * FROM avantio_accomodations AS ac
WHERE ac.language = "es" AND ac.status = "ACTIVED"
UNION
SELECT * 
FROM hshv_avantio_accomodations AS hac
WHERE hac.language = "es" AND hac.status = "ACTIVED";


select COUNT(*) AS total, room_id  
from mrbs_entry
GROUP BY room_id; 

SELECT * FROM mbs


SELECT * FROM avantio_accomodations_pictures;
SELECT * FROM hshv_avantio_accomodations_pictures;

# urls | dynamic_geocountry | dynamic_geoarea | dynamic_georegion | dynamic_geocity | dynamic_geolocality | dynamic_geodistrict | dynamic_url_extra_parametro (colecciones)
# url solo linkan con colecciones + geo
SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation WHERE LANGUAGE = "es";

# colecciones | text_avantio == tag avantio | avantio == intranet | dynamic_services agrega el servicio
SELECT * FROM dynamic_taxonomy_geographic_language_extra 
WHERE LANGUAGE = "es";

# regiones menu | dynamic_taxonomy_geographic_fields_customization = url a agregar | dynamic_gallery_regiones_menu
SELECT * FROM dynamic_regiones_menu WHERE LANGUAGE = "es"; 

# colecciones home
SELECT * FROM dynamic_colecciones_home WHERE LANGUAGE = "es" AND STATUS = "ACTIVED";

# Colecciones menu = query en colecciones home por checkbox_menu | no entiendo no sale yoga en el menu
SELECT * FROM dynamic_colecciones_home WHERE checkbox_menu = 1 AND LANGUAGE = "es" AND STATUS = "ACTIVED";

# propiedades
SELECT * FROM avantio_accomodations WHERE LANGUAGE = "es" AND id = 351396;
# SELECT * FROM avantio_accomodations WHERE LANGUAGE = "es";

# servicios | piscina
SELECT * 
FROM dynamic_services 
WHERE text_title LIKE "pisci%" AND LANGUAGE = "es";

# extras == servicios
SELECT * FROM avantio_accomodations_extras;

# query buscador
SELECT a.id , a.id_avantio 
FROM avantio_accomodations a 
LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity 
LEFT JOIN avantio_rates as r on r.accommodation_id = a.id 
LEFT JOIN avantio_accomodations_extras as aae on aae.avantio_accomodations = a.id 
LEFT JOIN avantio_accomodations_locations l ON a.id = l.avantio_accomodations 
WHERE a.language = 'es' AND a.status = 'ACTIVED' 
UNION 
SELECT b.id , b.id_avantio 
FROM hshv_avantio_accomodations b 
LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity 
LEFT JOIN hshv_avantio_rates as rh on rh.accommodation_id = b.id 
LEFT JOIN hshv_avantio_accomodations_extras as haae on haae.avantio_accomodations = b.id 
LEFT JOIN hshv_avantio_accomodations_locations hl ON b.id = hl.avantio_accomodations 
WHERE b.language = 'es' AND b.status = 'ACTIVED' ORDER by id ASC;
#  LIMIT 0, 20
*/