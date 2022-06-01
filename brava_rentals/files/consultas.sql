# connect to database
# use pisosenm_inmobiliaria_tres;
# use automoci_inmobiliaria_dos;
# use tiendapi_blog;
# use wordpress_villas;
# use wordpress_5_5_3;
# use automoci_inmobiliaria_dos;
# use automoci_inmobiliaria_dos;
# use wordpress_5_5_3;
use tiendapi_inmobiliaria_dos;

# elementor
# 35380 , "_elementor_data"
select wp_postmeta.*
from wp_postmeta
left join wp_posts as posts on posts.ID = wp_postmeta.post_id
where posts.ID = 35380;
# where posts.post_type = 'estate_property'
# and wp_postmeta.meta_key = "prop_featured";


# services
SELECT * FROM `avantio_accomodations_extras` where avantio_accomodations = 371244;
SELECT * FROM `dynamic_services` where id IN("6","7","8","10","11","18","109","127","1537","20190") and language = "es" ;

# discounts
ALTER TABLE avantio_pricemodifiers ADD COLUMN season tinyint(3) COMMENT "temporada";


/*
<Code>6</Code> ropa de cama
<Code>7</Code> toallas
<Code>8</Code> acceso a internet
<Code>10</Code> limpieza final
<Code>11</Code> fianza
<Code>18</Code> cuna
<Code>109</Code> llegada fuera de horario
<Code>127</Code> tasa turistica
<Code>1537</Code> silla bebe
<Code>20190</Code> desinfeccion
mascota == 9
aire acondicionado == 2
aparactamiento == 3
calefacción == 1
camas supletorios == 4
desinfeccion con certificación == 20131
limpieza y desinfección === 20129
piscina climatizada === 5
no smoking === 24131
*/

INSERT INTO dynamic_taxonomy_group (
    id, language , text_title , text_title_url , text_title_plural , text_subtitle , dynamic_taxonomy_group , textarea_description , text_page_title ,
auto_slug , text_slug , text_meta_keywords , text_meta_robots , text_meta_description , textarea_scripts_header , textarea_scripts_body , status , position
) values (21, "es" , "prueba" , "prueba" , "prueba" , "prueba" ,  null , "prueba" , "prueba" , "prueba" , ""
);

SELECT ds.*
FROM `avantio_accomodations_extras` as aae
JOIN dynamic_services as ds ON ds.id = ae.avantio_accomodations
where avantio_accomodations = 371244 and ds.language = "es";

# piscina
select *
from avantio_accomodations
where
language = "es"
and (id = 378515 OR id = 371254);


# estate property
select * from wp_posts
WHERE
post_type = "estate_property"
AND post_title like "ancora%"
ORDER BY `wp_posts`.`post_title` ASC;

select * from wp_posts
WHERE
post_type = "estate_property"
ORDER BY `wp_posts`.`post_title` ASC;


# geeral
#  borrado y modificacion de urls
use tiendapi_inmobiliaria_tres;

select * from wp_options;
select * from wp_posts where post_type="estate_property";
update wp_options set option_value = "http://5.9.108.201/Villas2021"
where option_name = "siteurl" OR option_name = "home";


use tiendapi_inmobiliaria_dos;
select * from wp_options;
select * from wp_posts where post_type="estate_property";
update wp_options set option_value = "http://5.9.108.201/Villas2021/avantio_cron_cli_wordpress"
where option_name = "siteurl" OR option_name = "home";


# delete postmeta
delete postmeta
from wp_postmeta as postmeta
left join wp_posts as posts on posts.ID = postmeta.post_id
where posts.post_type = 'attachment'
and posts.post_parent <> 0
and (posts.guid like "%importedmedia_dos%" OR posts.guid like "%importedmedia%");

# delete posts attachment post_parent == guid === imported
delete posts
from wp_posts as posts
where posts.post_type = "attachment"
and posts.post_parent <> 0
and (posts.guid like "%importedmedia_dos%" OR posts.guid like "%importedmedia%");


delete from wp_posts where post_type = "estate_property";

# wp_posts
select * from wp_posts where ID = 379342;
select * from wp_posts where post_parent = 379342;


# replace word revision by blank
update wp_posts set post_name = REPLACE(post_name,"revision","") where post_type = "estate_property";
update wp_posts set guid = REPLACE(guid,"http","https");

update wp_users
set user_login = "info@llvillas.com" ,
user_nicename = "info@llvillas.com" ,
user_email = "info@llvillas.com" ,
user_url = "http://www.llvillas.com/" ,
display_name = "info@llvillas.com"
where id = 1;

update wp_posts set guid = REPLACE(guid,"https://tiendapisosenmanresa.com" , "http://www.llvillas.com/");
update wp_posts set guid = REPLACE(guid,"http://5.9.108.201/Villas2021" , "http://www.llvillas.com");

update wp_options set option_value = "http://5.9.108.201/Villas2021"
where option_name = "siteurl" OR option_name = "home";

update wp_options set option_value = "http://5.9.108.201/Villas2021/avantio_cron_cli_wordpress"
where option_name = "siteurl" OR option_name = "home";

# ponemos los contadores a 1

# borramos thumnail
delete from wp_postmeta where meta_key like "taxonomy";

#
delete from wp_options where option_name like "taxonomy_%";
delete from wp_options where option_name like "status_%";
delete from wp_options where option_name like "kind_%";

# 108 en total
select * from wp_options where option_name like "taxonomy_%";

# borramos thumnail
delete from wp_postmeta where meta_key like "_thumbnail_id";

ALTER TABLE wp_posts AUTO_INCREMENT = 1;
ALTER TABLE wp_postmeta AUTO_INCREMENT = 1;

insert into languages (`id`,`name`,`actived`,`default`,`locale`,`text_lang`,`status`)
values ('ca','Catalán',1,0,'ca_CA','ACTIVED');
#('fr','Frances',1,0,'fr_FR','ACTIVED'),

# post types
# default post type
call get_post_type("post");
call get_post_type("page");
call get_post_type("attachment");
call get_post_type("revision");
call get_post_type("nav_menu_item");
call get_post_type("wp_template");
call get_post_type("wp_template_part");
# other post type

# make typical selects
select * from wp_posts;
select * from wp_postmeta;
select * from wp_terms;
select * from wp_termmeta;
select * from wp_term_relationships;
select * from wp_term_taxonomy;
select * from wp_options;

# menus
select * from wp_termmeta where term_id = 83;

SELECT
    id
FROM
    (SELECT orderNumber, COUNT(orderNumber) AS items
     FROM
         wp_posts
     GROUP BY orderNumber) AS lineitems;

select * from wp_posts
where post_type = "attachment"
AND post_title like "blogmedia%";

update from wp_posts
set menu_order = 0
where post_type = "attachment"
and post_parent <> 0
and guid like "%importedmedia%";

select * from wp_posts
where post_type = "attachment"
and post_parent = 371244;

select * from wp_posts
where post_type = "attachment";



delete  from wp_posts
where post_type = "attachment"
AND post_title like "blogmedia%";

delete  from wp_posts
where post_type = "attachment"
AND guid like "%importedmedia%";

select *
from wp_posts
where post_type = "estate_property";

select *
from wp_posts
where post_type = "estate_property";

select * from wp_posts
where post_type = "attachment"
and post_parent = 55631;

# guid
select * from wp_posts where guid like "https://2automocion%";

# postmeta meta_value = 2automocion
select * from wp_postmeta where meta_value like "2automocion%";

# elementor post_meta
select * from wp_postmeta where meta_key like "_elementor%";

select * from wp_postmeta where meta_key like "_elementor%"
and (meta_value like "%2automocion%" OR meta_value like "2automocion%");

UPDATE wp_postmeta SET meta_value = REPLACE(meta_value, '2automocion', 'tiendapisosenmanresa')
WHERE meta_key like "_elementor%"
AND (meta_value like "%2automocion%" OR meta_value like "2automocion%");

# attachment
select * from wp_posts where post_type = "attachment";

select * from wp_posts
where post_type = "attachment" and post_parent = 371254;


select * from wp_posts
where post_type = "attachment" and post_parent = 371420;


select * from wp_posts
where post_type = "attachment" and post_parent <> 0;

# delete thumbnail id
DELETE childpost
FROM wp_posts childpost
INNER JOIN wp_postmeta parentmeta ON (childpost.ID = parentmeta.meta_value)
WHERE parentmeta.meta_key = '_thumbnail_id'
AND parentmeta.post_id = 371244;

DELETE childpost
FROM wp_posts childpost
INNER JOIN wp_postmeta parentmeta ON (childpost.ID = parentmeta.meta_value)
WHERE parentmeta.meta_key = '_thumbnail_id'
AND parentmeta.post_id = 371244101;

DELETE childpost
FROM wp_posts childpost
INNER JOIN wp_postmeta parentmeta ON (childpost.ID = parentmeta.meta_value)
WHERE parentmeta.meta_key = '_thumbnail_id'
AND parentmeta.post_id = 371244201;

DELETE childpost
FROM wp_posts childpost
INNER JOIN wp_postmeta parentmeta ON (childpost.ID = parentmeta.meta_value)
WHERE parentmeta.meta_key = '_thumbnail_id'
AND parentmeta.post_id = 371244401;


select wp_postmeta.*
from wp_postmeta
left join wp_posts as posts on posts.ID = wp_postmeta.post_id
where posts.post_type = 'estate_property'
and wp_postmeta.meta_key = "prop_featured";

update wp_postmeta set meta_value = 0 where meta_key =  "prop_featured";

# select before to delete
select * from wp_postmeta
left join wp_posts as posts on posts.ID = wp_postmeta.post_id
where posts.post_type = 'attachment'
and posts.post_parent <> 0
and (posts.guid like "%importedmedia_dos%" OR posts.guid like "%importedmedia%");

# select before to delete
select * from wp_posts
where post_type = "attachment"
and post_parent <> 0
and (guid like "%importedmedia_dos%" OR guid like "%importedmedia%");

# delete postmeta
delete postmeta
from wp_postmeta as postmeta
left join wp_posts as posts on posts.ID = postmeta.post_id
where posts.post_type = 'attachment'
and posts.post_parent <> 0
and (posts.guid like "%importedmedia_dos%" OR posts.guid like "%importedmedia%");

# delete posts attachment
delete posts
from wp_posts as posts
where posts.post_type = "attachment"
and posts.post_parent <> 0
and (posts.guid like "%importedmedia_dos%" OR posts.guid like "%importedmedia%");


select * from wp_posts
where post_type = "attachment"
and (guid like "%importedmedia_dos");
#  OR guid like "%importedmedia"


DELETE postmeta
FROM wp_postmeta as postmeta
JOIN (
SELECT pm.meta_id
FROM wp_postmeta as pm
LEFT JOIN wp_posts wp ON wp.id = pm.post_id
WHERE wp.id IS NULL
) AS meta_dos
ON meta_dos.meta_id = postmeta.meta_id;


select aap.*
from avantio_accomodations as ac
join avantio_accomodations_pictures as aap on ac.id = aap.avantio_accomodations
where language = "es" and ac.id = 371244
order by id asc;

update avantio_accomodations_pictures set uri_900x600 = "https://tiendapisosenmanresa.com/wp-content/uploads/importedmedia/chimenea.jpg"
where avantio_accomodations = 371244 and id = 3;

select * from wp_posts
where guid like "%importedmedia%" or like "%importedmedia_dos%";



DELETE t1
FROM contacts t1
INNER JOIN contacts t2
WHERE
t1.id < t2.id AND
t1.email = t2.email;

SELECT parentmeta.*
FROM wp_posts childpost
INNER JOIN wp_postmeta parentmeta ON (childpost.ID = parentmeta.meta_value)
WHERE parentmeta.meta_key = '_thumbnail_id'
AND parentmeta.post_id = 371420;


SELECT * FROM
(
    SELECT parentmeta.*
    FROM wp_posts childpost
    INNER JOIN wp_postmeta parentmeta ON (childpost.ID = parentmeta.meta_value)
    WHERE parentmeta.meta_key = '_thumbnail_id'
    AND parentmeta.post_id = 371420
) AS T1
INNER JOIN
(
    SELECT parentmeta.*
    FROM wp_posts childpost
    INNER JOIN wp_postmeta parentmeta ON (childpost.ID = parentmeta.meta_value)
    WHERE parentmeta.meta_key = '_thumbnail_id'
    AND parentmeta.post_id = 371420
) AS T2
where t1.id < t2.id
AND t1.email = t2.email;



DELETE t1
FROM
(
    SELECT parentmeta.*
    FROM wp_posts childpost
    INNER JOIN wp_postmeta parentmeta ON (childpost.ID=parentmeta.meta_value)
    WHERE parentmeta.meta_key = '_thumbnail_id'
    AND parentmeta.post_id = 371420
) as t2
where




SELECT childpost.*
FROM wp_posts childpost
INNER JOIN wp_postmeta parentmeta ON (childpost.ID=parentmeta.meta_value)
WHERE parentmeta.meta_key = '_thumbnail_id'
AND parentmeta.post_id = 371254;


SELECT parentmeta.*
FROM wp_posts childpost
INNER JOIN wp_postmeta parentmeta ON (childpost.ID=parentmeta.meta_value)
WHERE parentmeta.meta_key = '_thumbnail_id'
AND parentmeta.post_id = 371254;

# defaultimage_prop.jpg

SELECT * FROM `wp_posts`
where post_type = "attachment"
and post_parent <> 0
and guid like "%defaultimage_prop.jpg";


attatchment
meta_id  post_id  meta_key       meta_value
4790734   371254  _thumbnail_id  36805202006


# attachment image files
select * from wp_posts where post_type = "attachment" and post_mime_type = "image/jpeg";

# post meta attachment_file and attachment_metadata
select * from  wp_postmeta where meta_key = "_wp_attached_file" OR meta_key = "_wp_attachment_metadata";

# attachment image files
select *
from wp_posts
left join
where post_type = "attachment"
and post_mime_type = "image/jpeg";

# get postmeta null
SELECT postmeta.meta_id
FROM wp_postmeta as postmeta
         JOIN (
    SELECT pm.meta_id
    FROM wp_postmeta as pm
             LEFT JOIN wp_posts wp ON wp.id = pm.post_id
    WHERE wp.id IS NULL
) as x ON x.meta_id = postmeta.meta_id;


# get all menu items
SELECT *
FROM wp_terms AS t
LEFT JOIN wp_term_taxonomy AS tt ON tt.term_id = t.term_id
WHERE tt.taxonomy = 'nav_menu';

SELECT p.post_title, p.post_name, p.menu_order, pm.meta_value
FROM wp_posts AS p
         LEFT JOIN wp_term_relationships AS tr ON tr.object_id = p.ID
         LEFT JOIN wp_term_taxonomy AS tt ON tt.term_taxonomy_id = tr.term_taxonomy_id
         INNER JOIN wp_postmeta AS pm ON p.Id = pm.post_id
WHERE p.post_type = 'nav_menu_item'
  AND tt.term_id = 11 AND pm.meta_key = '_menu_item_url';


# get postemeta relationship between estae_property custom_post_type
SELECT posts.ID , posts.post_title , postmeta.*
FROM wp_posts as posts
LEFT JOIN wp_postmeta as postmeta ON posts.id = postmeta.post_id
where
posts.post_type = "estate_property"
AND (postmeta.meta_key = "_wp_attached_file" OR postmeta.meta_key = "_wp_attachment_metadata");


SELECT posts.ID , posts.post_title , postmeta.*
FROM wp_posts as posts
LEFT JOIN wp_postmeta as postmeta ON posts.id = postmeta.post_id
where
posts.post_type = "estate_property"
and
postmeta.meta_key like "prop%";

SELECT posts.ID , posts.post_title , postmeta.*
FROM wp_posts as posts
LEFT JOIN wp_postmeta as postmeta ON posts.id = postmeta.post_id
where posts.post_type = "estate_property"
and postmeta.meta_key like "prop_featured";


SELECT posts.ID , posts.post_title , postmeta.*
FROM wp_posts as posts
LEFT JOIN wp_postmeta as postmeta ON posts.id = postmeta.post_id
where
posts.post_type = "estate_property"
and
postmeta.meta_key like "property_tipo_piscina";



# delete postmeta null
DELETE postmeta
FROM wp_postmeta as postmeta
         JOIN (
    SELECT pm.meta_id
    FROM wp_postmeta as pm
             LEFT JOIN wp_posts wp ON wp.id = pm.post_id
    WHERE wp.id IS NULL
) AS meta_dos
              ON meta_dos.meta_id = postmeta.meta_id;


SELECT pm.*
FROM wp_postmeta pm
         -- anti-join - only return rows from pm that do NOT have a matching row in wp
         LEFT
             JOIN wp_posts wp
                  ON wp.id = pm.post_id
WHERE wp.post_type = "estate_property";


# get post_meta null
SELECT pm.*
FROM wp_postmeta pm
         -- anti-join - only return rows from pm that do NOT have a matching row in wp
         LEFT
             JOIN wp_posts wp
                  ON wp.id = pm.post_id
WHERE wp.id IS NULL;


SELECT pm.*
FROM wp_postmeta pm
LEFT JOIN wp_posts wp ON wp.id = pm.post_id
WHERE
wp.id IS NOT NULL
AND
wp.post_type = "estate_property"
AND
pm.meta_key like "property%";


SELECT pm.*
FROM wp_postmeta pm
LEFT JOIN wp_posts wp ON wp.id = pm.post_id
WHERE
wp.id IS NOT NULL
AND
wp.post_type = "estate_property"
AND
pm.meta_key = "property_tipo_piscina";


# clean post_meta
DELETE FROM wp_postmeta where meta_id IN
(
    SELECT pm.id
    FROM wp_postmeta pm
             -- anti-join - only return rows from pm that do NOT have a matching row in wp
             LEFT JOIN wp_posts wp
                       ON wp.id = pm.post_id
    WHERE wp.id IS NULL
);


# count meta key by name
select count(*) , meta_key as total from wp_postmeta group by meta_key;

# delete post meta by importmedia
delete from wp_postmeta where meta_key = "_wp_attached_file" AND meta_value like "importedmedia%";



# registros 145891
select * from avantio_accomodations;
select * from avantio_accomodations where id = 398054;


# get services
select * from dynamic_services;

# get service start for piscina
select * from dynamic_services where text_title like "Piscina%" order by id asc;

# piscina comunitaria
# select * from dynamic_services where id = 322;
# select * from dynamic_services where id = 14097;

# piscina privada
# select * from dynamic_services where id = 22156;

# get services
# 322 ,  14097 | piscina comunitaria
# 22156 piscina privada
# piscina comunitaria y piscina privada
select * from dynamic_services where id IN(322,22156) AND language = "es";

# update posts 2automocion tiendapisosenmanresa
update wp_posts
set guid = REPLACE(guid , 'https://tiendapisosenmanresa.com' , 'http://5.9.108.201')
where guid like 'https://tiendapisosenmanresa.com%';


# change options domain
update wp_options
set option_value = REPLACE(option_value , 'https://2automocion.com' , 'https://tiendapisosenmanresa.com')
where option_value like 'https://2automocion%';


SELECT option_value
FROM wp_options
WHERE option_name = "transient_doing_cron";

# polylang translations english
SELECT * FROM wp_posts WHERE post_status = 'publish'
AND ID IN (
    SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(description, '"en";i:', -1), ';',1)
    FROM `wp_term_taxonomy` WHERE `taxonomy` = 'post_translations'
    ) order by ID desc;

SELECT * FROM wp_posts WHERE post_status = 'publish'
                         AND ID IN (
        SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(description, '"fr";i:', -1), ';',1)
        FROM `wp_term_taxonomy` WHERE `taxonomy` = 'post_translations'
    ) order by ID desc;

SELECT * FROM wp_posts WHERE post_status = 'publish'
                         AND ID IN (
        SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(description, '"ca";i:', -1), ';',1)
        FROM `wp_term_taxonomy` WHERE `taxonomy` = 'post_translations'
    ) order by ID desc;


UPDATE wp_posts
SET guid = REPLACE(guid, 'https://2automocion.com', 'https://tiendapisosenmanresa.com')
WHERE post_status = 'publish'
AND ID IN (
    SELECT SUBSTRING_INDEX(SUBSTRING_INDEX(description, '"ca";i:', -1), ';',1)
    FROM `wp_term_taxonomy` WHERE `taxonomy` = 'post_translations'
)
AND guid like 'https://2automocion%';


select * from wp_postmeta where meta_value like  "2automocion%";
# templates elementor
select * from wp_postmeta where meta_key = "_wp_page_template";
select * from wp_postmeta;

# obtenemos todos los menu items que empiezan por el link https://2automocion%
SELECT *
FROM wp_posts
WHERE post_type = 'nav_menu_item'
AND guid like 'https://2automocion%';

UPDATE wp_posts
SET guid = REPLACE(guid, 'https://2automocion.com', 'https://tiendapisosenmanresa.com')
WHERE post_type = 'nav_menu_item'
AND guid like 'https://2automocion%';


SELECT *
FROM wp_terms AS t
LEFT JOIN wp_term_taxonomy AS tt ON tt.term_id = t.term_id
WHERE tt.taxonomy = 'nav_menu';


SELECT p.post_title, p.post_name, p.menu_order, pm.meta_value
FROM wp_posts AS p
LEFT JOIN wp_term_relationships AS tr ON tr.object_id = p.ID
LEFT JOIN wp_term_taxonomy AS tt ON tt.term_taxonomy_id = tr.term_taxonomy_id
INNER JOIN wp_postmeta AS pm ON p.Id = pm.post_id
WHERE p.post_type = 'nav_menu_item'
AND tt.term_id = 11 AND pm.meta_key = '_menu_item_url';



select * from wp_postmeta;
select * from wp_postmeta where meta_key = "mega_details";

/*
SELECT option_value
FROM wp_options
WHERE option_name = "transient_doing_cron";


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

SELECT option_value FROM options WHERE option_name = %_transient_doing_cron;


# call get_post_meta_by_meta_key("mega_details");
# call get_posts_by_type("estate_property");


# availavility
call get_availability(136089);

select * from avantio_rates where accommodation_id = 136089;


# SELECT id, avantio_occupation_rules FROM avantio_accomodations WHERE id=" . $id . " ;


select * from wp_term_taxonomy;

# terms and taxonomy of custom_post_type = estate_property 
SELECT wt.name, wtt.taxonomy, wp.post_title, wp.post_date 
FROM wp_terms wt
INNER JOIN wp_term_taxonomy wtt ON wt.term_id = wtt.term_id
INNER JOIN wp_term_relationships wtr ON wtt.term_taxonomy_id = wtr.term_taxonomy_id
INNER JOIN wp_posts wp ON wtr.object_id = wp.ID 
WHERE wp.post_type = 'estate_property';


# terms and taxonomy of custom_post_type = estate_property 
SELECT wt.name, wtt.taxonomy, wp.post_title, wp.post_date 
FROM wp_terms wt
INNER JOIN wp_term_taxonomy wtt ON wt.term_id = wtt.term_id
INNER JOIN wp_term_relationships wtr ON wtt.term_taxonomy_id = wtr.term_taxonomy_id
INNER JOIN wp_posts wp ON wtr.object_id = wp.ID 
WHERE wp.post_type = 'estate_agent';



select DISTINCT(post_type) from wp_posts;

attachment
estate_agent
estate_property
membership_package
nav_menu_item
page
post
revision


select * from avantio_accomodations_pictures;


select * from avantio_accomodations_extras where avantio_accomodations = 351396;
select * from avantio_accomodations_extras where avantio_accomodations = 361789;
select * from dynamic_services order by id asc;


# default custom post_type
# posts
delete from wp_posts where post_type = "post";

# page
delete from wp_posts where post_type = "page";

# attachments
delete from wp_posts where post_type = "attachment";

# revision
delete from wp_posts where post_type = "revision";

# navigation menu
delete from wp_posts where post_type = "nav_menu_item";

# estate_property new post_type
delete from wp_posts where post_type = "estate_property";

# delete option service
delete from wp_options where option_name like "service%";

# delete option region
delete from wp_options where option_name like "region%";

# delete option city
delete from wp_options where option_name like "city%";

# delete option locality
delete from wp_options where option_name like "locality%";

# delete option taxonomy
delete from wp_options where option_name like "taxonomy%";


# get service option
select * from avantio_accomodations_extras where avantio_accomodations = 361789;
select * from dynamic_services;


select * from wp_options where option_name like "service%";
delete from wp_options where option_name like "service%";


select * from avantio_accomodations_extras where avantio_accomodations = 361789;

select * from wp_options;

select geo_country.text_title as country, geo_region.text_title as region, 
geo_city.text_title as city , geo_locality.text_title as geolocality ,  
 ac.*
from avantio_accomodations as ac
join dynamic_geocountry as geo_country on geo_country.id = ac.dynamic_geocountry
join dynamic_georegion as geo_region on geo_region.id = ac.dynamic_georegion
join dynamic_geocity as geo_city on geo_city.id = ac.dynamic_geocity
join dynamic_geolocality as geo_locality on geo_locality.id = ac.dynamic_geolocality
where ac.id = 351396 and ac.language = "es"
and geo_country.language = "es"
and geo_region.language = "es"
and geo_city.language = "es"
and geo_locality.language = "es";

# and geo_district.language = "es";
# join dynamic_geodistrict as geo_district on geo_district.id = ac.dynamic_geodistrict
# geo_district.text_title as geodistrict 


select * from wp_posts where post_type = "estate_property";

select wp_postmeta.*
from wp_posts
join wp_postmeta on wp_postmeta.post_id = wp_posts.id
where
post_type = "estate_property"
and ID = 371589;

select wp_postmeta.meta_value
from wp_posts
join wp_postmeta on wp_postmeta.post_id = wp_posts.id
where
post_type = "page"
and meta_key like "_elementor_data"
and post_id = 35380;

35380

select wp_postmeta.*
from wp_postmeta
where meta_key like "_elementor_data";


insert into wp_postmeta (meta_id , post_id , meta_key , meta_value)
values (null , 379342 , 'page_custom_zoom' , 16);


# default custom post_type
# posts
delete from wp_posts where post_type = "post";

# page
delete from wp_posts where post_type = "page";

# attachments
delete from wp_posts where post_type = "attachment";

# revision
delete from wp_posts where post_type = "revision";

# navigation menu
delete from wp_posts where post_type = "nav_menu_item";

# estate_property new post_type
delete from wp_posts where post_type = "estate_property";


# default custom post_type
# posts
select * from wp_posts where post_type = "post";
# page
select * from wp_posts where post_type = "page";
# attachments
select * from wp_posts where post_type = "attachment";
# revision
select * from wp_posts where post_type = "revision";
# navigation menu
select * from wp_posts where post_type = "nav_menu_item";


# estate_property new post_type
select * from wp_posts where post_type = "estate_property";

select ac.* from avantio_accomodations as ac order by ac.id asc;


# delete from wp_options where option_name like "taxonomy_%";
select * from wp_options;


select ac.* from avantio_accomodations as ac order by ac.id asc;

select * from dynamic_taxonomy_group;


select * from dynamic_geocountry where language IN('en','es') order by id asc;
select * from dynamic_georegion where id = '2' and language = 'en';


# geo
select * from dynamic_geocountry order  by id asc;
select * from dynamic_georegion order  by id asc;
select * from dynamic_geocity order  by id asc;
select * from dynamic_geolocality order  by id asc;
select * from dynamic_geodistrict order  by id asc;


delete from wp_options where option_name like "taxonomy_%";
select * from wp_options where option_name like "taxonomy_%";

select ac.* 
from avantio_accomodations as ac
order by ac.id asc;

# geo_titles
select geo_country.text_title as dynamic_geocountry, geo_region.text_title as dynamic_georegion, 
geo_city.text_title as dynamic_geoccity, geo_locality.text_title as dynamic_geolocality , 
geo_district.text_title as dynamic_geodistrict  
from dynamic_geocountry as geo_country
join dynamic_georegion as geo_region on geo_region.dynamic_geocountry = geo_country.id
join dynamic_geocity as geo_city on geo_city.dynamic_georegion = geo_region.id
join dynamic_geolocality as geo_locality on geo_locality.dynamic_geocity = geo_city.id
join dynamic_geodistrict as geo_district on geo_district.dynamic_geolocality = geo_locality.id
where ( geo_country.language = "es" and geo_country.id = 1)
and
(geo_region.language = "es" and geo_region.id =  14)
and
(geo_city.language = "es" and geo_city.id = 7)
and
(geo_locality.language = "es" and geo_locality.id = 462)
and
(geo_district.language = "es" and geo_district.id = 916);


select ac.* 
from avantio_accomodations as ac
order by ac.id asc;

# select por id
select ac.* , dr.* 
from avantio_accomodations as ac
join dynamic_rooms as dr on dr.id = ac.id
order by ac.id asc;


# select por lenguage
select ac.* , dr.* , dtax.text_title as taxonomy ,  
dgeocountry.text_title as country , dgeoregion.text_title as region, dgeocity.text_title as city, 
dgeolocality.text_title as locality , dgeodistrict.text_title as district
from avantio_accomodations as ac
join dynamic_rooms as dr on dr.id = ac.id
join avantio_accomodations_locations as aal on aal.avantio_accomodations = ac.id
join dynamic_taxonomy as dtax on dtax.id = ac.dynamic_taxonomy
join dynamic_geocountry as dgeocountry on dgeocountry.id = ac.dynamic_geocountry
join dynamic_georegion as dgeoregion on dgeoregion.id = ac.dynamic_georegion
join dynamic_geocity as dgeocity on dgeocity.id = ac.dynamic_geocity
join dynamic_geolocality as dgeolocality on dgeolocality.id = ac.dynamic_geolocality
join dynamic_geodistrict as dgeodistrict on dgeodistrict.id = ac.dynamic_geodistrict
where 
dr.language = "es" 
and 
ac.language = "es"
and 
dtax.language = "es"
and 
dgeocountry.language = "es"
and 
dgeoregion.language = "es"
and 
dgeocity.language = "es"
and 
dgeolocality.language = "es"
and 
dgeodistrict.language = "es";
*/


/*
select ac.* , dr.* , dtax.text_title as taxonomy ,  
dgeocountry.text_title as country , dgeoregion.text_title as region, dgeocity.text_title as city, 
dgeolocality.text_title as locality , dgeodistrict.text_title as district
from avantio_accomodations as ac
join dynamic_rooms as dr on dr.id = ac.id
join avantio_accomodations_locations as aal on aal.avantio_accomodations = ac.id
join dynamic_taxonomy as dtax on dtax.id = ac.dynamic_taxonomy
join dynamic_geocountry as dgeocountry on dgeocountry.id = ac.dynamic_geocountry
join dynamic_georegion as dgeoregion on dgeoregion.id = ac.dynamic_georegion
join dynamic_geocity as dgeocity on dgeocity.id = ac.dynamic_geocity
join dynamic_geolocality as dgeolocality on dgeolocality.id = ac.dynamic_geolocality
join dynamic_geodistrict as dgeodistrict on dgeodistrict.id = ac.dynamic_geodistrict
where 
dr.language = "es" 
and 
ac.language = "es"
and 
dtax.language = "es"
and 
dgeocountry.language = "es"
and 
dgeoregion.language = "es"
and 
dgeocity.language = "es"
and 
dgeolocality.language = "es"
and 
dgeodistrict.language = "es";
*/


/*

# select * from avantio_accomodations;
# select * from dynamic_rooms;

# 98 * 98


join avantio_accomodations_extras as aae on aae.id = ac.id


select ac.* , dr.* from avantio_accomodations as ac
left join dynamic_rooms as dr on dr.id = ac.id order by ac.id asc;


use automoci_inmobiliaria_dos;
use tiendapi_villas;

select * from wp_options where option_name = "wp_estate_booking_type";
# select * from wp_options;
select * from wp_postmeta where meta_key = "mega_details";
select * from wp_postmeta where meta_key = "custom_price";

# CREATE DATABASE tiendapi_villas COLLATE utf8_general_ci CHARACTER SET utf8;
# use automoci_inmobiliaria_dos;

# romms + taxonomy
select dt.* from avantio_accomodations as ac
join dynamic_taxonomy as dt on ac.dynamic_taxonomy = dt.id; 


# romms + acommodation
select * from avantio_accomodations as ac
left join dynamic_rooms as dr on dr.id = ac.id order by ac.id asc;


delete from hshv_avantio_rates where accommodation_id <= 42; 

select * from dynamic_services;

drop database automoci_inmobiliaria;
create database automoci_inmobiliaria CHARACTER SET utf8 COLLATE utf8_general_ci;
# CREATE DATABASE tiendapi_blog CHARACTER SET utf8 collate utf8_general_ci;

# use tiendapi_blog;
# use wordpress_villas;
# use wordpress_5_5_3;
# use automoci_inmobiliaria_dos;
# use automoci_inmobiliaria;
use wordpress_5_5_3;

# attachments
# select * from wp_posts where post_type = "attachment";
# select * from wp_posts where post_type = "estate_property" OR post_type = "post";
# select * from wp_posts where post_type = "estate_property";
select ID from wp_posts where post_type = "estate_property";


Array
(
    [0] => Array
    (
        [term_id] => 24
            [name] => English
            [slug] => en
            [term_group] => 0
            [term_taxonomy_id] => 24
            [count] => 3
            [tl_term_id] => 25
            [tl_term_taxonomy_id] => 25
            [tl_count] => 1
            [locale] => en_US
            [is_rtl] => 0
            [w3c] => en-US
            [facebook] => en_US
            [home_url] => http://localhosth/wordpress/index.php/en/welcome/
            [search_url] => http://localhosth/wordpress/index.php/en/
            [host] =>
            [mo_id] => 198
            [page_on_front] => 219
            [page_for_posts] => 219
            [flag_code] => us
            [flag_url] => http://localhosth/wordpress/wp-content/plugins/polylang/flags/us.png
            [flag] => <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAAmVBMVEViZsViZMJiYrf9gnL8eWrlYkjgYkjZYkj8/PujwPybvPz4+PetraBEgfo+fvo3efkydfkqcvj8Y2T8UlL8Q0P8MzP9k4Hz8/Lu7u4DdPj9/VrKysI9fPoDc/EAZ7z7IiLHYkjp6ekCcOTk5OIASbfY/v21takAJrT5Dg6sYkjc3Nn94t2RkYD+y8KeYkjs/v7l5fz0dF22YkjWvcOLAAAAgElEQVR4AR2KNULFQBgGZ5J13KGGKvc/Cw1uPe62eb9+Jr1EUBFHSgxxjP2Eca6AfUSfVlUfBvm1Ui1bqafctqMndNkXpb01h5TLx4b6TIXgwOCHfjv+/Pz+5vPRw7txGWT2h6yO0/GaYltIp5PT1dEpLNPL/SdWjYjAAZtvRPgHJX4Xio+DSrkAAAAASUVORK5CYII=" alt="English" width="16" height="11" style="width: 16px; height: 11px;" />
            [custom_flag_url] =>
            [custom_flag] =>
        )

    [1] => Array
(
            [term_id] => 27
            [name] => Español
            [slug] => es
            [term_group] => 0
            [term_taxonomy_id] => 27
            [count] => 4
            [tl_term_id] => 28
            [tl_term_taxonomy_id] => 28
            [tl_count] => 1
            [locale] => es_ES
            [is_rtl] => 0
            [w3c] => es-ES
            [facebook] => es_ES
            [home_url] => http://localhosth/wordpress/
            [search_url] => http://localhosth/wordpress/
            [host] =>
            [mo_id] => 200
            [page_on_front] => 217
            [page_for_posts] => 217
            [flag_code] => es
            [flag_url] => http://localhosth/wordpress/wp-content/plugins/polylang/flags/es.png
            [flag] => <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAALCAMAAABBPP0LAAAAflBMVEX/AAD9AAD3AADxAADrAAD/eXn9bGz8YWH8WVn6UVH5SEj5Pz/3NDT0Kir9/QD+/nL+/lT18lDt4Uf6+j/39zD39yf19R3n5wDxflXsZ1Pt4Y3x8zr0wbLs1NXz8xPj4wD37t3jmkvsUU/Bz6nrykm3vJ72IiL0FBTyDAvhAABEt4UZAAAAX0lEQVR4AQXBQUrFQBBAwXqTDkYE94Jb73+qfwVRcYxVQRBRToiUfoaVpGTrtdS9SO0Z9FR9lVy/g5c99+dKl30N5uxPuviexXEc9/msC7TOkd4kHu/Dlh4itCJ8AP4B0w4Qwmm7CFQAAAAASUVORK5CYII=" alt="Español" width="16" height="11" style="width: 16px; height: 11px;" />
            [custom_flag_url] =>
            [custom_flag] =>
        )

)



# select * from wp_postmeta;
select * from wp_options;
select * from wp_postmeta where post_id = 312 OR post_id = 313;
select* from wp_terms;

SELECT * FROM wp_terms;


SELECT wt.name, wp.post_title, wp.post_date 
FROM wp_terms wt
INNER JOIN wp_term_taxonomy wtt ON wt.term_id = wtt.term_id
INNER JOIN wp_term_relationships wtr ON wtt.term_taxonomy_id = wtr.term_taxonomy_id
INNER JOIN wp_posts wp ON wtr.object_id = wp.ID 
WHERE wp.post_type = 'estate_property';


select * from dynamic_services where language = "es";

select * from wp_options;

# todos los terms
SELECT * FROM wp_terms;
# relación terms y taxonomias
SELECT * FROM wp_term_taxonomy;
# relación (terms y taxonomias) wp_term_taxonomy con post o custom post
SELECT * FROM wp_term_relationships;

SELECT wt.name, wp.post_title, wp.post_date 
FROM wp_terms wt
INNER JOIN wp_term_taxonomy wtt ON wt.term_id = wtt.term_id
INNER JOIN wp_term_relationships wtr ON wtt.term_taxonomy_id = wtr.term_taxonomy_id
INNER JOIN wp_posts wp ON wtr.object_id = wp.ID 
WHERE wp.post_type = 'post';

# consultas del modelo blog_model de la aplicación

# consulta para devolver los posts con destacado_home custom_field
# 1328
# 1330
# 1326
SELECT DISTINCT (ID),p.post_title, p.post_status, p.post_date, m.meta_key, m.meta_value
FROM wp_posts as p
INNER JOIN wp_postmeta as m
INNER JOIN wp_term_relationships r ON r.object_id = p.ID
INNER JOIN wp_term_taxonomy t ON t.term_taxonomy_id = r.term_taxonomy_id 
INNER JOIN wp_terms wt on wt.term_id = t.term_id
WHERE 
p.post_status = 'publish' 
and m.meta_key = 'destacado_home' 
and m.meta_value = 'true' 
AND p.ID = m.post_id; 

SELECT * from wp_posts 
WHERE ID in (
   SELECT meta_value FROM wp_postmeta 
   WHERE meta_key = '_thumbnail_id'
   AND post_id = 1328
);

# luego recorremos el bucle anterior y cogemos la imagen_featured
# mas que nada porque tenemos que consultar por postmeta igual que la anterior

SELECT 
DISTINCT(p.ID),
concat( (select option_value from wp_options where option_name ='siteurl'  limit 1), '/wp-content/uploads/' , childmeta.meta_value) as imagen,
p.post_name,
p.post_title, 
p.post_content,
p.post_excerpt,
p.post_parent,
p.post_status,
p.post_type,
p.post_author,
p.guid,
p.post_date,
p.post_date_gmt,
p.post_modified_gmt
FROM wp_postmeta childmeta 
INNER JOIN wp_postmeta parentmeta ON (childmeta.post_id = parentmeta.meta_value)
INNER JOIN wp_posts as p ON childmeta.post_id = p.ID
WHERE parentmeta.meta_key='_thumbnail_id' 
and childmeta.meta_key = '_wp_attached_file' 
and p.post_parent = 0;
# añadimos el post id anterior en post_parent = 1 y cambiamos 1 por el post id


# mostramos las categorias y el slug de lo anterior
SELECT 
p.*,wt.slug as categoria
from wp_posts as p
INNER JOIN wp_term_relationships r ON r.object_id=p.ID
INNER JOIN wp_term_taxonomy t ON t.term_taxonomy_id = r.term_taxonomy_id
INNER JOIN wp_terms wt on wt.term_id = t.term_id
where p.ID = 1 AND t.taxonomy = 'category';


select * from wp_options where option_name= "avantio"; 

# normal queries
# posts
select * from wp_posts order by post_type;
select * from wp_postmeta;

# categories
select * from wp_term_relationships;
select * from wp_term_taxonomy;
select * from wp_termmeta;
select * from wp_terms;

# tablas para modelo dynamic
# en avantio_cron_cli
CREATE TABLE `dynamic_one` (
 `id` int(11) NOT NULL AUTO_INCREMENT,
 `name` varchar(120) DEFAULT NULL,
 `email` varchar(12