# update variable 1 incrmenetmos en 1
SET @a  = 1;
UPDATE avantio_ical SET id = @a:=@a+1 WHERE id IS NULL;

# update con variable
UPDATE textile_events e,
    (
    SELECT @n := 249
    ) m
SET e.seq_no = @n := @n + 1
WHERE e.eid = 'headsup' AND e.paid = 'paid'


# update | join | no funciona
UPDATE avantio_ical as ai
JOIN avantio_accomodations as aa on aa.id = ai.avantio_accomodations and aa.language = "es"
SET text_title = aa.text_title;

# update | select | no funciona
UPDATE avantio_ical as ai ,
    (
    SELECT * from avantio_accomodations
    WHERE language = "es"
    ) as x
SET ai.text_title = x.text_title
WHERE  ai.avantio_accomodations = x.id;

# update | select | no funciona

# update | dos tablas | encuentra pero no actualiza
UPDATE avantio_ical as ai , avantio_accomodations as aa
SET ai.text_title = aa.text_title
WHERE ai.avantio_accomodations = aa.id and aa.language = "es";

# update left join | dos tablas | encuentra pero no actualiza
UPDATE avantio_ical as ai
LEFT JOIN avantio_accomodations as aa on aa.id = ai.avantio_accomodations and aa.language = "es"
SET ai.text_title = aa.text_title;

# update join | dos tablas | encuentra pero no actualiza
UPDATE avantio_ical as ai
JOIN avantio_accomodations as aa on aa.id = ai.avantio_accomodations and aa.language = "es"
SET ai.text_title = aa.text_title;

# update subselect | dos tablas
UPDATE avantio_ical SET text_title =
(
SELECT text_title
FROM avantio_accomodations as aa
WHERE aa.id = avantio_ical.avantio_accomodations
AND aa.language = "es"
);


INSERT INTO dynamic_faqsagentes_type
SELECT dp.*
FROM pisosenm_inmobiliaria_seis.dynamic_faqsagentes_type as dp;

SELECT * FROM avantio_accomodations where language = "es";
SELECT * FROM hshv_avantio_accomodations where language = "es";

SELECT a.id , a.id_avantio
FROM avantio_accomodations a
LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity
LEFT JOIN avantio_rates as r on r.accommodation_id = a.id
LEFT JOIN avantio_accomodations_extras as aae on aae.avantio_accomodations = a.id
LEFT JOIN avantio_accomodations_locations l ON a.id = l.avantio_accomodations
WHERE a.language = 'es'
AND a.status = 'ACTIVED'
AND a.number_habitaciones >= 0
AND a.id IN(297527,326472,297523,297537,297654,322419,326303,326085,326678,373586,305867,297719,297725,297879,297933,297941,297973,323013,298029,298330,301950,327544,324450,326301,298112,301350,301401,297977,297942,297978,297980,297981,301580,301581,297982,301584,301585,301586,298128,352807,297997,332232,326478,298189,327319,298196,345541,331114,310974,310981,311607,311745)
UNION ALL
SELECT b.id , b.id_avantio
FROM hshv_avantio_accomodations b
LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity
LEFT JOIN hshv_avantio_rates as rh on rh.accommodation_id = b.id
LEFT JOIN hshv_avantio_accomodations_extras as haae on haae.avantio_accomodations = b.id
LEFT JOIN hshv_avantio_accomodations_locations hl ON b.id = hl.avantio_accomodations
WHERE b.language = 'es'
AND b.status = 'ACTIVED'
AND b.number_habitaciones >= 0
ORDER by id asc

SELECT * FROM avantio_accomodations
where language = "es" and id = 297704
order by id asc;

SELECT ap.* FROM avantio_accomodations_pictures as ap
where avantio_accomodations = 297704
order by id asc
limit 1;

SELECT * FROM dynamic_agencia;
SELECT * FROM users;

SELECT COLUMN_NAME
FROM information_schema.columns
WHERE  TABLE_NAME = "plantilla"
AND table_schema = "homeswe1_web_dos";

'id'
'language'
'text_title'
'text_referencia'
'text_userid'
'text_company'
'number_companyid'
'text_numero_registro_turistico'
'avantio_occupation_rules'
'avantio_pricemodifiers'
'avantio_gallery'
'dynamic_taxonomy'
'dynamic_geocountry'
'dynamic_georegion'
'dynamic_geocity'
'dynamic_geolocality'
'dynamic_geodistrict'
'text_geo_cp'
'text_geo_tipo_calle'
'text_geo_calle'
'text_geo_numero'
'text_geo_bloque'
'text_geo_puerta'
'text_geo_piso'
'text_geo_latitud'
'text_geo_longitud'
'number_geo_zoom'
'number_unidades'
'number_habitaciones'
'number_camas_doble'
'number_camas_individual'
'number_sofas_cama'
'number_sofas_cama_doble'
'number_literas'
'number_dormitorios_personal'
'number_camas_supletorias'
'number_aseos'
'number_banyos_banyera'
'number_banyos_ducha'
'number_metros_cuadrados'
'number_metros_cuadrados_utiles'
'number_metros_cuadrados_construidos'
'number_metros_cuadrados_terraza'
'number_capacidad_maxima'
'number_capacidad_minima'
'number_capacidad_sin_suplemento'
'number_cocinas'
'number_fun'
'text_cocina_clase'
'text_cocina_tipo'
'text_orientacion'
'checkbox_grups'
'checkbox_aparcamiento'
'number_plazas_aparcamiento'
'checkbox_piscina'
'text_dimensiones_piscina'
'text_tipo_piscina'
'checkbox_tv'
'checkbox_jardin'
'checkbox_muebles_jardin'
'checkbox_plancha'
'checkbox_chimenea'
'checkbox_barbacoa'
'checkbox_radio'
'checkbox_minibar'
'checkbox_terraza'
'checkbox_parcela_vallada'
'checkbox_caja_seguridad'
'checkbox_ascensor'
'checkbox_dvd'
'checkbox_balcon'
'checkbox_exprimidor'
'checkbox_hervidor_electrico'
'checkbox_secador_pelo'
'checkbox_zona_ninos'
'checkbox_gimnasio'
'checkbox_alarma'
'checkbox_tennis'
'checkbox_squash'
'checkbox_paddel'
'checkbox_sauna'
'checkbox_jacuzzi'
'checkbox_apta_discapacitados'
'checkbox_nevera'
'checkbox_congelador'
'checkbox_lavavajillas'
'checkbox_lavadora'
'checkbox_secadora'
'checkbox_cafetera'
'checkbox_tostadora'
'checkbox_microondas'
'checkbox_horno'
'checkbox_vajilla'
'checkbox_utensilios_cocina'
'id_avantio'
'dynamic_taxonomy_geographic_language_fields_customitzation'
'checkbox_batidora'
'checkbox_extra_nevera'
'checkbox_vinoteca'
'checkbox_hervidor_agua'
'checkbox_cafetera_nespresso'
'checkbox_wifi'
'checkbox_aire_acondicionado'
'checkbox_ventilador'
'checkbox_calefacion_central'
'checkbox_bomba_aire'
'checkbox_suelo_radiante'
'checkbox_cine'
'checkbox_equipo_musica'
'checkbox_barbacoa_gas'
'checkbox_bano_turco'
'checkbox_billar'
'checkbox_ping_pong'
'checkbox_seguridad_piscina'
'checkbox_accesorios_yoga'
'checkbox_hosekeeping'
'checkbox_trona'
'checkbox_mascotas'
'checkbox_helipuerto'
'checkbox_zona_de_bar_exterior'
'checkbox_discoteca_privada'
'multiple_taxonomy_geographic_language_extra'
'multiple_taxonomy_geographic_language_carac'
'status'
'position'

# insert | select
INSERT INTO dynamic_faqsagentes_type
SELECT dp.*
FROM pisosenm_inmobiliaria_seis.dynamic_faqsagentes_type as dp;

INSERT INTO dynamic_faqsinmobiliarias_type
SELECT dp.*
FROM pisosenm_inmobiliaria_seis.dynamic_faqsinmobiliarias_type as dp;

INSERT INTO dynamic_faqspropietarios_type
SELECT dp.*
FROM pisosenm_inmobiliaria_seis.dynamic_faqspropietarios_type as dp;

INSERT INTO dynamic_faqsagentes_type
SELECT dp.*
FROM pisosenm_inmobiliaria_seis.dynamic_faqsagentes_type as dp;

INSERT INTO dynamic_faqsinmobiliarias
SELECT dp.*
FROM pisosenm_inmobiliaria_seis.dynamic_faqsinmobiliarias as dp;

INSERT INTO dynamic_faqspropietarios
SELECT dp.*
FROM pisosenm_inmobiliaria_seis.dynamic_faqspropietarios as dp;


# bookings
SELECT ab.* , abd.web , abaa.total_price , aa.text_title, abt.booking_type , abl.id_avantio_booking_localizer
FROM avantio_booking_accommodation AS aba
JOIN avantio_booking AS ab ON ab.booking_code = aba.booking_code
JOIN avantio_booking_localizer as abl ON abl.booking_code = ab.booking_code
JOIN avantio_booking_details as abd on abd.booking_code = ab.booking_code
JOIN avantio_booking_amount as abaa on abaa.booking_code = ab.booking_code
JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations
JOIN avantio_booking_type as abt ON abt.id_booking_type = abd.id_booking_type
# JOIN avantio_client as client on client.id_avantio_client = abd.id
# JOIN avantio_booking_payment as abp on abp.booking_code = ab.booking_code
WHERE aba.avantio_accomodations = 297704
AND abd.id_language = 1
AND aa.language = "es"
# order by ab.booking_date desc;
order by ab.start_date asc;

# availabilities
SELECT *
FROM avantio_availabilities
where accommodation_id = 297704
ORDER BY fecha asc;

# occupation rules
SELECT *
FROM avantio_occupation_rules
where id = 1255882
ORDER BY fecha asc;

# servicios por defecto
SELECT ds.*
FROM dynamic_services as ds
WHERE ds.language = "es"
AND ds.id IN(8,2,3,1,4,18872,18940,18682,18939,18,20190,20131,18871,10,20129,109,9,5,6,19144,1537,24234,7,19145);


# services
SELECT abas.* , ds.*
FROM avantio_booking as ab
JOIN avantio_booking_amount_services as abas ON abas.booking_code = ab.booking_code
JOIN dynamic_services as ds ON ds.id = abas.code
WHERE ds.language = "es" AND ab.booking_code = 15050772;

# reservas
SELECT ab.* , abd.web , abaa.total_price , aa.text_title, abt.booking_type , ds.* , abl.*
FROM avantio_booking_accommodation AS aba
JOIN avantio_booking AS ab ON ab.booking_code = aba.booking_code
JOIN avantio_booking_details as abd on abd.booking_code = ab.booking_code
JOIN avantio_booking_amount as abaa on abaa.booking_code = ab.booking_code
JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations
JOIN dynamic_rooms as ds ON ds.id = aa.id
JOIN avantio_booking_type as abt ON abt.id_booking_type = abd.id_booking_type
JOIN avantio_booking_localizer AS abl ON abl.booking_code = ab.booking_code
JOIN avantio_client as client on client.id = abd.booking_code
JOIN avantio_client as client on client.id = abd.booking_code

# JOIN avantio_booking_payment as abp on abp.booking_code = ab.booking_code
WHERE ab.booking_code = '" . $id . "'
AND abd.id_language = 1
AND aa.language = 'es'
AND ds.language = 'es'
order by ab.booking_date desc;

# detalle de reserva
# TODO necesitamos calcular el número de noches
# TODO estado de seguimiento
# TODO hay que guarar los clientes
# TODO hay que guardar los nombres de los ocupantes
# TODO hay que guardar el origen de marketing
SELECT ab.* ,  aa.text_title, ds.text_slug , ds.auto_slug , abd.web , abam.* , abt.booking_type , aba.text_userid
FROM `avantio_booking` as ab
JOIN avantio_booking_localizer as abl ON abl.booking_code = ab.booking_code
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code
JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations
JOIN dynamic_rooms as ds ON ds.id = aa.id
JOIN avantio_booking_details as abde ON abde.booking_code = ab.booking_code
JOIN avantio_booking_type as abt ON abt.id_booking_type = abde.id_booking_type
JOIN avantio_booking_amount as abam ON abam.booking_code = ab.booking_code
WHERE ab.booking_code = 14940944
AND aa.language = "es";



# consulta por booking_code
SELECT *
FROM `avantio_booking` as ab
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code
JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations
JOIN avantio_booking_details as abde ON abde.booking_code = ab.booking_code
JOIN avantio_booking_type as abt ON abt.id_booking_type = abde.id_booking_type
WHERE ab.booking_code = 12354166
AND aa.language = "es";

# consulta por fecha llegada
SELECT *
FROM `avantio_booking` as ab
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code
JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations
WHERE ab.start_date BETWEEN "2022-05-21" AND "2022-05-22"
AND aa.language = "es";


# consulta por creación de reserva
SELECT *
FROM `avantio_booking` as ab
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code
JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations
WHERE ab.booking_date BETWEEN "2022-05-21" AND "2022-05-22"
AND aa.language = "es";

# consulta por fecha llegada y creación de reserva
SELECT *
FROM `avantio_booking` as ab
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code
JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations
WHERE (ab.start_date BETWEEN "2022-05-21" AND "2022-05-22") AND (ab.booking_date BETWEEN "2022-05-21" AND "2022-05-22")
AND aa.language = "es";

# consulta por fecha llegada y creación de reserva
SELECT *
FROM `avantio_booking` as ab
JOIN avantio_booking_details as abd ON abd.booking_code = ab.booking_code
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code
JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations
WHERE (start_date BETWEEN "2022-05-21" AND "2022-05-22") AND (booking_date BETWEEN "2022-05-21" AND "2022-05-22")
AND aa.language = "es";

# consulta por fecha llegada y creación de reserva y por propiedad
SELECT *
FROM `avantio_booking` as ab
JOIN avantio_booking_accommodation as aba ON aba.booking_code = ab.booking_code
JOIN avantio_accomodations as aa ON aa.id = aba.avantio_accomodations
WHERE (ab.start_date BETWEEN "2022-05-21" AND "2022-05-22") AND (ab.booking_date BETWEEN "2022-05-21" AND "2022-05-22")
AND aba.avantio_accomodations IN(12)
AND aa.language = "es";


# occupation rules
SELECT * FROM avantio_occupation_rules
WHERE fecha BETWEEN "2022-05-17" AND "2022-05-24";

# availabilities
SELECT count(*) as total
FROM avantio_availabilities
WHERE accommodation_id = 326472
AND fecha BETWEEN "2022-05-17" AND "2022-05-24"
AND status = 1
ORDER BY fecha ASC;

# availabilities
SELECT accommodation_id , fecha , status
FROM avantio_availabilities
WHERE accommodation_id = 297527
AND fecha BETWEEN "2022-05-17" AND "2022-05-24"
ORDER BY fecha ASC;

# availabilities and accomodation
SELECT aa.accommodation_id , aa.fecha , aa.status
FROM avantio_accomodations as aac
JOIN avantio_availabilities as aa ON aa.accommodation_id = aac.id
WHERE aac.id = 297527
AND aa.fecha BETWEEN "2022-05-17" AND "2022-05-24"
AND aac.language = "es"
ORDER BY aa.fecha ASC;


# get booking by id property
SELECT abl.id_avantio_booking_localizer , ab.*
FROM avantio_booking AS ab
JOIN avantio_booking_accommodation AS aba ON ab.booking_code = aba.booking_code
JOIN avantio_booking_localizer AS abl ON abl.booking_code = aba.booking_code
WHERE avantio_accomodations = 301950
order by booking_date desc;

# avantio_accomodations and hshv_avantio_accomodations
SELECT a.id , a.text_title
FROM avantio_accomodations a
LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity
LEFT JOIN avantio_rates as r on r.accommodation_id = a.id
LEFT JOIN avantio_accomodations_extras as aae on aae.avantio_accomodations = a.id
LEFT JOIN avantio_accomodations_locations l ON a.id = l.avantio_accomodations
LEFT JOIN avantio_availabilities as aa ON aa.accommodation_id = a.id
WHERE a.language = 'es'
AND a.status = 'ACTIVED'
AND a.number_capacidad_maxima > 4
AND aa.fecha BETWEEN "2022-05-17" AND "2022-05-24" AND aa.status = 1
UNION
SELECT b.id , b.text_title
FROM hshv_avantio_accomodations b
LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity
LEFT JOIN hshv_avantio_rates as rh on rh.accommodation_id = b.id
LEFT JOIN hshv_avantio_accomodations_extras as haae on haae.avantio_accomodations = b.id
LEFT JOIN hshv_avantio_accomodations_locations hl ON b.id = hl.avantio_accomodations
LEFT JOIN hshv_avantio_availabilities as haa ON haa.accommodation_id = b.id
WHERE b.language = 'es'
AND b.status = 'ACTIVED'
AND b.number_capacidad_maxima > 4
AND haa.fecha BETWEEN "2022-05-17" AND "22022-05-24" AND haa.status = 1
order by text_title asc



# disponibilidades , #no_disponibilidades , #checkin , checkout , min_ninghts
select * from avantio_accomodations;

# seleccionamos por alegre
SELECT id, avantio_occupation_rules
FROM avantio_accomodations WHERE id = 297527;

# libres
SELECT fecha, status
FROM avantio_availabilities
WHERE accommodation_id = 297527
AND occupation_rule_id = 1255873
AND fecha BETWEEN "2021-01-01" AND "2023-01-01"
and status = 1
ORDER BY fecha ASC ;

# ocupadas
SELECT fecha, status
FROM avantio_availabilities
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


SELECT * FROM avantio_booking_payment
where booking_code = 14929361;


SELECT * FROM avantio_booking_payment
where booking_code = 14929361;

SELECT * FROM avantio_booking_amount
where booking_code = 14929361;
# order by booking_code;


# get booking by acommodation
SELECT ab.* , abd.web , abaa.total_price , abp.*
FROM avantio_booking_accommodation AS aba
         JOIN avantio_booking AS ab ON ab.booking_code = aba.booking_code
         JOIN avantio_booking_details as abd on abd.booking_code = ab.booking_code
         JOIN avantio_booking_amount as abaa on abaa.booking_code = ab.booking_code
# JOIN avantio_client as client on client.id_avantio_client = abd.id
         JOIN avantio_booking_payment as abp on abp.booking_code = ab.booking_code
WHERE aba.avantio_accomodations = 297978
  AND abd.id_language = 1
order by ab.booking_date desc;


# booking type
SELECT abd.* ,  abt.*
FROM avantio_booking_details as abd
JOIN avantio_booking_type AS abt on abt.id_booking_type = abd.id_booking_type
where abd.booking_code = 14692014;


use phpandfr_portvil_dos;

SELECT ab.*
FROM avantio_booking AS ab
JOIN avantio_booking_accommodation AS aba ON ab.booking_code = aba.booking_code
WHERE avantio_accomodations = 301950;


/*
# list bookings
# get booking by acommodation
# , abp.*
SELECT ab.* , abd.web , abaa.total_price
FROM avantio_booking_accommodation AS aba
JOIN avantio_booking AS ab ON ab.booking_code = aba.booking_code
JOIN avantio_booking_details as abd on abd.booking_code = ab.booking_code
JOIN avantio_booking_amount as abaa on abaa.booking_code = ab.booking_code
# JOIN avantio_client as client on client.id_avantio_client = abd.id
# JOIN avantio_booking_payment as abp on abp.booking_code = ab.booking_code AND abp.payment_status <> ""
WHERE aba.avantio_accomodations = 297978
AND abd.id_language = 1
order by ab.booking_date desc;



SELECT abd.* ,  abt.*
FROM avantio_booking_details as abd
JOIN avantio_booking_type AS abt on abt.id_booking_type = abd.id_booking_type
where abd.booking_code = 14692014;

*/


SELECT * FROM
avantio_booking AS ab
JOIN avantio_booking_amount aba ON ab.booking_code = aba.booking_code
where aba.booking_code = 14692014;



/*
SELECT ab.* , abd.* ,  loc.* , abt.*
FROM avantio_booking_accommodation AS aba
JOIN avantio_booking AS ab ON ab.booking_code = aba.booking_code
JOIN avantio_booking_details as abd on abd.booking_code = ab.booking_code
JOIN avantio_booking_type AS abt on abt.id_booking_type = abd.id_booking_type
# JOIN avantio_booking_amount as abaa on abaa.booking_code = ab.booking_code
JOIN avantio_booking_localizer as loc ON loc.booking_code = ab.booking_code
# JOIN avantio_client as client on client.id_avantio_client = abd.id
# JOIN avantio_booking_payment as abp on abp.booking_code = ab.booking_code
# JOIN avantio_booking_amount_services as abas ON abas.booking_code = ab.booking_code
WHERE ab.booking_code = 14692014
AND abd.id_language = 1
order by ab.booking_date desc;
*/


# booking queries
select * from avantio_booking;
select * from avantio_booking_accommodation;
select * from avantio_booking_localizer;
select * from avantio_booking_details;
select * from avantio_booking_occupants;
select * from avantio_booking_type;
select * from avantio_board;
select * from avantio_client;
select * from avantio_ical;
select * from avantio_ical_events;

select * from avantio_booking where booking_code = 13498609;


select * from avantio_booking where booking_code =  13498609;
select * from avantio_booking where booking_code =  13826517;
select * from avantio_booking where booking_code =  14087224;
select * from avantio_booking where booking_code =  14057075;
select * from avantio_booking where booking_code =  14072741;
select * from avantio_booking where booking_code =  14093310;
select * from avantio_booking where booking_code =  14100297;
select * from avantio_booking where booking_code =  14099582;
select * from avantio_booking where booking_code =  14099293;
select * from avantio_booking where booking_code =  13805599;
select * from avantio_booking where booking_code =  14098917;
select * from avantio_booking where booking_code =  14098227;
select * from avantio_booking where booking_code =  14097948;
select * from avantio_booking where booking_code =  14096800;
select * from avantio_booking where booking_code =  14094578;
select * from avantio_booking where booking_code =  14094102;
select * from avantio_booking where booking_code =  14092856;

select *
from avantio_accomodations as aa
where aa.id IN (353029, 357837 , 351396 , 362632 , 358819 , 362632 , 362632 , 380831);


select ab.booking_code, aba.avantio_accomodations
from avantio_booking as ab
         join avantio_booking_details abd on ab.booking_code = abd.booking_code
         join avantio_booking_accommodation as aba on aba.booking_code = ab.booking_code
where abd.price != 0;


select aa.text_title as text_propiedad , ab.start_date, ab.end_date , abd.price ,  dg.text_title as text_ciudad
from avantio_booking as ab
         join avantio_booking_details as abd on ab.booking_code = abd.booking_code
         join avantio_booking_accommodation as aba on aba.booking_code = ab.booking_code
         join avantio_accomodations as aa on aa.id = aba.avantio_accomodations
         join dynamic_geocity as dg on dg.id = aa.dynamic_geocity
where aa.language = "es"
  AND dg.language = "es"
  AND ab.booking_code = 14257641;

# acommodation booking by accomodation code
select aa.text_title as text_propiedad , ab.start_date, ab.end_date , abd.price ,  dg.text_title as text_ciudad
from avantio_booking as ab
         join avantio_booking_details as abd on ab.booking_code = abd.booking_code
         join avantio_booking_accommodation as aba on aba.booking_code = ab.booking_code
         join avantio_accomodations as aa on aa.id = aba.avantio_accomodations
where aa.language = "es"
  AND aa.id = 297527;


# aa.text_title as text_propiedad ,
# join avantio_accomodations as aa on aa.id = aba.avantio_accomodations
select ab.start_date, ab.end_date , abd.price
from avantio_booking as ab
         join avantio_booking_details as abd on ab.booking_code = abd.booking_code
         join avantio_booking_accommodation as aba on aba.booking_code = ab.booking_code
         join avantio_accomodations as aa on aa.id = aba.avantio_accomodations
where ab.booking_code = 14257641;


select ac.*
from avantio_accomodations as ac
where language = 'es' and id = 000001
order by ac.id asc;


select ab.booking_code , aa.text_title as text_propiedad , ab.start_date, ab.end_date , abm.rental_price , abm.total_price,   dg.text_title as text_ciudad
from avantio_booking as ab
         join avantio_booking_details as abd on ab.booking_code = abd.booking_code
         join avantio_booking_accommodation as aba on aba.booking_code = ab.booking_code
         join avantio_booking_amount as abm on abm.booking_code = aba.booking_code
         join avantio_accomodations as aa on aa.id = aba.avantio_accomodations
         join dynamic_geocity as dg on dg.id = aa.dynamic_geocity
where aa.language = "es"
  AND dg.language = "es"
  AND ab.booking_code = 14257641;

# COUNT TABLES
# 3922
SELECT COUNT(*) FROM avantio_booking;
# 3922
SELECT COUNT(*) FROM avantio_booking_accommodation;
# 3922
SELECT COUNT(*) FROM avantio_booking_amount;
# 14319
SELECT COUNT(*) FROM avantio_booking_amount_services;
# 0
SELECT COUNT(*) FROM avantio_booking_data;
# 3922
SELECT COUNT(*) FROM avantio_booking_details;
# 3922
SELECT COUNT(*) FROM avantio_booking_localizer;
# 0
SELECT COUNT(*) FROM avantio_booking_occupants;
# 8839
SELECT COUNT(*) FROM avantio_booking_payment;
# 18
SELECT COUNT(*) FROM avantio_booking_type;
# 0
SELECT COUNT(*) FROM avantio_client;

SELECT *
FROM avantio_booking_localizer
WHERE id_avantio_booking_localizer = 2416774059
# 14847740
# A169-2416774059-171
# A169-2416774059-171

# geo delete
delete from dynamic_geocountry where id <> -1;
select * from dynamic_georegion where id <> -1;
select * from dynamic_geocity where id <> -1;
select * from dynamic_geolocality where id <> -1;
select * from dynamic_geodistrict where id <> -1;

# geo get
select * from dynamic_geocountry;
select * from dynamic_georegion;
select * from dynamic_geocity;
select * from dynamic_geolocality;
select * from dynamic_geodistrict;

