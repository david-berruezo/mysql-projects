use phpandfr_portvil_tres;


ALTER TABLE hshv_avantio_booking_accommodation ADD COLUMN `booking_code_reservation` int(11) COMMENT "Identificador reserva";

SELECT * FROM avantio_booking_details;

CREATE TABLE `hshv_avantio_booking_accommodation` (
	`booking_code` int(11) NOT NULL COMMENT 'id bookig',
	`avantio_accomodations` int(11) NOT NULL COMMENT 'identificador',
	`text_userid` varchar(75) DEFAULT '' COMMENT 'Id usuario',
PRIMARY KEY (`booking_code`,`avantio_accomodations`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Booking localizer';


CREATE TABLE avantio_portvil(
`id` int(11) COMMENT "identificador tabla",
`text_title` varchar(75) COMMENT "título de la propiedad",
`number_avantio` int(11) COMMENT "id avantio",
`number_portvil` int(11) COMMENT "id portvil",
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
PRIMARY KEY(`id`)
)ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Identificadores Avantio portvil';

SELECT * FROM dynamic_agencia where language = "es" and id = 1;

SELECT ab.* , abd.web , abaa.* , aa.text_title, abt.booking_type , ds.* , abl.* ,abo.* , client.*
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
WHERE ab.booking_code = 16242451
AND abd.id_language = 1
AND aa.language = "es"
AND ds.language = "es"
order by ab.booking_date desc; 

# total 370
SELECT count(*) as "total reservas" FROM hshv_avantio_booking where start_date >= "2023-01-01";

# detalle de reservas por propieadad a partir del 2023 
SELECT ab.* , abd.web , abaa.total_price , aa.text_title, abt.booking_type
FROM hshv_avantio_booking_accommodation AS aba
JOIN hshv_avantio_booking AS ab ON ab.booking_code = aba.booking_code
JOIN hshv_avantio_booking_details as abd on abd.booking_code = ab.booking_code
JOIN hshv_avantio_booking_amount as abaa on abaa.booking_code = ab.booking_code
JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations
JOIN avantio_booking_type as abt ON abt.id_booking_type = abd.id_booking_type
WHERE ab.start_date >= "2023-01-01"
AND abd.id_language = 1
AND aa.language = "es"
order by text_title , ab.start_date  asc; 


SELECT ab.* , abd.web , abaa.total_price , aa.text_title, abt.booking_type
FROM hshv_avantio_booking_accommodation AS aba
JOIN hshv_avantio_booking AS ab ON ab.booking_code = aba.booking_code
JOIN hshv_avantio_booking_details as abd on abd.booking_code = ab.booking_code
JOIN hshv_avantio_booking_amount as abaa on abaa.booking_code = ab.booking_code
JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations
JOIN avantio_booking_type as abt ON abt.id_booking_type = abd.id_booking_type
WHERE aba.avantio_accomodations = 297527 AND ab.start_date <= "2024-01-01"
AND abd.id_language = 1
AND aa.language = "es"
order by ab.start_date asc; 


DELETE FROM hshv_avantio_booking_accommodation;
DELETE FROM hshv_avantio_booking;
DELETE FROM hshv_avantio_booking_amount;
DELETE FROM hshv_avantio_booking_details;


SELECT * FROM avantio_booking_type;

SELECT * FROM hshv_avantio_booking_details;

set SQL_SAFE_UPDATES = 0;
DELETE FROM hshv_avantio_booking;
DELETE FROM hshv_avantio_booking_accommodation;
DELETE FROM hshv_avantio_booking_amount;

SELECT * FROM avantio_booking_amount_services;
SELECT * FROM avantio_booking_amount;
SELECT * FROM hshv_avantio_booking;
SELECT * FROM hshv_avantio_booking_accommodation;

# SELECT * FROM avantio_booking;
# CREATE TABLE hshv_avantio_booking LIKE avantio_booking;

# SELECT * FROM hshv_avantio_booking_accommodation;
# INSERT INTO hshv_avantio_booking_accommodation (`booking_code` , `avantio_accomodations` , `text_userid`) VALUES(580 , 297527 , 50772 , 1568110181);

# R reserva confirmada 
# O opción de reserva
# id en todas las R pero en algunas C

# insert into hshv_avantio_booking_accommodation (`booking_code` , `avantio_accomodations` , `text_userid`) 
# VALUES ($booking_code , $accommodation , $user_id);

# insert into hshv_avantio_booking (`booking_code` , `start_date` , `end_date` , `booking_date` , `check_in_schedule` , `check_out_schedule` , `creation_datetime` , `last_modify_datetime`) 
# VALUES ($booking_code , $start_date , $end_date , $booking_date , $check_in_schedule , $creation_datetime , $last_modify_datetime);

# insert into hshv_avantio_booking_details (`booking_code` , `id_language` , `web` , `id_booking_type`) 
# VALUES ($booking_code , $id_language , $id_booking_type);

# insert into hshv_avantio_booking_amount (`booking_code` , `total_price` , `currency` , `comission` , `applied_owner_comission`) 
# VALUES ($booking_code , $total_price , $currency , $comission , $applied_owner_comission);


# avantio rates
# insert into hshv_avantio_rates (`booking_code` , `total_price` , `currency` , `comission` , `applied_owner_comission`)
# accommodation_id , capacity, fecha , price


# reservation tables
SELECT * FROM avantio_booking_accommodation where booking_code =  16242451;
SELECT * FROM avantio_booking where booking_code =  16242451;
SELECT * FROM avantio_booking_details where booking_code =  16242451;
SELECT * FROM avantio_booking_amount where booking_code =  16242451;
SELECT * FROM avantio_client where booking_code =  16242451;
SELECT * FROM avantio_booking_type;

# getReservation | bookingModel
SELECT ab.* , abd.web , abaa.* , aa.text_title, abt.booking_type , ds.* , abl.* ,abo.* , client.*
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
WHERE ab.booking_code = 16242451
AND abd.id_language = 1
AND aa.language = "es"
AND ds.language = "es"
order by ab.booking_date desc; 

# get reservation by filter AvantioModel
SELECT ab.booking_code, aa.text_userid , ab.start_date , ab.end_date , ab.booking_date , total_price , aa.text_title, ds.text_slug , ds.auto_slug ,
abo.adults_number , abo.child1_age , abo.child2_age , abo.child3_age , abo.child4_age , abo.child5_age , abo.child6_age ,
abc.name , abc.surname , abd.id_booking_type
FROM avantio_booking as ab
JOIN avantio_booking_amount as abam ON abam.booking_code = ab.booking_code
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code
JOIN avantio_booking_occupants as abo ON abo.booking_code = ab.booking_code
LEFT JOIN avantio_client as abc ON abc.booking_code = ab.booking_code
JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations AND aa.language = "es"
JOIN dynamic_rooms as ds ON ds.id = aa.id  AND ds.language = "es"
WHERE ds.status = 'ACTIVED' AND ab.booking_code = 16242451;

SELECT * 
FROM avantio_booking_localizer
WHERE booking_code = 16242451;


# DROP DATABASE phpandfr_portvil_tres;
# CREATE DATABASE phpandfr_portvil_tres COLLATE utf8_general_ci CHARACTER SET utf8;
 
use phpandfr_portvil_tres;

296754

SELECT * FROM avantio_accomodations where language = "es"
ORDER BY text_title , id asc;


SELECT * FROM avantio_accomodations 
WHERE id = 296754 AND language = "es";

SELECT * FROM `dynamic_rooms` WHERE `id` = '326312' AND `language` = 'es'

# SELECT * FROM avantio_accomodations WHERE language = "es";

SELECT ab.*, abd.id_booking_type , abd.web , ac.avantio_accomodations
FROM avantio_booking as ab
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code
JOIN avantio_booking_accommodation as ac ON ac.booking_code = ab.booking_code 
JOIN avantio_client as ai ON ai.booking_code = ab.booking_code
WHERE ac.avantio_accomodations IN(296754,297522);


SELECT * FROM avantio_booking_type;

SELECT ab.* , abd.id_booking_type
FROM avantio_booking as ab
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code
where ab.booking_code = 16193344;

SELECT * FROM avantio_booking_type;
# SELECT * FROM avantio_accomodations WHERE language = "es";
# 297522

SELECT ab.*, abd.id_booking_type , web
FROM avantio_booking as ab
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code
JOIN avantio_booking_accommodation as ac ON ac.booking_code = ab.booking_code 
JOIN avantio_client as ai
WHERE start_date <= "2022-09-01" AND end_date <= "2022-12-31"
AND ac.avantio_accomodations = 297522;


SELECT ab.booking_code, aa.text_userid , ab.start_date , ab.end_date , ab.booking_date , total_price , aa.text_title, ds.text_slug , ds.auto_slug , abo.adults_number , 
abo.child1_age , abo.child2_age , abo.child3_age , abo.child4_age , abo.child5_age , abo.child6_age , abc.name , abc.surname 
FROM avantio_booking as ab JOIN avantio_booking_amount as abam ON abam.booking_code = ab.booking_code 
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code 
JOIN avantio_booking_occupants as abo ON abo.booking_code = ab.booking_code LEFT JOIN avantio_client as abc ON abc.booking_code = ab.booking_code 
JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations AND aa.language = 'es' JOIN dynamic_rooms as ds ON ds.id = aa.id AND ds.language = 'es' 
WHERE ds.status = 'ACTIVED' AND ab.start_date >= '2022-09-17' AND ab.end_date <= '2023-09-01' AND aa.number_banyos_banyera + aa.number_banyos_ducha >= 0 AND aa.number_habitaciones >= 0

SELECT * FROM avantio_booking where booking_code = 2902306011;


SELECT * FROM avantio_booking_type;


SELECT ab.booking_code, aa.text_userid , ab.start_date , ab.end_date , ab.booking_date , total_price , aa.text_title, ds.text_slug , ds.auto_slug , 
abo.adults_number , abo.child1_age , abo.child2_age , abo.child3_age , abo.child4_age , abo.child5_age , abo.child6_age , abc.name , abc.surname , abd.id_booking_type 
FROM avantio_booking as ab 
JOIN avantio_booking_amount as abam ON abam.booking_code = ab.booking_code 
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code 
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code 
JOIN avantio_booking_occupants as abo ON abo.booking_code = ab.booking_code 
LEFT JOIN avantio_client as abc ON abc.booking_code = ab.booking_code 
LEFT JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations  AND aa.language = "es" 
LEFT JOIN dynamic_rooms as ds ON ds.id = aba.avantio_accomodations 
AND ds.language = "es" 
WHERE ds.status = "ACTIVED" 
AND ab.start_date >= "2022-12-01" AND ab.end_date <= "2023-03-31" 
AND aa.number_banyos_banyera + aa.number_banyos_ducha >= 0 AND aa.number_habitaciones >= 0;
# AND (abd.id_booking_type <> 2 AND abd.id_booking_type <> 3 AND abd.id_booking_type <> 16);


SELECT * FROM avantio_accomodations
WHERE language = "es" and status = "ACTIVED" 


# dynamic_pages
SELECT * 
FROM dynamic_pages
WHERE 
status = "ACTIVED"
AND language = "es";

# avantio_rates
SELECT accommodation_id, SUM(price) as price, MAX(capacity) as capacity 
FROM avantio_rates 
WHERE fecha BETWEEN '2023-03-27' AND '2023-03-30' AND accommodation_id IN (297527) GROUP BY 1; 
