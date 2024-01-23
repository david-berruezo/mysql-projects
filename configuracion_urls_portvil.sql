USE phpandfr_portvil_tres;

/*
SELECT ab.booking_code, aa.text_userid , ab.start_date , ab.end_date , ab.booking_date , total_price , aa.text_title, ds.text_slug , 
ds.auto_slug , abo.adults_number , abo.child1_age , abo.child2_age , abo.child3_age , abo.child4_age , abo.child5_age , 
abo.child6_age , abc.name , abc.surname , abd.id_booking_type , haba.id_agencia , aba.avantio_accomodations 
FROM avantio_booking as ab 
JOIN avantio_booking_amount as abam ON abam.booking_code = ab.booking_code 
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code 
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code 
JOIN avantio_booking_occupants as abo ON abo.booking_code = ab.booking_code 
LEFT JOIN avantio_client as abc ON abc.booking_code = ab.booking_code 
JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations AND aa.language = 'es' 
JOIN dynamic_rooms as ds ON ds.id = aa.id AND ds.language = 'es' 
LEFT JOIN hshv_avantio_booking_agencia AS haba ON haba.booking_code = ab.booking_code 
WHERE ds.status = 'ACTIVED' AND ab.start_date >= '2023-10-01' AND ab.end_date <= '2023-11-30' 
AND aa.number_banyos_banyera + aa.number_banyos_ducha >= 0 AND aa.number_habitaciones >= 0;


SELECT * FROM avantio_booking_accommodation;

/*
UPDATE hshv_avantio_booking_agencia SET booking_code = 15923053 WHERE booking_code = 16433143;
SELECT * FROM hshv_avantio_booking_agencia;
*/

# 15923053
# 16433143

SELECT ab.* , abd.web , abaa.* , aa.text_title, abt.booking_type , ds.* , abl.* ,abo.* , CLIENT.* , aa.number_habitaciones , aa.number_banyos_banyera+aa.number_banyos_ducha AS aseos
FROM avantio_booking_accommodation AS aba
JOIN avantio_booking AS ab ON ab.booking_code = aba.booking_code
JOIN avantio_booking_details as abd on abd.booking_code = ab.booking_code
JOIN avantio_booking_amount as abaa on abaa.booking_code = ab.booking_code
JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations
JOIN dynamic_rooms as ds ON ds.id = aa.id    
JOIN avantio_booking_type as abt ON abt.id_booking_type = abd.id_booking_type
JOIN avantio_booking_localizer AS abl ON abl.booking_code = ab.booking_code
JOIN avantio_booking_occupants AS abo ON abo.booking_code = ab.booking_code
LEFT JOIN avantio_client as client on client.booking_code = abd.booking_code
# JOIN avantio_booking_payment as abp on abp.booking_code = ab.booking_code
WHERE ab.booking_code = 15923053
AND abd.id_language = 1
AND aa.language = "es"
AND ds.language = "es"
order by ab.booking_date DESC;


SELECT ab.booking_code, aa.text_userid , ab.start_date , ab.end_date , ab.booking_date , total_price , aa.text_title, ds.text_slug , ds.auto_slug , abo.adults_number , 
abo.child1_age , abo.child2_age , abo.child3_age , abo.child4_age , abo.child5_age , abo.child6_age , abc.name , abc.surname , abd.id_booking_type , haba.id_agencia , 
aba.avantio_accomodations 
FROM avantio_booking as ab 
JOIN avantio_booking_amount as abam ON abam.booking_code = ab.booking_code 
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code 
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code 
JOIN avantio_booking_occupants as abo ON abo.booking_code = ab.booking_code 
LEFT JOIN avantio_client as abc ON abc.booking_code = ab.booking_code 
JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations AND aa.language = 'es' 
JOIN dynamic_rooms as ds ON ds.id = aa.id AND ds.language = 'es' 
LEFT JOIN hshv_avantio_booking_agencia AS haba ON haba.booking_code = ab.booking_code
WHERE ds.status = 'ACTIVED'
AND aba.avantio_accomodations IN(297254) 
AND ab.start_date >= '2023-10-01' 
AND ab.end_date <= '2023-11-30' 
AND aa.number_banyos_banyera + aa.number_banyos_ducha >= 0 
AND aa.number_habitaciones >= 0;

SELECT * FROM hshv_avantio_booking_agencia;

INSERT INTO hshv_avantio_booking_agencia (`booking_code`, `id_agencia` , `booking_date`)
SELECT booking_code , 206 , booking_date FROM hshv_avantio_booking;

CREATE TABLE `hshv_avantio_booking_agencia` (
`booking_code` int(11) NOT NULL COMMENT 'id booking',
`id_agencia` int(11) NOT NULL COMMENT 'id agencia',
`booking_date` TIMESTAMP NOT NULL COMMENT 'booking date',
PRIMARY KEY (`booking_code` , `id_agencia`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Hshv Avantio Agencia';


SELECT ab.booking_code, aa.text_userid , ab.start_date , ab.end_date , ab.booking_date , total_price , aa.text_title, ds.text_slug , ds.auto_slug , abo.adults_number , 
abo.child1_age , abo.child2_age , abo.child3_age , abo.child4_age , abo.child5_age , abo.child6_age , abc.name , abc.surname , abd.id_booking_type 
FROM avantio_booking as ab JOIN avantio_booking_amount as abam ON abam.booking_code = ab.booking_code 
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code 
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code 
JOIN avantio_booking_occupants as abo ON abo.booking_code = ab.booking_code 
LEFT JOIN avantio_client as abc ON abc.booking_code = ab.booking_code 
JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations AND aa.language = 'es' 
JOIN dynamic_rooms as ds ON ds.id = aa.id AND ds.language = 'es' 
WHERE ds.status = 'ACTIVED'
AND aba.avantio_accomodations IN(297254) 
AND ab.start_date >= '2023-10-01' 
AND ab.end_date <= '2023-11-30' 
AND aa.number_banyos_banyera + aa.number_banyos_ducha >= 0 
AND aa.number_habitaciones >= 0;


# accomodations
SELECT * FROM avantio_accomodations WHERE STATUS = "ACTIVED";
SELECT * FROM dynamic_rooms WHERE STATUS = "ACTIVED";

# configuración

# taxonomy | actopms
SELECT * FROM dynamic_taxonomy WHERE STATUS = "ACTIVED";
SELECT * FROM dynamic_accion WHERE STATUS = "ACTIVED";

# geo
SELECT * FROM dynamic_geocountry WHERE STATUS = "ACTIVED";
SELECT * FROM dynamic_georegion WHERE STATUS = "ACTIVED";
SELECT * FROM dynamic_geocity WHERE STATUS = "ACTIVED";
SELECT * FROM dynamic_geolocality WHERE STATUS = "ACTIVED";
SELECT * FROM dynamic_geodistrict WHERE STATUS = "ACTIVED";

SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation;
# DELETE FROM dynamic_taxonomy_geographic_language_fields_customitzation;
*/