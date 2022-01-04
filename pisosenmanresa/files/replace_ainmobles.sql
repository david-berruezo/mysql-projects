use pisosenm_inmobiliaria_dos;

#################### id's de agencias para hacde el remplazo de las imagenes ##################################

# ids pisos.com
# 10 , 136, vitalinmobles
# 42 , 421, lmfinques
# 41 , 110, finsetinmobles
# 38 , 89, lesclaus
# 34 , 208, bolsadelavivienda
# 8, 579, tothabitatge

# ids pisos.com
# 32 , 77, bonavista
# 31 , 67, vidainmo
# 30 , 40, installat
# 29, 307, inllobsa
# 28, 923, besthousemanresa
# 27, 228, bsninmobles
# 26, 120, macrofincas
# 25, 38, vicmoba
# 24, 154, pisosafys
# 22, 13, layvak
# 9, 86, grupsolnou
# 6, 230, consultin
# 23, 520, besthouse

# ids otros
# 7, 31, ainmobles

set SQL_SAFE_UPDATES = 0;

############################################ change images black to nofoto.gif ##########################################################

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_1 = "" ) as t2 using (`id`)
SET `image_1` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_2 = "" ) as t2 using (`id`)
SET `image_2` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_3 = "" ) as t2 using (`id`)
SET `image_3` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_4 = "" ) as t2 using (`id`)
SET `image_4` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_5 = "" ) as t2 using (`id`)
SET `image_5` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_6 = "" ) as t2 using (`id`)
SET `image_6` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_7 = "" ) as t2 using (`id`)
SET `image_7` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_8 = "" ) as t2 using (`id`)
SET `image_8` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_9 = "" ) as t2 using (`id`)
SET `image_9` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_10 = "" ) as t2 using (`id`)
SET `image_10` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_11 = "" ) as t2 using (`id`)
SET `image_11` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_12 = "" ) as t2 using (`id`)
SET `image_12` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_13 = "" ) as t2 using (`id`)
SET `image_13` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_14 = "" ) as t2 using (`id`)
SET `image_14` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_15 = "" ) as t2 using (`id`)
SET `image_15` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_16 = "" ) as t2 using (`id`)
SET `image_16` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_17 = "" ) as t2 using (`id`)
SET `image_17` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_18 = "" ) as t2 using (`id`)
SET `image_18` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_19 = "" ) as t2 using (`id`)
SET `image_19` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_20 = "" ) as t2 using (`id`)
SET `image_20` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_21 = "" ) as t2 using (`id`)
SET `image_21` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_22 = "" ) as t2 using (`id`)
SET `image_22` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_23 = "" ) as t2 using (`id`)
SET `image_23` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_24 = "" ) as t2 using (`id`)
SET `image_24` = "https://www.pisosenmanresa.com/nofotos.gif";

UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_25 = "" ) as t2 using (`id`)
SET `image_25` = "https://www.pisosenmanresa.com/nofotos.gif";


############################################ change images 's.jpg to .jpg ##########################################################

# letra s de la imagenes
UPDATE dynamic_gallery_inmo SET image_1 = REPLACE(image_1, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_2 = REPLACE(image_2, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_3 = REPLACE(image_3, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_4 = REPLACE(image_4, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_5 = REPLACE(image_5, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_6 = REPLACE(image_6, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_7 = REPLACE(image_7, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_8 = REPLACE(image_8, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_9 = REPLACE(image_9, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_10 = REPLACE(image_10, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_11 = REPLACE(image_11, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_12 = REPLACE(image_12, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_13 = REPLACE(image_13, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_14 = REPLACE(image_14, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_15 = REPLACE(image_15, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_16 = REPLACE(image_16, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_17 = REPLACE(image_17, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_18 = REPLACE(image_18, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_19 = REPLACE(image_19, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_20 = REPLACE(image_20, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_21 = REPLACE(image_21, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_22 = REPLACE(image_22, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_23 = REPLACE(image_23, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_24 = REPLACE(image_24, 's.jpg', '.jpg');
UPDATE dynamic_gallery_inmo SET image_25 = REPLACE(image_25, 's.jpg', '.jpg');




# update titlo and auto_slug all positions
# UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, 'en', '') WHERE text_title LIKE '%Castellbell i el Vilar%' and dynamic_geolocality = 0;


/*
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-aguilar-de-segarra-') WHERE text_title LIKE '%aguilar de segarra%' and dynamic_geolocality = 0;
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-aguilar-de-segarra-') WHERE text_subtitle LIKE '%aguilar de segarra%' and dynamic_geolocality = 0;

UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-castellbell-i-el-vilar-') WHERE text_subtitle LIKE '%castellbell i el vila%' and dynamic_geolocality = 0;
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-castellbell-i-el-vilar-') WHERE text_subtitle LIKE '%castellbell i el vila%' and dynamic_geolocality = 0;

UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-artés-') WHERE text_title LIKE '%artés%' and dynamic_geolocality = 0;
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-artés-') WHERE text_subtitle LIKE '%artés%' and dynamic_geolocality = 0;

UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-avinyó-') WHERE text_title LIKE '%avinyó%' and dynamic_geolocality = 0;
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-avinyó-') WHERE text_subtitle LIKE '%avinyó%' and dynamic_geolocality = 0;

UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-callús-') WHERE text_title LIKE '%callús%' and dynamic_geolocality = 0;
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-callús-') WHERE text_subtitle LIKE '%callús%' and dynamic_geolocality = 0;

UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-castellgalí-') WHERE text_title LIKE '%castellgalí%' and dynamic_geolocality = 0;
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-castellgalí-') WHERE text_subtitle LIKE '%castellgalí%' and dynamic_geolocality = 0;

UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-moià-') WHERE text_title LIKE '%moià%' and dynamic_geolocality = 0;
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-moià-') WHERE text_subtitle LIKE '%moià%' and dynamic_geolocality = 0;

UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-sant fruitós de bages-') WHERE text_title LIKE '%sant fruitós de bages%' and dynamic_geolocality = 0;
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-sant fruitós de bages-') WHERE text_subtitle LIKE '%sant fruitós de bages%' and dynamic_geolocality = 0;

UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-vicenç de castellet-') WHERE text_title LIKE '%vicenç de castellet%' and dynamic_geolocality = 0;
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-vicenç de castellet-') WHERE text_subtitle LIKE '%vicenç de castellet%' and dynamic_geolocality = 0;

UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-santa maria oló-') WHERE text_title LIKE '%santa maria oló%' and dynamic_geolocality = 0;
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-santa maria oló-') WHERE text_subtitle LIKE '%santa maria oló%' and dynamic_geolocality = 0;

UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-súria-') WHERE text_title LIKE '%súria%' and dynamic_geolocality = 0;
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-súria-') WHERE text_subtitle LIKE '%súria%' and dynamic_geolocality = 0;
*/

# cambios de precio con tothabitatge
/*
update dynamic_rooms set dynamic_accion = 3  where dynamic_accion = 1 and dynamic_agencia = 8;
UPDATE dynamic_rooms SET number_precioalq = number_precioinmo, number_precioinmo = 0 WHERE dynamic_accion = 3 and dynamic_agencia = 8;
UPDATE dynamic_rooms SET number_precioinmo = number_precioalq, number_precioalq = 0  where dynamic_accion = 2 and dynamic_agencia = 8;
update dynamic_rooms set dynamic_accion = 1  where dynamic_accion = 2 and dynamic_agencia = 8;
update dynamic_rooms set dynamic_accion = 2  where dynamic_accion = 3 and dynamic_agencia = 8;
*/


# locality que no hay pisos
/*
SELECT * FROM pisosenm_inmobiliaria.dynamic_rooms where dynamic_geolocality = 1; 
SELECT * FROM pisosenm_inmobiliaria.dynamic_rooms where dynamic_geolocality = 6;
SELECT * FROM pisosenm_inmobiliaria.dynamic_rooms where dynamic_geolocality = 10;
SELECT * FROM pisosenm_inmobiliaria.dynamic_rooms where dynamic_geolocality = 15;
SELECT * FROM pisosenm_inmobiliaria.dynamic_rooms where dynamic_geolocality = 16;
SELECT * FROM pisosenm_inmobiliaria.dynamic_rooms where dynamic_geolocality = 20;
SELECT * FROM pisosenm_inmobiliaria.dynamic_rooms where dynamic_geolocality = 22;
SELECT * FROM pisosenm_inmobiliaria.dynamic_rooms where dynamic_geolocality = 26;
SELECT * FROM pisosenm_inmobiliaria.dynamic_rooms where dynamic_geolocality = 38;
*/

# selectores
# SELECT * FROM pisosenm_inmobiliaria.dynamic_rooms where text_title like "%--%";
# SELECT * FROM pisosenm_inmobiliaria.dynamic_rooms where id = 74;
# SELECT * FROM pisosenm_inmobiliaria.dynamic_rooms;

/*
# set sql safe update
SET SQL_SAFE_UPDATES = 0;

# update dynamic_geolocality by text_title
UPDATE dynamic_rooms SET dynamic_geolocality = 1 WHERE text_title LIKE '%aguilar de segarra%';
UPDATE dynamic_rooms SET dynamic_geolocality = 2 WHERE text_title LIKE '%artés%';
UPDATE dynamic_rooms SET dynamic_geolocality = 3 WHERE text_title LIKE '%avinyó%';
UPDATE dynamic_rooms SET dynamic_geolocality = 7 WHERE text_title LIKE '%callús%';
UPDATE dynamic_rooms SET dynamic_geolocality = 11 WHERE text_title LIKE '%castellgalí%';
UPDATE dynamic_rooms SET dynamic_geolocality = 19 WHERE text_title LIKE '%moià%';
UPDATE dynamic_rooms SET dynamic_geolocality = 30 WHERE text_title LIKE '%sant fruitós de bages%';
UPDATE dynamic_rooms SET dynamic_geolocality = 34 WHERE text_title LIKE '%vicenç de castellet%';
UPDATE dynamic_rooms SET dynamic_geolocality = 35 WHERE text_title LIKE '%santa maria oló%';
UPDATE dynamic_rooms SET dynamic_geolocality = 37 WHERE text_title LIKE '%súria%';
# update dynamic_geolocality by text_subtitle
UPDATE dynamic_rooms SET dynamic_geolocality = 9 WHERE text_subtitle LIKE '%castellbell i el vila%';
# UPDATE dynamic_rooms SET dynamic_geolocality = 9 WHERE text_subtitle LIKE '%olesa de montserrat%';
# update dynamic_geolocality by text_zona
UPDATE dynamic_rooms SET dynamic_geolocality = 9 WHERE text_zona LIKE '%Castellbell i el Vilar%';
UPDATE dynamic_rooms SET dynamic_geolocality = 41 WHERE text_zona LIKE '%Olesa de Montserrat%';
# update dynamic_geolocality by textarea_description_2
UPDATE dynamic_rooms SET dynamic_geolocality = 41 WHERE textarea_description_2 LIKE '%Olesa de Montserrat%';
UPDATE dynamic_rooms SET dynamic_geolocality = 9 WHERE textarea_description_2 LIKE '%Castellbell i el Vilar%';
# SELECT * FROM pisosenm_inmobiliaria.dynamic_rooms where text_title like "%--%";
# replace by text_title and auto_slug
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-aguilar-de-segarra-') WHERE text_title LIKE '%aguilar de segarra%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-aguilar-de-segarra-') WHERE text_subtitle LIKE '%caguilar de segarra%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-castellbell-i-el-vilar-') WHERE text_subtitle LIKE '%castellbell i el vila%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-castellbell-i-el-vilar-') WHERE text_subtitle LIKE '%castellbell i el vila%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-artés-') WHERE text_title LIKE '%artés%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-artés-') WHERE text_subtitle LIKE '%artés%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-avinyó-') WHERE text_title LIKE '%avinyó%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-avinyó-') WHERE text_subtitle LIKE '%avinyó%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-callús-') WHERE text_title LIKE '%callús%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-callús-') WHERE text_subtitle LIKE '%callús%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-castellgalí-') WHERE text_title LIKE '%castellgalí%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-castellgalí-') WHERE text_subtitle LIKE '%castellgalí%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-moià-') WHERE text_title LIKE '%moià%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-moià-') WHERE text_subtitle LIKE '%moià%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-sant fruitós de bages-') WHERE text_title LIKE '%sant fruitós de bages%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-sant fruitós de bages-') WHERE text_subtitle LIKE '%sant fruitós de bages%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-vicenç de castellet-') WHERE text_title LIKE '%vicenç de castellet%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-vicenç de castellet-') WHERE text_subtitle LIKE '%vicenç de castellet%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-santa maria oló-') WHERE text_title LIKE '%santa maria oló%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-santa maria oló-') WHERE text_subtitle LIKE '%santa maria oló%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET text_title = REPLACE(text_title, '--', '-súria-') WHERE text_title LIKE '%súria%';
UPDATE pisosenm_inmobiliaria.dynamic_rooms SET auto_slug = REPLACE(auto_slug, '--', '-súria-') WHERE text_subtitle LIKE '%súria%';
*/



# imagenes ainmobles
/*
UPDATE dynamic_gallery_inmo SET image_1 = REPLACE(image_1, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_1 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_2 = REPLACE(image_2, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_2 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_3 = REPLACE(image_3, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_3 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_4 = REPLACE(image_4, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_4 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_5 = REPLACE(image_5, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_5 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_6 = REPLACE(image_6, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_6 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_7 = REPLACE(image_7, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_7 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_8 = REPLACE(image_8, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_8 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_9 = REPLACE(image_9, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_9 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_10 = REPLACE(image_10, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_10 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_11 = REPLACE(image_11, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_11 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_12 = REPLACE(image_12, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_12 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_13 = REPLACE(image_13, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_13 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_14 = REPLACE(image_14, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_14 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_15 = REPLACE(image_15, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_15 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_16 = REPLACE(image_16, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_16 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_17 = REPLACE(image_17, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_17 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_18 = REPLACE(image_18, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_18 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_19 = REPLACE(image_19, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_19 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_20 = REPLACE(image_20, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_20 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_21 = REPLACE(image_21, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_21 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_22 = REPLACE(image_22, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_22 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_23 = REPLACE(image_23, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_23 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_24 = REPLACE(image_24, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_24 LIKE '%https://www.aimmobles.com/%';
UPDATE dynamic_gallery_inmo SET image_25 = REPLACE(image_25, 'https://www.aimmobles.com/', 'http://www.aimmobles.com/') WHERE image_25 LIKE '%https://www.aimmobles.com/%';
*/


/*
alter table  dynamic_gallery_inmo modify column text_title_image_1 varchar(255) comment "titulo imagen 1";
alter table  dynamic_gallery_inmo modify column text_title_image_2 varchar(255) comment "titulo imagen 2";
alter table  dynamic_gallery_inmo modify column text_title_image_3 varchar(255) comment "titulo imagen 3";
alter table  dynamic_gallery_inmo modify column text_title_image_4 varchar(255) comment "titulo imagen 4";
alter table  dynamic_gallery_inmo modify column text_title_image_5 varchar(255) comment "titulo imagen 5";
alter table  dynamic_gallery_inmo modify column text_title_image_6 varchar(255) comment "titulo imagen 6";
alter table  dynamic_gallery_inmo modify column text_title_image_7 varchar(255) comment "titulo imagen 7";
alter table  dynamic_gallery_inmo modify column text_title_image_8 varchar(255) comment "titulo imagen 8";
alter table  dynamic_gallery_inmo modify column text_title_image_9 varchar(255) comment "titulo imagen 9";
alter table  dynamic_gallery_inmo modify column text_title_image_10 varchar(255) comment "titulo imagen 10";
alter table  dynamic_gallery_inmo modify column text_title_image_11 varchar(255) comment "titulo imagen 11";
alter table  dynamic_gallery_inmo modify column text_title_image_12 varchar(255) comment "titulo imagen 12";
alter table  dynamic_gallery_inmo modify column text_title_image_13 varchar(255) comment "titulo imagen 13";
alter table  dynamic_gallery_inmo modify column text_title_image_14 varchar(255) comment "titulo imagen 14";
alter table  dynamic_gallery_inmo modify column text_title_image_15 varchar(255) comment "titulo imagen 15";
alter table  dynamic_gallery_inmo modify column text_title_image_16 varchar(255) comment "titulo imagen 16";
alter table  dynamic_gallery_inmo modify column text_title_image_17 varchar(255) comment "titulo imagen 17";
alter table  dynamic_gallery_inmo modify column text_title_image_18 varchar(255) comment "titulo imagen 18";
alter table  dynamic_gallery_inmo modify column text_title_image_19 varchar(255) comment "titulo imagen 19";
alter table  dynamic_gallery_inmo modify column text_title_image_20 varchar(255) comment "titulo imagen 20";
alter table  dynamic_gallery_inmo modify column text_title_image_21 varchar(255) comment "titulo imagen 21";
alter table  dynamic_gallery_inmo modify column text_title_image_22 varchar(255) comment "titulo imagen 22";
alter table  dynamic_gallery_inmo modify column text_title_image_23 varchar(255) comment "titulo imagen 23";
alter table  dynamic_gallery_inmo modify column text_title_image_24 varchar(255) comment "titulo imagen 24";
alter table  dynamic_gallery_inmo modify column text_title_image_25 varchar(255) comment "titulo imagen 25";

dynamic_agencia

alter table  dynamic_gallery_inmo modify column text_alt_image_1 varchar(255) comment "titulo imagen 1";
alter table  dynamic_gallery_inmo modify column text_alt_image_2 varchar(255) comment "titulo imagen 2";
alter table  dynamic_gallery_inmo modify column text_alt_image_3 varchar(255) comment "titulo imagen 3";
alter table  dynamic_gallery_inmo modify column text_alt_image_4 varchar(255) comment "titulo imagen 4";
alter table  dynamic_gallery_inmo modify column text_alt_image_5 varchar(255) comment "titulo imagen 5";
alter table  dynamic_gallery_inmo modify column text_alt_image_6 varchar(255) comment "titulo imagen 6";
alter table  dynamic_gallery_inmo modify column text_alt_image_7 varchar(255) comment "titulo imagen 7";
alter table  dynamic_gallery_inmo modify column text_alt_image_8 varchar(255) comment "titulo imagen 8";
alter table  dynamic_gallery_inmo modify column text_alt_image_9 varchar(255) comment "titulo imagen 9";
alter table  dynamic_gallery_inmo modify column text_alt_image_10 varchar(255) comment "titulo imagen 10";
alter table  dynamic_gallery_inmo modify column text_alt_image_11 varchar(255) comment "titulo imagen 11";
alter table  dynamic_gallery_inmo modify column text_alt_image_12 varchar(255) comment "titulo imagen 12";
alter table  dynamic_gallery_inmo modify column text_alt_image_13 varchar(255) comment "titulo imagen 13";
alter table  dynamic_gallery_inmo modify column text_alt_image_14 varchar(255) comment "titulo imagen 14";
alter table  dynamic_gallery_inmo modify column text_alt_image_15 varchar(255) comment "titulo imagen 15";
alter table  dynamic_gallery_inmo modify column text_alt_image_16 varchar(255) comment "titulo imagen 16";
alter table  dynamic_gallery_inmo modify column text_alt_image_17 varchar(255) comment "titulo imagen 17";
alter table  dynamic_gallery_inmo modify column text_alt_image_18 varchar(255) comment "titulo imagen 18";
alter table  dynamic_gallery_inmo modify column text_alt_image_19 varchar(255) comment "titulo imagen 19";
alter table  dynamic_gallery_inmo modify column text_alt_image_20 varchar(255) comment "titulo imagen 20";
alter table  dynamic_gallery_inmo modify column text_alt_image_21 varchar(255) comment "titulo imagen 21";
alter table  dynamic_gallery_inmo modify column text_alt_image_22 varchar(255) comment "titulo imagen 22";
alter table  dynamic_gallery_inmo modify column text_alt_image_23 varchar(255) comment "titulo imagen 23";
alter table  dynamic_gallery_inmo modify column text_alt_image_24 varchar(255) comment "titulo imagen 24";
alter table  dynamic_gallery_inmo modify column text_alt_image_25 varchar(255) comment "titulo imagen 25";
*/
