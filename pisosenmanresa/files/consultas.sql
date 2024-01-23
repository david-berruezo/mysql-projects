
# see all indexes
SELECT DISTINCT TABLE_NAME, INDEX_NAME
FROM INFORMATION_SCHEMA.STATISTICS
WHERE TABLE_SCHEMA = 'pisosenm_inmobiliaria_siete';

# show all foreign keys
# REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME
SELECT DISTINCT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE REFERENCED_TABLE_SCHEMA = 'pisosenm_inmobiliaria_siete';


SELECT TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME, REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE REFERENCED_TABLE_SCHEMA = 'pisosenm_inmobiliaria_siete'
AND REFERENCED_TABLE_NAME = 'automatizacion';

# query all foreign keys
SELECT * FROM information_schema.TABLE_CONSTRAINTS
WHERE information_schema.TABLE_CONSTRAINTS.CONSTRAINT_TYPE = 'FOREIGN KEY'
AND information_schema.TABLE_CONSTRAINTS.TABLE_SCHEMA = 'pisosenm_inmobiliaria_siete';
# AND information_schema.TABLE_CONSTRAINTS.TABLE_NAME = 'automatizacion';

# CASE
SELECT users.* ,
CASE
    WHEN id > 1 THEN "The quantity is greater than 1"
    WHEN id = 1 THEN "The quantity is 1"
    ELSE "The quantity is under 30"
END
FROM users;

# case
SELECT users.*
FROM users
ORDER BY
    (CASE
         WHEN City IS NULL THEN Country
         ELSE City
    END);


# IF


SELECT *
FROM users
WHERE id IN
(
SELECT id FROM users
WHERE id = 140;
);

# select and update
UPDATE tableA SET validation_check =
(
SELECT if(start_DTS > end_DTS, 'VALID', '') AS validation_check
FROM tableA
INNER JOIN tableB ON name_A = name_B
WHERE id_A = tableA.id_A
)

SELECT * FROM users
JOIN
(
SELECT id , COUNT(*) as contador FROM users
WHERE ID = 140;
) AS g
ON g.id = users.id;

UPDATE users SET
SELECT * FROM users
WHERE ID = 140;

# insert from select
INSERT INTO users_temp (username , password , email , grupo , status , roleId)
SELECT (username , password , email , grupo , status , roleId )
FROM users where id = 1;

INSERT INTO users_temp
    (SELECT NULL , username , password , email , grupo , status , roleId
     FROM users);

# get room
select ds.dynamic_agencia,ds.text_latitud,ds.text_altitud,ds.text_title,ds.auto_slug,ds.text_slug,ds.number_precioinmo,ds.number_precioalq,ds.text_ref,ds.text_zona, da.text_title as accion,
dg.image_1 as foto1,dg.image_2 as foto2,dgu.image_1 as foto3,dgu.image_2 as foto4,dg.text_title_image_1,dg.text_title_image_2,dgl.text_title as geolocality,dgc.text_title as geocity,
ai.number_habitaciones as habitaciones,ai.number_banyos,ai.number_aseos,dtg.text_title as taxonomia_group,dgci.text_title as cp, daa.text_title as agencia,daa.id as id_agencia,
daa.auto_slug as auto_slug_agencia,daa.text_slug as text_slug_agencia, usu.text_title as usuario,usu.id as id_usuario,usu.auto_slug as auto_slug_usuario,usu.text_slug as text_slug_usuario,
ds.dynamic_taxonomy_group,ds.dynamic_taxonomy,ds.dynamic_geolocality,dgip.image_principal
from dynamic_rooms as ds
left join avantio_inmovilla as ai on ai.id = ds.id
left join dynamic_accion as da on da.id = ds.dynamic_accion
left join dynamic_agencia as daa on daa.id = ds.dynamic_agencia
left join dynamic_usuario as usu on usu.id = ds.dynamic_usuario
left join dynamic_gallery_inmo_principal as dgip on dgip.id = ds.dynamic_agencia
left join dynamic_gallery_inmo as dg on dg.id = ds.dynamic_gallery_inmo
left join dynamic_gallery_usuario as dgu on dgu.id = ds.dynamic_gallery_usuario
left join dynamic_geocity as dgc on dgc.id = ds.dynamic_geocity
left join dynamic_geolocality as dgl on dgl.id = ds.dynamic_geolocality
left join dynamic_geodistrict as dgci on dgci.id = ds.dynamic_geolocality
left join dynamic_taxonomy as dt on dt.id = ds.dynamic_taxonomy
left join dynamic_taxonomy_group as dtg on dtg.id = ds.dynamic_taxonomy_group
where ds.checkbox_destacado_detalle_inmobiliaria_lateral = 1
AND ds.language = 'es'
group by ds.dynamic_agencia order by ds.dynamic_agencia asc ;

# get all tables from information_schema.tables
SELECT table_name
FROM information_schema.tables
WHERE table_schema = "pisosenm_inmobiliaria_seis";

# group agencies select
SELECT * FROM dynamic_rooms;

# all selects
SELECT * FROM automatizacion;
SELECT * FROM avantio_inmovilla;
SELECT * FROM avantio_inmovilla_online;
SELECT * FROM ci_sessions;
SELECT * FROM contacto;
SELECT * FROM devices;
SELECT * FROM dynamic_accion;
SELECT * FROM dynamic_advantages;
SELECT * FROM dynamic_agencia;
SELECT * FROM dynamic_agencia_online;
SELECT * FROM dynamic_agente_inmobiliario;
SELECT * FROM dynamic_agente_inmobiliario_online;
SELECT * FROM dynamic_cron;
SELECT * FROM dynamic_documents_inmo;
SELECT * FROM dynamic_documents_usuario;
SELECT * FROM dynamic_empresa;
SELECT * FROM dynamic_faqsagentes;
SELECT * FROM dynamic_faqsagentes_type;
SELECT * FROM dynamic_faqsinmobiliarias;
SELECT * FROM dynamic_faqsinmobiliarias_type;
SELECT * FROM dynamic_faqspropietarios;
SELECT * FROM dynamic_faqspropietarios_type;
SELECT * FROM dynamic_franquicia;
SELECT * FROM dynamic_gallery_agente_inmobiliario_principal;
SELECT * FROM dynamic_gallery_empresa;
SELECT * FROM dynamic_gallery_empresa_banner;
SELECT * FROM dynamic_gallery_empresa_principal;
SELECT * FROM dynamic_gallery_franquicia_principal;
SELECT * FROM dynamic_gallery_inmo;
SELECT * FROM dynamic_gallery_inmo_online;
SELECT * FROM dynamic_gallery_inmo_principal;
SELECT * FROM dynamic_gallery_usuario;
SELECT * FROM dynamic_gallery_usuario_principal;
SELECT * FROM dynamic_geocity;
SELECT * FROM dynamic_geocountry;
SELECT * FROM dynamic_geodistrict;
SELECT * FROM dynamic_geolocality;
SELECT * FROM dynamic_georegion;
SELECT * FROM dynamic_mail_empresa;
SELECT * FROM dynamic_mail_tipo_portal;
SELECT * FROM dynamic_offers;
SELECT * FROM dynamic_offers_taxonomy;
SELECT * FROM dynamic_pages;
SELECT * FROM dynamic_rooms;
SELECT * FROM dynamic_rooms_online;
SELECT * FROM dynamic_taxonomy;
SELECT * FROM dynamic_taxonomy_city;
SELECT * FROM dynamic_taxonomy_group;
SELECT * FROM dynamic_testimonials;
SELECT * FROM dynamic_usuario;
SELECT * FROM dynamic_usuario_online;
SELECT * FROM inmovilla_calidades;
SELECT * FROM inmovilla_ciudades;
SELECT * FROM inmovilla_paises;
SELECT * FROM inmovilla_tipos;
SELECT * FROM languages;
SELECT * FROM message;
SELECT * FROM newsletter;
SELECT * FROM password_reset;
SELECT * FROM preferences;
SELECT * FROM roles;
SELECT * FROM users;
SELECT * FROM users_old;
SELECT * FROM users_online;

# copy rows from database pisosenm_inmobiliaria_cinco table users
# to pisosenm_inmobiliaria_seis table users_dos
# the first 70 rows
INSERT INTO users_dos
SELECT u.*
FROM pisosenm_inmobiliaria_cinco.users as u
WHERE id < 70;

# copy ....
INSERT INTO users_temp (username , password , email , grupo , status , roleId)
SELECT (username , password , email , grupo , status , roleId )

INSERT INTO dynamic_pages()
SELECT u.*
FROM pisosenm_inmobiliaria.dynamic_pages as u
order by id asc;

# relación uno a varios
alter table `dynamic_pages` add constraint `fk_dynamic_pages_dynamic_gallery_franquicia_principal_constraint` foreign key (`dynamic_gallery_franquicia_principal`) references dynamic_gallery_franquicia_principal(`id`)
on update cascade
on delete cascade;

# get all tables from information_schema.tables
SELECT table_name
FROM information_schema.tables
WHERE table_schema = "pisosenm_inmobiliaria_seis";

# columns
show full columns from avantio_accomodations;
show columns from avantio_accomodations;

SELECT COLUMN_NAME
FROM information_schema.COLUMNS
WHERE TABLE_NAME = 'avantio_accomodations';

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = "transactions"
AND TABLE_SCHEMA = 'mydbname"


# copy rows from database pisosenm_inmobiliaria_cinco table users
# to pisosenm_inmobiliaria_seis table users_dos
# the first 70 rows
INSERT INTO users_dos(id , username , password , email , grupo , status , roleId)
SELECT (id+70) as id , username , password , email , grupo , status , roleId
FROM pisosenm_inmobiliaria_cinco.users as u;

# get all tables from information_schema.tables
SELECT avantio_accomodations
FROM information_schema.tables
WHERE table_schema = "phpandfr_portvil_dos";

# create table
CREATE TABLE users_tres like users;

# copy rows from users to users_tres
INSERT INTO users_tres
SELECT u.*
FROM pisosenm_inmobiliaria_seis.users as u;

# rename tables
RENAME table users to users_cuatro;
RENAME table users_dos to users;
RENAME table users_cuatro to users_dos;


# use phpandfr_inmobiliaria_blog;
use pisosenm_inmobiliaria;

set sql_safe_updates = 0;

SELECT * FROM dynamic_rooms 
WHERE
dynamic_taxonomy_group = 8
AND
checkbox_destacado_home = 1;
    

SELECT * FROM dynamic_rooms 
WHERE
dynamic_taxonomy_group = 8;
    

# all select


# print destacados home
# pisos
# call print_destacados_home(1);
# casas
# call print_destacados_home(2);
# oficinas
# call print_destacados_home(3);
# locales
# call print_destacados_home(4);
# parkings
# call print_destacados_home(5);
# terrenos
# call print_destacados_home(6);
# naves
# call print_destacados_home(7);
# edificios
# call print_destacados_home(8);


# print propiedades taxonomias
# pisos
# call print_propiedades_taxonomias(1);
# casas
# call print_propiedades_taxonomias(2);
# oficinas
# call print_propiedades_taxonomias(3);
# locales
# call print_propiedades_taxonomias(4);
# parkings
# call print_propiedades_taxonomias(5);
# terrenos
# call print_propiedades_taxonomias(6);
# naves
# call print_propiedades_taxonomias(7);
# edificios
# call print_propiedades_taxonomias(8);

select * from dynamic_gallery_inmo;
# select * from dynamic_rooms where dynamic_taxonomy_group = 1;
# select * from dynamic_rooms where dynamic_taxonomy_group = 6
# select * from dynamic_taxonomy_group;
# select * from dynamic_rooms where dynamic_taxonomy_group = 8;
# select * from dynamic_rooms where dynamic_taxonomy_group = 2 and checkbox_destacado_home = 1;
# select * from dynamic_rooms where dynamic_taxonomy_group = 2;

select * from users;
select id from users where username like 'ivanpozo%';
select * from dynamic_usuario; 
select id from dynamic_usuario where auto_slug like 'ivanpozo%'; 

RENAME TABLE `users` TO `users_old`;
RENAME TABLE `users_temp` TO `users`;


# CREATE TABLE users_temp LIKE users;

insert into users_temp values
(1, "franquiciado", "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "franquiciado@pisosmanresa.com", "franquicia", "ACTIVED", 2),
(2, "usuario", "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@usuario.es", "usuario", "ACTIVED", 4),
(3, "no_usuario", "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@nousuario.es", "no-usuario", "ACTIVED", 5),
(6, "consultin" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@consultin.es", "inmobiliaria", "ACTIVED", 9),
(7, "ainmobles" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@ainmobles.cat", "inmobiliaria", "ACTIVED", 9),
(8, "tothabitatge" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@tothabitatge.com", "inmobiliaria", "ACTIVED", 9),
(9, "grupsolnou" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@grupsolnou.com", "inmobiliaria", "ACTIVED", 9),
(10, "vitalinmobles" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@vitalinmobles.com", "inmobiliaria", "ACTIVED", 9),
(11, "fedisainmobles" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@fedisainmobles.com", "inmobiliaria", "ACTIVED", 9),
(22, "layvak" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@layvak.com", "inmobiliaria", "ACTIVED", 9),
(23, "besthouse" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@besthouse.com", "inmobiliaria", "ACTIVED", 9),
(24, "pisosafys" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@pisosafys.com", "inmobiliaria", "ACTIVED", 9),
(25, "vicmoba" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@vicmoba.com", "inmobiliaria", "ACTIVED", 9),
(26, "macrofincas" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@macrofincas.com", "inmobiliaria", "ACTIVED", 9),
(27, "bsninmobles" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@bsninmobles.com", "inmobiliaria", "ACTIVED", 9),
(28, "besthousemanresa" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@besthousemanresa.com", "inmobiliaria", "ACTIVED", 9),
(29, "inllobsa" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@besthousemanresa.com", "inmobiliaria", "ACTIVED", 9),
(30, "installat" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@installat.com", "inmobiliaria", "ACTIVED", 9),
(31, "vidainmo" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@vidainmo.com", "inmobiliaria", "ACTIVED", 9),
(32, "bonavista" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@bonavista.com", "inmobiliaria", "ACTIVED", 9),
(34, "bolsadelavivienda" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@bolsadelavivienda.com", "inmobiliaria", "ACTIVED", 9),
(38, "lesclaus" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@lesclaus.com", "inmobiliaria", "ACTIVED", 9),
(41, "finsetinmobles" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@finsetinmobles.com", "inmobiliaria", "ACTIVED", 9),
(42, "lmfinques" , "69b1f3b2706d3958ef6dbd456a9acf9737df5920", "info@lmfinques.com", "inmobiliaria", "ACTIVED", 9);

# where DemoTable2.StudentId=DemoTable1.PersonId
# update users_temp, users set users_temp.id = users.id;

INSERT INTO users_temp (username , password , email , grupo , status , roleId) 
SELECT (username , password , email , grupo , status , roleId ) 
FROM users where id = 1;

INSERT INTO users_temp 
(SELECT NULL , username , password , email , grupo , status , roleId  
FROM users);

# select * from users order by id desc;
# 24
# select id from users where username like 'ivanpozo%';

# tablas manuales 
create table avantio_inmovilla_online like avantio_inmovilla;
create table dynamic_agencia_online like dynamic_agencia;
create table dynamic_agente_inmobiliario_online like dynamic_agente_inmobiliario;
create table dynamic_gallery_inmo_online like dynamic_gallery_inmo;
create table dynamic_rooms_online like dynamic_rooms;
create table dynamic_usuario_online like dynamic_usuario;
create table users_online like users;

alter table dynamic_gallery_inmo modify column image_1 varchar(255) default null comment "imagen 1";
alter table dynamic_gallery_inmo modify column image_2 varchar(255) default null comment "imagen 2";
alter table dynamic_gallery_inmo modify column image_3 varchar(255) default null comment "imagen 3";
alter table dynamic_gallery_inmo modify column image_4 varchar(255) default null comment "imagen 4";
alter table dynamic_gallery_inmo modify column image_5 varchar(255) default null comment "imagen 5";
alter table dynamic_gallery_inmo modify column image_6 varchar(255) default null comment "imagen 6";
alter table dynamic_gallery_inmo modify column image_7 varchar(255) default null comment "imagen 7";
alter table dynamic_gallery_inmo modify column image_8 varchar(255) default null comment "imagen 8";
alter table dynamic_gallery_inmo modify column image_9 varchar(255) default null comment "imagen 9";
alter table dynamic_gallery_inmo modify column image_10 varchar(255) default null comment "imagen 10";
alter table dynamic_gallery_inmo modify column image_11 varchar(255) default null comment "imagen 11";
alter table dynamic_gallery_inmo modify column image_12 varchar(255) default null comment "imagen 12";
alter table dynamic_gallery_inmo modify column image_13 varchar(255) default null comment "imagen 13";
alter table dynamic_gallery_inmo modify column image_14 varchar(255) default null comment "imagen 14";
alter table dynamic_gallery_inmo modify column image_15 varchar(255) default null comment "imagen 15";
alter table dynamic_gallery_inmo modify column image_16 varchar(255) default null comment "imagen 16";
alter table dynamic_gallery_inmo modify column image_17 varchar(255) default null comment "imagen 17";
alter table dynamic_gallery_inmo modify column image_18 varchar(255) default null comment "imagen 18";
alter table dynamic_gallery_inmo modify column image_19 varchar(255) default null comment "imagen 19";
alter table dynamic_gallery_inmo modify column image_20 varchar(255) default null comment "imagen 20";
alter table dynamic_gallery_inmo modify column image_21 varchar(255) default null comment "imagen 21";
alter table dynamic_gallery_inmo modify column image_22 varchar(255) default null comment "imagen 22";
alter table dynamic_gallery_inmo modify column image_23 varchar(255) default null comment "imagen 23";
alter table dynamic_gallery_inmo modify column image_24 varchar(255) default null comment "imagen 24";
alter table dynamic_gallery_inmo modify column image_25 varchar(255) default null comment "imagen 25";


CREATE TABLE `buscador` (
    `id` int(11) NOT NULL COMMENT "Identificador del buscador",
	`name` varchar(75) DEFAULT 'Nombre' COMMENT 'Nombre',
    `email` varchar(75) DEFAULT NULL COMMENT 'Email',
    `phone` varchar(75) DEFAULT NULL COMMENT 'Telf',
    `subject` varchar(75) DEFAULT NULL COMMENT 'Titulo',
    `form_message` varchar(255) DEFAULT NULL COMMENT 'Mensaje',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET = utf8 COMMENT = 'Contacto';


CREATE TABLE `buscador` (
`id` int(11) NOT NULL COMMENT "Identificador del buscador",
`accion` tinyint(3) DEFAULT 1 COMMENT 'Vender, Alquilar, Compartir',
`buscar_palabra` varchar(255) DEFAULT '' COMMENT 'Buscar una palabra',
`taxonomy_group` varchar(255) DEFAULT '' COMMENT 'Taxonomy group',
`geolocality`	varchar(255) DEFAULT '' COMMENT 'Lugar',
`habitaciones` tinyint(3) DEFAULT 1 COMMENT 'Número de habitaciones',
`banos`	tinyint(3) DEFAULT 1 COMMENT 'Número de baños',
`construido` varchar(20) DEFAULT '' COMMENT 'Lugar',
`precio_minimo` int(10) DEFAULT 1 COMMENT 'Precio mínimo',
`precio_maximo` int(10) DEFAULT 1 COMMENT 'Precio máximo',
`checkbox_aire_con` tinyint(1) DEFAULT 1 COMMENT 'Aire acondicionado',
`checkbox_calefaccion` tinyint(1) DEFAULT 1 COMMENT 'Calefacción',
`checkbox_chimenea` tinyint(1) DEFAULT 1 COMMENT 'Chimenea',
`checkbox_alarmaincendio` tinyint(1) DEFAULT 1 COMMENT 'Alarma de incendio',
`checkbox_alarmarobo` tinyint(1) DEFAULT 1 COMMENT 'Alarma de robo',
`checkbox_gasciudad` tinyint(1) DEFAULT 1 COMMENT 'Gas ciudad',
`checkbox_cajafuerte` tinyint(1) DEFAULT 1 COMMENT 'Caja fuerte',
`checkbox_tv` tinyint(1) DEFAULT 1 COMMENT 'Caja fuerte',
`checkbox_satelite` tinyint(1) DEFAULT 1 COMMENT 'Satelite',
`checkbox_parking` tinyint(1) DEFAULT 1 COMMENT 'Parking',
`checkbox_garajedoble` tinyint(1) DEFAULT 1 COMMENT 'Graaje doble',
`checkbox_ascensor` tinyint(1) DEFAULT 1 COMMENT 'Ascensor',
`checkbox_terraza` tinyint(1) DEFAULT 1 COMMENT 'Terraza',
`checkbox_balcon` tinyint(1) DEFAULT 1 COMMENT 'Balcón',
`checkbox_urbanizacion` tinyint(1) DEFAULT 1 COMMENT 'Urbanización',
`buscar_palabra_alquilar` varchar(255) DEFAULT '' COMMENT 'Buscar un alquiler',
`taxonomy_group_alquilar` varchar(255) DEFAULT '' COMMENT 'Taxonomy group alquilar',
`geolocality_alquilar` varchar(255) DEFAULT '' COMMENT 'Localidad alquilar',
`habitaciones_alquilar` tinyint(3) DEFAULT 1 COMMENT 'Número de habitaciones',
`banos_alquilar`  tinyint(3) DEFAULT 1 COMMENT 'Número de baños',
`construido_alquilar` varchar(20) DEFAULT '' COMMENT 'Lugar',
`precio_minimo_alquilar`  int(10) DEFAULT 1 COMMENT 'Precio mínimo',
`precio_maximo_alquilar` int(10) DEFAULT 1 COMMENT 'Precio máximo',
`'checkbox_aire_con_alquilar` tinyint(1) DEFAULT 1 COMMENT 'Aire acondicionado',
`checkbox_calefaccion_alquilar` tinyint(1) DEFAULT 1 COMMENT 'Calefacción',
`checkbox_chimenea_alquilar` tinyint(1) DEFAULT 1 COMMENT 'Chimenea',
`checkbox_alarmaincendio_alquilar` tinyint(1) DEFAULT 1 COMMENT 'Alarma de incendio',
`checkbox_alarmarobo_alquilar` tinyint(1) DEFAULT 1 COMMENT 'Alarma de robo',
`checkbox_gasciudad_alquilar` tinyint(1) DEFAULT 1 COMMENT 'Gas ciudad',
`checkbox_cajafuerte_alquilar` tinyint(1) DEFAULT 1 COMMENT 'Caja fuerte',
`checkbox_tv_alquilar` tinyint(1) DEFAULT 1 COMMENT 'Caja fuerte',
`checkbox_satelite_alquilar` tinyint(1) DEFAULT 1 COMMENT 'Satelite',
`checkbox_parking_alquilar` tinyint(1) DEFAULT 1 COMMENT 'Parking',
`checkbox_garajedoble_alquilar` tinyint(1) DEFAULT 1 COMMENT 'Graaje doble',
`checkbox_ascensor_alquilar` tinyint(1) DEFAULT 1 COMMENT 'Ascensor',
`checkbox_terraza_alquilar` tinyint(1) DEFAULT 1 COMMENT 'Terraza',
`checkbox_balcon_alquilar` tinyint(1) DEFAULT 1 COMMENT 'Balcón',
`checkbox_urbanizacion_alquilar` tinyint(1) DEFAULT 1 COMMENT 'Urbanización',
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET = utf8 COMMENT = 'Buscador';


# alter table dynamic_agente_inmobiliario add column text_email varchar(20) comment 'Dirección de email' default null;

# INSERT INTO `newsletter` (`id`, `langauge`, `status`, `email`) VALUES (1, 'es', 'ACTIVED', 'davidberruezo@davidberruezo.com');

# select max(id) + 1 as total from dynamic_pages limit 1;
# select count(id) as total from newsletter where email = 'davidberruezo@davidberruezo.com';

#delete from message where id = 8;


UPDATE `users` SET `username` = 'aimmobles', `email` = 'info@ainmobles.es' WHERE `id` = 7
usersUPDATE `dynamic_agencia` SET `text_title` = 'Aimmobles', `number_telf` = '938749262', `number_mobile` = '0', `number_fax` = '938749262', `text_direccion` = 'sss', `text_email` = NULL, `text_facebook` = '', `text_twitter` = '', `text_instagram` = '', `text_pinterest` = '', `text_google_plus` = ''
WHERE `id` = 7<br>


alter table dynamic_agencia add column text_direccion varchar(20) comment 'Dirección de la agencia' default null;
 
UPDATE `dynamic_agencia` SET `id` = '7', `language` = 'es', `text_title` = 'Aimmobles', `number_telf` = '938749262', `number_mobile` = '0', `number_fax` = '938749262', `text_email` = '', `text_facebook` = '', `text_twitter` = '', `text_instagram` = '', `text_pinterest` = '', `text_google_plus` = '', `text_body_title` = 'Aimmobles', `textarea_description` = '<p>hola</p>\r\n', `text_latitud` = '41.7268192', `text_longitud` = '1.8164024', `text_page_title` = 'Aimmobles', `text_slug` = '', `auto_slug` = 'aimmobles', `text_meta_keywords` = '', `text_meta_description` = '', `text_meta_robots` = '', `textarea_scripts_header` = '', `textarea_scripts_body` = '', `status` = 'ACTIVED', `position` = '0'
WHERE `id` = 7  AND `language` = 'es';


INSERT INTO `dynamic_agencia` (`id`, `language`, `text_title`, `number_telf`, `number_mobile`, `number_fax`, `text_email`, `text_facebook`, `text_twitter`, `text_instagram`, `text_pinterest`, `text_google_plus`, `text_body_title`, `textarea_description`, `text_latitud`, `text_longitud`, `text_page_title`, `text_slug`, `auto_slug`, `text_meta_keywords`, `text_meta_description`, `text_meta_robots`, `textarea_scripts_header`, `textarea_scripts_body`, `status`, `position`) VALUES ('7', 'es', 'Aimmobles', '938749262', '0', '938749262', '', '', '', '', '', '', 'Aimmobles', '<p>Grup aImmobles som un equip de gent compromesa amb la nostra feina. Oferim un servei integral en gesti&oacute; immobili&agrave;ria:</p>\r\n\r\n<ul>\r\n	<li>Venda, compra o lloguer.</li>\r\n	<li>Solucions hipotec&agrave;ries i reunificaci&oacute; de deutes.</li>\r\n	<li>Gesti&oacute; de finques.</li>\r\n	<li>Volem ser el teu referent immobiliari.</li>\r\n</ul>\r\n', '41.7268192', '1.8164024', 'Aimmobles', '', 'aimmobles', '', '', '', '', '', 'ACTIVED', '0') ON DUPLICATE KEY UPDATE;

# drop database phpandfr_inmobiliaria_store;
#drop database phpandfr_inmobiliaria_store_codeigniter;


# insert into message values ('7', '1', 'En relación a la publicidad', '2', '1', 'Quuería saber como funciona la publicidad', '1593878199', 'no', 'no');

# call set_checkbox_destacados();
# call update_locals_to_good_taxonomy();


# alter table `dynamic_gallery_inmo` add column `dynamic_agencia` varchar(45) DEFAULT '' COMMENT 'Agencia';
# alter table  `dynamic_gallery_inmo` add column `position` varchar(45) DEFAULT '' COMMENT 'Position';
# alter table  `dynamic_gallery_usuario` add column `position` varchar(45) DEFAULT '' COMMENT 'Position';

# alter table dynamic_franquicia add column dynamic_gallery_franquicia_principal varchar(45) DEFAULT '' COMMENT 'Galeria Franquicia';


/*
CREATE TABLE `dynamic_franquicia` (
    `id` int(11) NOT NULL COMMENT "identificador",dynamic_cron
	`language` varchar(3) DEFAULT 'es' COMMENT 'Lenguaje',
    `text_title` varchar(75) DEFAULT NULL COMMENT 'Titulo',
    `text_firstname` varchar(75) DEFAULT NULL COMMENT 'Nombre',
    `text_lastname` varchar(75) DEFAULT NULL COMMENT 'Apellido',
	`number_telf` int(10) DEFAULT 0 COMMENT 'Telefono',
    `number_telf_mobil` int(10) DEFAULT 0 COMMENT 'Telefono mobil',
    `email` varchar(75) DEFAULT NULL COMMENT 'Email',dynamic_gallery_inmo
    `text_direccion` varchar(20) DEFAULT NULL COMMENT 'Dirección',dynamic_rooms
    `textarea_description` text  DEFAULT NULL COMMENT 'Descripción',
    `text_page_title` varchar(75)  DEFAULT NULL COMMENT 'Page Title',
	`text_slug` varchar(255) DEFAULT NULL COMMENT 'Text slug',
	`auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
	`text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Text Meta Keywords',
	`text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Text Meta Keywords',
	`textarea_scripts_header` text DEFAULT NULL COMMENT 'Text Meta Scripts header',
	`textarea_scripts_body` text DEFAULT NULL COMMENT 'Text Meta Scripts body',
	`text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Text Meta Robots',
	`status` enum('ACTIVED','PAUSED'), 
	`position` int(11),	
	PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET = utf8 COMMENT = 'Datos Franquicia';

 
# alter table ci_sessions add column `session_id` varchar(40) DEFAULT '0' NOT NULL;
# alter table ci_sessions add column `user_agent` varchar(120) NOT NULL;

# alter table ci_sessions add column `last_activity` int(10) unsigned DEFAULT 0 NOT NULL;
# alter table ci_sessions add column `user_data` text NOT NULL;

# update locals to good taxonomy

UPDATE `dynamic_rooms`
INNER JOIN (select `id` from `dynamic_rooms` where text_title like 'local%') as t2 using (`id`)
SET `dynamic_taxonomy` = 4 , `dynamic_taxonomy_group` = 4 ;

# segundo cambio
UPDATE `dynamic_rooms`
INNER JOIN (select `id` from `dynamic_rooms` where text_title like '%local%') as t2 using (`id`)
SET `dynamic_taxonomy` = 4 , `dynamic_taxonomy_group` = 4 ;



UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 order by `id` limit 21, 20) as t2 using (`id`)
SET `checkbox_oferta` = 1;
*/

/*
delete from dynamic_offers_taxonomy;


DELIMITER //
CREATE PROCEDURE select_checkbox_destacado_provincia()
BEGIN
  select * from dyanmic_rooms where checkbox_destacado_provincia = 1;
END //            
DELIMITER ;

dynamic_taxonomy_city
call select_checkbox_destacado_provincia();
*/

# select * from dynamic_rooms where 

# distinct(id) as id , dynamic_geolocality
# dynamic_accion = 1
/*
SELECT * FROM dynamic_taxonomy_city 
WHERE dynamic_taxonomy_group = 0 and auto_slug = "venta-de-propiedades-en-manresa" AND language = "es" AND status='ACTIVED' ;
*/

/*
delete from message where id = 6;
#update message set user1read = "no", user2read = "no" where id = 6;

/*
select count(id) as recip, id as recipid, (select count(*) from message) as npm from users where username = 6;


insert into users values (null, 6 , 'es' , "fantastico" , "06-07-2020 16:40:00" ); 

CREATE TABLE `message_no_usuarios` (
    `id` int(11) NOT NULL COMMENT "identificador",
	`nombre` varchar(75) DEFAULT NULL COMMENT 'Nombre',
    `number_telf` int(10) DEFAULT 0 COMMENT 'Telefono',
    `email` varchar(75) DEFAULT NULL COMMENT 'Email',
	`mensaje` text COMMENT 'Mensaje',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET = utf8 COMMENT = 'Mensajes no usuarios';



update message set user2 = 2 where user2 = 5;



users
select dgup.id as id_gal_usuaro,dgup.image_principal as usuario_image_principal,
dgip.id as id_gal_inmo,dgip.image_principal as inmo_image_principal , usr.username 
from users as usr 
left join dynamic_gallery_usuario_principal as dgup on dgup.id = usr.id  
left join dynamic_gallery_inmo_principal as dgip on dgip.id = usr.id 
where usr.id = 5;


alter table dynamic_usuario add column `text_title` varchar(75) COMMENT 'Titulo usuario';


select ds.text_latitud,ds.text_altitud,ds.text_title,ds.auto_slug,ds.text_slug,ds.number_precioinmo,ds.number_precioalq,ds.text_ref,ds.text_zona,
da.text_title as accion, dg.image_1 as foto1,dg.image_2 as foto2,dg.text_title_image_1,dg.text_title_image_2,dgl.text_title as geolocality,dgc.text_title as geocity, 
ai.number_habdobles+ai.number_habitaciones as habitaciones,ai.number_banyos,dtg.text_title as taxonomia_group,dgci.text_title as cp,
daa.text_title as agencia,daa.id as id_agencia,daa.auto_slug as auto_slug_agencia,daa.text_slug as text_slug_agencia,
ds.dynamic_taxonomy_group,ds.dynamic_taxonomy,ds.dynamic_geolocality,dgip.image_principal
from dynamic_rooms as ds
left join avantio_inmovilla as ai on ai.id = ds.id
left join dynamic_accion as da on da.id = ds.dynamic_acciondynamic_rooms
left join dynamic_agencia as daa on daa.id = ds.dynamic_agencia
left join dynamic_gallery_inmo_principal as dgip on dgip.id = ds.dynamic_agencia
left join dynamic_gallery_inmo as dg on dg.id = ds.dynamic_gallery_inmo
left join dynamic_geocity as dgc on dgc.id = ds.dynamic_geocity
left join dynamic_geolocality as dgl on dgl.id = ds.dynamic_geolocality
left join dynamic_geodistrict as dgci on dgci.id = ds.dynamic_geolocality
left join dynamic_taxonomy as dt on dt.id = ds.dynamic_taxonomy
left join dynamic_taxonomy_group as dtg on dtg.id = ds.dynamic_taxonomy_group
where ds.checkbox_destacado_home = 1 AND ds.language = "es";


alter table `dynamic_usuario` add column `dynamic_gallery_usuario` varchar(45) DEFAULT '' COMMENT 'Galeria Usuario';

#`text_slug` varchar(255) COMMENT 'Manual slug',


alter table dynamic_cron add column `text_slug` varchar(75) COMMENT 'Manual slug';

SHOW FULL columns FROM dynamic_cron;


alter table dynamic_cron add column `text_page_title` varchar(75) COMMENT 'Titulo pagina';


CREATE TABLE `dynamic_cron` (
  `id` int(11) NOT NULL DEFAULT '0 'COMMENT 'Identificador cron',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguaje cron',
  `status` enum('ACTIVED','PAUSED') DEFAULT 'ACTIVED' COMMENT 'Estado',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `text_direccion` varchar(255) DEFAULT NULL COMMENT 'Dirección http',
  `dynamic_agencia` int(11) DEFAULT NULL COMMENT 'Identificador de agencia',
  `dynamic_usuario` int(11) DEFAULT NULL COMMENT 'Identificador de agencia',
  `position` int(11) NOT NULL DEFAULT '0',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Short url (slug)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters) ',dynamic_cron
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters) ',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;) ',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;) ',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET = utf8 COMMENT = 'Cron Inmobiliarias y usuarios';

# SHOW VARIABLES WHERE Variable_name LIKE 'character\_set\_%' OR Variable_name LIKE 'collation%';

# For each database:
ALTER DATABASE phpandfr_inmobiliaria CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci;
# For each table:
ALTER TABLE dynamic_rooms CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
# For each column:
# ALTER TABLE dynamic_rooms CHANGE text_title VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
dynamic_rooms
# (Don’t blindly copy-paste this! The exact statement depends on the column type, maximum length, and other properties. The above line is just an example for a `VARCHAR` column.)

dynamic_rooms
alter table `dynamic_rooms` add column `checkbox_destacado` tinyint(45)  DEFAULT 0 COMMENT 'Destacado';

delete FROM automatizacion;
delete FROM dynamic_rooms;
delete FROM avantio_inmovilla;
delete FROM dynamic_gallery_inmo;


alter table `avantio_inmovilla` add column `dynamic_usuario` varchar(45) DEFAULT '' COMMENT 'Usuario';
alter table `avantio_inmovilla` add column `dynamic_agencia` varchar(45) DEFAULT '' COMMENT 'Agencia';

UPDATE `dynamic_gallery_inmo` SET `dynamic_agencia` = 6;
UPDATE `dynamic_rooms` SET dynamic_rooms`dynamic_agencia` = 6;




# delete  from automatizacion;
# insert into automatizacion values (null, 6 , 'es' , "fantastico" , "06-07-2020 16:40:00" ); 



CREATE TABLE `automatizacion` (
`id` int(11) not null default 0, 
`id_usuario` int(11) default 0, 
`language` varchar(3) not null default 'es', 
`nombre` varchar(75) default null, 
`fecha` datetime, 
PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Automatización fichero';


# insert into message values ('1', '1', 'Cuanto vale el piso', '5', '6', 'Quería saber cuanto valia el piso', '1593878199', 'yes', 'no');

#delete from message;
#select * from message;


alter table `phpandfr_inmobilaria` add column `avatar` text DEFAULT '' COMMENT 'Avatar';


select m1.id, m1.title, m1.timestamp, count(m2.id) as reps, users.id as userid, users.username from message as m1, message as m2 , users
where (( m1.user1 = 5 and m1.user1read = 'no' and users.id = m1.user2 )
or (m1.user2 = 6 and m1.user2read = 'no' and users.id = m1.user1))
and m1.id2 = '1' and m2.id = m1.id group by m1.id order by m1.id desc;         

# id, id2, title, user1, user2, message, timestamp, user1read, user2read
# insert into message values ('1', '1', 'Cuanto vale el piso', '5', '6', 'Quería saber cuanto valia el piso', '1593878199', 'yes', 'no');

CREATE TABLE `message` (
  `id` bigint(20) NOT NULL,
  `id2` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `user1` bigint(20) NOT NULL,
  `user2` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `timestamp` int(10) NOT NULL,
  `user1read` varchar(3) NOT NULL,
  `user2read` varchar(3) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;


UPDATE `dynamic_gallery_inmo` SET `dynamic_agencia` = 6;

# alter table `dynamic_gallery_usuario` add column `dynamic_usuario` varchar(45) DEFAULT '' COMMENT 'Usuario';
# alter table `dynamic_gallery_usuario_principal` add column `dynamic_usuario` varchar(45) DEFAULT '' COMMENT 'Usuario';

#alter table `dynamic_gallery_inmo` add column `dynamic_agencia` varchar(45) DEFAULT '' COMMENT 'Agencia';
#alter table `dynamic_gallery_inmo_principal` add column `dynamic_agencia` varchar(45) DEFAULT '' COMMENT 'Agencia';

#alter table `dynamic_agencia` add column `dynamic_gallery_inmo` varchar(45) DEFAULT '' COMMENT 'Galeria Inmobiliaria';

# UPDATE `dynamic_rooms` SET `dynamic_agencia` = 6;

# alter table `dynamic_usuario` add column `dynamic_gallery_usuario_princidynamic_agenciapal` varchar(45) DEFAULT '' COMMENT 'Galeria principal usuario';

alter table `users` add pdynamic_roomsrimary key (username);

# alter table `users` add column `text_firstname` varchar(20) DEFAULT '' COMMENT 'Nombre';
alter table `dynamic_usuario` add column `text_lastname` varchar(20) DEFAULT '' COMMENT 'Apellido';
alter table `dynamic_usuario` add column `number_telf` varchar(20) DEFAULT '' COMMENT 'Telf';
alter table `dynamic_usuario` add column `number_telf_mobil` varchar(20) DEFAULT '' COMMENT 'Telf';dynamic_gallery_usuario_principal
alter table `dynamic_usuario` add column `text_direccion` varchar(20) DEFAULT '' COMMENT 'Dirección';

# firstname
# lastname
# lastname
# telf
# telf_mobil
# direccion

alter table `users` add column `text_firstname` varchar(20) DEFAULT '' COMMENT 'Nombre';
alter table `users` add column `text_lastname` varchar(20) DEFAULT '' COMMENT 'Apellido';
alter table `users` add column `number_telf` varchar(20) DEFAULT '' COMMENT 'Telf';
alter table `users` add column `number_telf_mobil` varchar(20) DEFAULT '' COMMENT 'Telf';
alter table `users` add column `text_direccion` varchar(20) DEFAULT '' COMMENT 'Dirección';

UPDATE `users` SET `password` = '' where `email` = 'davidberruezo@davidberruezo.com';

select * from password_reset as pr where pr.key = '768e78024aa8fdb9b8fe87be86f64745b0d51ba5ec';

# cremos tabla newsletter

CREATE TABLE `newsletter` (
  `id` int(11) auto_increment COMMENT 'identificador del registro usuario de la newsletter', 
  `email` varchar(250) NOT NULL COMMENT 'email del usuario',
  `language` varchar(250) NOT NULL COMMENT 'lenguage',
  `status` enum('ACTIVED','PAUSED'),
  primary key(`id`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

# cremos destacados newsletter y les ponemos el valor a 1 son todas casas
# alter table `dynamic_rooms` add column `checkbox_destacado_newsletter` TINYINT(4) DEFAULT 0 COMMENT 'Destauserscado en newsletter';
# 11
# 18
# 19
# 23
# 38
# 39

UPDATE `dynamic_rooms` SET `checkbox_destacado_newsletter` = 1 where id = 11;
UPDATE `dynamic_rooms` SET `checkbox_destacado_newsletter` = 1 where id = 18;
UPDATE `dynamic_rooms` SET `checkbox_destacado_newsletter` = 1 where id = 19;
UPDATE `dynamic_rooms` SET `checkbox_destacado_newsletter` = 1 where id = 23;
UPDATE `dynamic_rooms` SET `checkbox_destacado_newsletter` = 1 where id = 38;
UPDATE `dynamic_rooms` SET `checkbox_destacado_newsletter` = 1 where id = 39;


delete from password_reset;


INSERT INTO `password_reset` (`email`, `key`, `expDate`) VALUES ("david@david.com", "aaaa", "2020-06-29 15:39:00");

drop table password_resets;

CREATE TABLE `password_reset` (
  `email` varchar(250) NOT NULL,
  `key` varchar(250) NOT NULL,
  `expDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET = utf8;


SHOW TABLES;
SHOW TABLES LIKE "devices";
# INSERT INTO `devices` (`name`, `id`) VALUES ('david device', '5')
select * from devices;

########################## example about ON DUPLICATE KEY UPDATE ##############################

CREATE TABLE devices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

INSERT INTO devices(name) VALUES('Router F1'),('Switch 1'),('Switch 2');
INSERT INTO devices(name) VALUES ('Printer') ON DUPLICATE KEY UPDATE name = 'Printer';
select id,name from devices;
INSERT INTO devices(id,name) VALUES (4,'Printer') ON DUPLICATE KEY UPDATE name = 'Central Printer';
select id,name from devices;

########################## example about ON DUPLICATE KEY UPDATE ##############################


INSERT INTO password_resets (id,email,token) VALUES (1,"davidberruezo@davidberruezo.com","eee")
ON DUPLICATE KEY UPDATE c1 = v1, c2 = v2;

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL DEFAULT 0 COMMENT 'Identificador password',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `token` varchar(255) DEFAULT NULL UNIQUE COMMENT 'Token'
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT = 'Reset Password';



# select checkbox_destacado_home from dynamic_rooms where dynamic_taxonomy_group = 1 limit  5, 6;
# select * from dynamic_rooms as ds where ds.checkbox_destacado_taxonomia = 1;
*/

########################## `checkbox_destacado_oferta` ##############################

/*
UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 order by `id` limit 21, 20) as t2 using (`id`)
SET `checkbox_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 order by `id` limit 21, 20) as t2 using (`id`)
SET `checkbox_oferta` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 order by `id` limit 21, 20) as t2 using (`id`)
SET `checkbox_oferta` = 1;

# parkings
# 15
UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 5 order by `id` limit 6,20) as t2 using (`id`)
SET `checkbox_oferta` = 1;

# terrenos
# 21
UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 6 order by `id` limit 6,20) as t2 using (`id`)
SET `checkbox_oferta` = 1;

# naves
# 7
UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 7 order by `id` limit 20) as t2 using (`id`)
SET `checkbox_oferta` = 1;

# edificios
# 2
UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 8 order by `id` limit 6) as t2 using (`id`)
SET `checkbox_oferta` = 1;


########################## `checkbox_destacado_oferta` ##############################

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 order by `id` limit 21, 8) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 order by `id` limit 21, 8) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 order by `id` limit 21, 8) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

# parkings
# 15
UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 5 order by `id` limit 6,8) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

# terrenos
# 21
UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 6 order by `id` limit 6,8) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

# naves
# 7
UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 7 order by `id` limit 7) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

# edificios
# 2
UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 8 order by `id` limit 6) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;


# alter table `dynamic_rooms` add column `checkbox_destacado_oferta` TINYINT(4) DEFAULT 0 COMMENT 'Destacado en oferta';
# alter table `dynamic_rooms` add column `checkbox_oferta` TINYINT(4) DEFAULT 0 COMMENT 'Oferta';

########################## `checkbox_vistos_recientemente_detalle_propiedad` ##############################

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 order by `id` limit 20, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_detalle_propiedad` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 order by `id` limit 20, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_detalle_propiedad` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 order by `id` limit 20, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_detalle_propiedad` = 1;


########################## `checkbox_vistos_recientemente_detalle_blog` ##############################

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 order by `id` limit 19, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_detalle_blog` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 order by `id` limit 19, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_detalle_blog` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 order by `id` limit 19, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_detalle_blog` = 1;


########################## `checkbox_vistos_recientemente_listado_blog` ##############################

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 order by `id` limit 18, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_listado_blog` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 order by `id` limit 18, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_listado_blog` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 order by `id` limit 18, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_listado_blog` = 1;


########################## `checkbox_vistos_recientemente_detalle_inmobiliarias` ##############################

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 order by `id` limit 17, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_detalle_inmobiliarias` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 order by `id` limit 17, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_detalle_inmobiliarias` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 order by `id` limit 17, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_detalle_inmobiliarias` = 1;

########################## `checkbox_vistos_recientemente_listado_inmobiliarias` ##############################

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 order by `id` limit 16, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_listado_inmobiliarias` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 order by `id` limit 16, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_listado_inmobiliarias` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 order by `id` limit 16, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_listado_inmobiliarias` = 1;



########################## checkbox_vistos_recientemente_taxonomia ##############################

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 order by `id` limit 15, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_taxonomia` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 order by `id` limit 15, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_taxonomia` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 order by `id` limit 15, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_taxonomia` = 1;


########################## checkbox_vistos_recientemente_provincia ##############################

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 order by `id` limit 14, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_provincia` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 order by `id` limit 14, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_provincia` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 order by `id` limit 14, 1) as t2 using (`id`)
SET `checkbox_vistos_recientemente_provincia` = 1;


########################## checkbox_destacado_detalle_propiedad ##############################

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 order by `id` limit 13, 1) as t2 using (`id`)
SET `checkbox_destacado_detalle_propiedad` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 order by `id` limit 13, 1) as t2 using (`id`)
SET `checkbox_destacado_detalle_propiedad` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 order by `id` limit 13, 1) as t2 using (`id`)
SET `checkbox_destacado_detalle_propiedad` = 1;

########################## checkbox_destacado_detalle_blog ##############################

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 order by `id` limit 13, 1) as t2 using (`id`)
SET `checkbox_destacado_detalle_blog` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 order by `id` limit 13, 1) as t2 using (`id`)
SET `checkbox_destacado_detalle_blog` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 order by `id` limit 13, 1) as t2 using (`id`)
SET `checkbox_destacado_detalle_blog` = 1;


########################## checkbox_destacado_listado_blog ##############################

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 order by `id` limit 12, 1) as t2 using (`id`)
SET `checkbox_destacado_listado_blog` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 order by `id` limit 12, 1) as t2 using (`id`)
SET `checkbox_destacado_listado_blog` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 order by `id` limit 12, 1) as t2 using (`id`)
SET `checkbox_destacado_listado_blog` = 1;



########################## checkbox_destacado_detalle_inmobiliaria ##############################

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 order by `id` limit 9, 1) as t2 using (`id`)
SET `checkbox_destacado_detalle_inmobiliaria` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 order by `id` limit 9, 1) as t2 using (`id`)
SET `checkbox_destacado_detalle_inmobiliaria` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 order by `id` limit 9, 1) as t2 using (`id`)
SET `checkbox_destacado_detalle_inmobiliaria` = 1;

########################## checkbox_destacado_listado_inmobiliarias ##############################

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 order by `id` limit 8, 1) as t2 using (`id`)
SET `checkbox_destacado_listado_inmobiliarias` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 order by `id` limit 8, 1) as t2 using (`id`)
SET `checkbox_destacado_listado_inmobiliarias` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 order by `id` limit 8, 1) as t2 using (`id`)
SET `checkbox_destacado_listado_inmobiliarias` = 1;

########################## checkbox_destacado_taxonomia ##############################

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 order by `id` limit 7, 1) as t2 using (`id`)
SET `checkbox_destacado_taxonomia` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 order by `id` limit 7, 1) as t2 using (`id`)
SET `checkbox_destacado_taxonomia` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 order by `id` limit 7, 1) as t2 using (`id`)
SET `checkbox_destacado_taxonomia` = 1;

########################## checkbox_destacado_provincia ##############################

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 order by `id` limit 6, 1) as t2 using (`id`)
SET `checkbox_destacado_provincia` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 order by `id` limit 6, 1) as t2 using (`id`)
SET `checkbox_destacado_provincia` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 order by `id` limit 6, 1) as t2 using (`id`)
SET `checkbox_destacado_provincia` = 1;


########################## checkbox_destacado_home ##############################
# 76
# pisos
select * from dynamic_rooms where dynamic_taxonomy_group = 1 limit 10;
UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 order by `id` limit 6) as t2 using (`id`)
SET `checkbox_destacado_home` = 1;

# 54
# casas
select * from dynamic_rooms where dynamic_taxonomy_group = 2;
UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 order by `id` limit 6) as t2 using (`id`)
SET `checkbox_destacado_home` = 1;

# 0
# oficinas
select * from dynamic_rooms where dynamic_taxonomy_group = 3;
UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 3 order by `id` limit 6) as t2 using (`id`)
SET `checkbox_destacado_home` = 1;

# 45
# locales
select * from dynamic_rooms where dynamic_taxonomy_group = 4;
UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 order by `id` limit 6) as t2 using (`id`)
SET `checkbox_destacado_home` = 1;

# parkings
# 15
select * from dynamic_rooms where dynamic_taxonomy_group = 5;
UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 5 order by `id` limit 6) as t2 using (`id`)
SET `checkbox_destacado_home` = 1;

# terrenos
# 21
select * from dynamic_rooms where dynamic_taxonomy_group = 6;
UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 6 order by `id` limit 6) as t2 using (`id`)
SET `checkbox_destacado_home` = 1;

# naves
# 7
select * from dynamic_rooms where dynamic_taxonomy_group = 7;
UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 7 order by `id` limit 6) as t2 using (`id`)
SET `checkbox_destacado_home` = 1;

# edificios
# 2
select * from dynamic_rooms where dynamic_taxonomy_group = 8;
UPDATE `dynamic_rooms`
INNER JOIN (SELECT `id` from `dynamic_rooms` where dynamic_taxonomy_group = 8 order by `id` limit 6) as t2 using (`id`)
SET `checkbox_destacado_home` = 1;



# destacados
alter table `dynamic_rooms` add column `checkbox_destacado_home` TINYINT(4) DEFAULT 0 COMMENT 'Destacado en home';
alter table `dynamic_rooms` add column `checkbox_destacado_provincia` TINYINT(4) DEFAULT 0 COMMENT 'Destacado en provincia';
alter table `dynamic_rooms` add column `checkbox_destacado_taxonomia` TINYINT(4) DEFAULT 0 COMMENT 'Destacado en taxonomia';
alter table `dynamic_rooms` add column `checkbox_destacado_listado_inmobiliarias` TINYINT(4) DEFAULT 0 COMMENT 'Destacado en listado inmobiliarias';
alter table `dynamic_rooms` add column `checkbox_destacado_detalle_inmobiliaria` TINYINT(4) DEFAULT 0 COMMENT 'Destacado en detalle inmobiliaria';
alter table `dynamic_rooms` add column `checkbox_destacados_detalle_inmobiliaria` TINYINT(4) DEFAULT 0 COMMENT 'Destacados en detalle inmobiliaria';
alter table `dynamic_rooms` add column `checkbox_destacado_listado_blog` TINYINT(4) DEFAULT 0 COMMENT 'Destacado en listado blog';
alter table `dynamic_rooms` add column `checkbox_destacado_detalle_blog` TINYINT(4) DEFAULT 0 COMMENT 'Destacado en detalle home';
alter table `dynamic_rooms` add column `checkbox_destacado_detalle_propiedad` TINYINT(4) DEFAULT 0 COMMENT 'Destacado detalle propiedad';


# vistos recientemente
alter table `dynamic_rooms` add column `checkbox_vistos_recientemente_provincia` TINYINT(4) DEFAULT 0 COMMENT 'Vistos recientemente provincia';
alter table `dynamic_rooms` add column `checkbox_vistos_recientemente_taxonomia` TINYINT(4) DEFAULT 0 COMMENT 'Vistos recientemente taxonomia';
alter table `dynamic_rooms` add column `checkbox_vistos_recientemente_listado_inmobiliarias` TINYINT(4) DEFAULT 0 COMMENT 'Vistos recientemente listado inmobiliarias';
alter table `dynamic_rooms` add column `checkbox_vistos_recientemente_detalle_inmobiliarias` TINYINT(4) DEFAULT 0 COMMENT 'Vistos recientemente detalle inmobiliarias';
alter table `dynamic_rooms` add column `checkbox_vistos_recientemente_listado_blog` TINYINT(4) DEFAULT 0 COMMENT 'Vistos recientemente listado blog';
alter table `dynamic_rooms` add column `checkbox_vistos_recientemente_detalle_blog` TINYINT(4) DEFAULT 0 COMMENT 'Vistos recientemente detalle blog';	
alter table `dynamic_rooms` add column `checkbox_vistos_recientemente_detalle_propiedad` TINYINT(4) DEFAULT 0 COMMENT 'Vistos recientemente detalle propiedad';
    

# ofertas
alter table `dynamic_rooms` add column `checkbox_destacado_oferta` TINYINT(4) DEFAULT 0 COMMENT 'Destacado en oferta';
alter table `dynamic_rooms` add column `checkbox_oferta` TINYINT(4) DEFAULT 0 COMMENT 'Oferta';



select ds.text_latitud,ds.text_altitud,ds.text_title,ds.auto_slug,ds.text_slug,ds.number_precio,ds.number_minprecio,ds.number_precioinmo,ds.number_precioalq,ds.text_ref,
ds.text_zona, da.text_title as accion, dg.foto1,dg.foto2,dg.text_title_image_1,dg.text_title_image_2,dgl.text_title as geolocality,dgc.text_title as geocity, 
ai.number_habdobles+ai.number_habitaciones as habitaciones,ai.number_banyos,dtg.text_title as taxonomia_group,dgci.text_title as cp, ds.dynamic_taxonomy_group,
ds.dynamic_taxonomy,ds.dynamic_geolocality,dgip.image_principal, daa.text_title as dynamic_pagesagencia,daa.id as id_agencia,daa.auto_slug as auto_slug_agencia,daa.text_slug as text_slug_agencia 
from dynamic_rooms as ds 
left join avantio_inmovilla as ai on ai.id = ds.id 
left join dynamic_accion as da on da.id = ds.dynamic_accion 
left join dynamic_agencia as daa on daa.id = ds.dynamic_agencia 
left join dynamic_gallery_inmo_principal as dgip on dgip.id = ds.dynamic_agencia 
left join dynamic_gallery_inmo as dg on dg.id = ds.dynamic_gallery_inmo 
left join dynamic_geocity as dgc on dgc.id = ds.dynamic_geocity 
left join dynamic_geolocality as dgl on dgl.id = ds.dynamic_geolocality 
left join dynamic_geodistrict as dgci on dgci.id = ds.dynamic_geolocality 
left join dynamic_taxonomy as dt on dt.id = ds.dynamic_taxonomy 
left join dynamic_taxonomy_group as dtg on dtg.id = ds.dynamic_taxonomy_group 
where ds.language = 'es' and ds.dynamic_geolocality = 17 and ds.dynamic_taxonomy_group = 1 LIMIT 0, 12 ;

# alter table `users` add column `email` varchar(100) DEFAULT '0' COMMENT 'Email usuario';

alter table `dynamic_agencia` add column `textarea_description_secundaria` text COMMENT 'Descripción secundaria';

dynamic_gallery_inmo_principal
CREATE TABLE `dynamic_agente_inmobiliario` (
  `id` int(11) NOT NULL DEFAULT '0 'COMMENT 'Identificador agente inmobiliario',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguaje aplicación',
  `status` enum('ACTIVED','PAUSED') DEFAULT 'ACTIVED' COMMENT 'Estado',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `number_telf` int(10) DEFAULT 0 COMMENT 'Telefono Agente inmobiliario',
  `number_mobile` int(10) DEFAULT 0 COMMENT 'Telefono movil',
  `number_fax` int(10) DEFAULT 0 COMMENT 'Fax',
  `dynamic_agencia` int(11) DEFAULT NULL COMMENT 'Identificador de agencia',
  `image_principal` varchar(255) DEFAULT NULL COMMENT 'Imagen principal',
  `textarea_description` text COMMENT 'Descripción',
  `position` int(11) NOT NULL DEFAULT '0',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Short url (slug)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters) ',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters) ',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;) ',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;) ',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET = utf8 COMMENT = 'Agentes Inmobiliarios';


alter table `dynamic_agencia` add column `text_latitud` varchar(20) DEFAULT '0' COMMENT 'Latitud google maps';
alter table `dynamic_agencia` add column `text_longitud` varchar(20) DEFAULT '0' COMMENT 'Longitud google maps';


# alter table `dynamic_agencia` add column `multiple_agente_comercial` int(11) DEFAULT 0 COMMENT 'Agentes comerciales';
# dynamic_agente_comercial 



		select da.text_title,da.number_telf,da.number_mobile,da.number_fax,da.text_email,da.text_facebook,da.text_twitter,da.text_instagram  
        ,da.text_pinterest,da.text_google_plus,dgip.image_principal
        from dynamic_agencia as da
		left join dynamic_gallery_inmo_principal as ddynamic_usuariogip on da.id = dgip.id
		where da.language = 'es';
        

alter table `dynamic_agencia` add column `number_telf` int(11) DEFAULT 0 COMMENT 'Número de teléfono';
alter table `dynamic_agencia` add column `number_mobile` int(11) DEFAULT 0 COMMENT 'Número de movil';
alter table `dynamic_agencia` add column `number_fax` int(11) DEFAULT 0 COMMENT 'Número de fax';
alter table `dynamic_agencia` add column `text_email` varchar(255) DEFAULT NULL COMMENT 'Email';
alter table `dynamic_agencia` add column `text_facebook` varchar(255) DEFAULT NULL COMMENT 'Facebook';
alter table `dynamic_agencia` add column `text_twitter` varchar(255) DEFAULT NULL COMMENT 'Twitter';
alter table `dynamic_agencia` add column `text_instagram` varchar(255) DEFAULT NULL COMMENT 'Instagram';
alter table `dynamic_agencia` add column `text_pinterest` varchar(255) DEFAULT NULL COMMENT 'Pinterest';
alter table `dynamic_agencia` add column `text_google_plus` varchar(255) DEFAULT NULL COMMENT 'Google Plus';


UPDATE `dynamic_rooms` SET `dynamic_taxonomy_group` = 4  where text_title like '%local%';

# document_documento1
# assets/documentos/agencia_1/documento_1.docx
# UPDATE `dynamic_documents_inmo` SET `document_documento1` = 'documento.doc' , `document_documento2` = 'documento.pdf' ;


CREATE TABLE `dynamic_gallery_usuario_principal` (
  `id` int(11) NOT NULL DEFAULT '0',dynamic_agencia
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
  `zip_status` enum('1','0') DEFAULT '0' COMMENT 'Zip Status',
  `text_alt` varchar(75) DEFAULT NULL COMMENT 'Alt imagen',
  `image_principal` varchar(255) DEFAULT NULL COMMENT 'Imagen principal',
  `text_importada` int(11) DEFAULT NULL COMMENT 'Text Importada',
  `imagethn_principal` varchar(255) DEFAULT NULL COMMENT 'Imagen principal oculta',
  PRIMARY KEY (`id`,`language`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT='Galeria usuario principal';



CREATE TABLE `dynamic_documents_usuario` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
  `document_documento1` varchar(255) DEFAULT NULL COMMENT 'Documento 1',
  `text_titulo1` varchar(75) DEFAULT NULL COMMENT 'Título 1',
  `document_documento2` varchar(255) DEFAULT NULL COMMdynamic_gallery_inmo_principalENT 'Documento 2',
  `text_titulo2` varchar(75) DEFAULT NULL COMMENT 'Título 2',
  `document_documento3` varchar(255) DEFAULT NULL COMMENT 'Documento 3',
  `text_titulo3` varchar(75) DEFAULT NULL COMMENT 'Título 3',
  `document_documento4` varchar(255) DEFAULT NULL COMMENT 'Documento 4',
  `text_titulo4` varchar(75) DEFAULT NULL COMMENT 'Titulo 4',
  `document_documento5` varchar(255) DEFAULT NULL COMMENT 'Documento 5',
  `text_titulo5` varchar(75) DEFAULT NULL COMMENT 'Titulo 5',
  `document_documento6` varchar(255) DEFAULT NULL COMMENT 'Documento 6',
  `text_titulo6` varchar(75) DEFAULT NULL COMMENT 'Titulo 6',
  `document_documento7` varchar(255) DEFAULT NULL COMMENT 'Documento 7',
  `text_titulo7` varchar(75) DEFAULT NULL COMMENT 'Titulo 7',
  `document_documento8` varchar(255) DEFAULT NULL COMMENT 'Documento 8',
  `text_titulo8` varchar(75) DEFAULT NULL COMMENT 'Titulo 8',
  `document_documento9` varchar(255) DEFAULT NULL COMMENT 'Documento 9',
  `text_titulo9` varchar(75) DEFAULT NULL COMMENT 'Titulo 9',
  `document_documento10` varchar(255) DEFAULT NULL COMMENT 'Documento 10',
  `text_titulo10` varchar(75) DEFAULT NULL COMMENT 'Titulo 10',
  PRIMARY KEY (`id`,`language`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT='documentos usuario';

alter table dynamic_rooms add column `dynamic_documents_inmo` int(11) DEFAULT '0' COMMENT 'Identificador de documentos inmobiliaria';
alter table dynamic_rooms add column `dynamic_documents_usuario` int(11) DEFAULT '0' COMMENT 'Identificador de documentos usuario';


DELIMITER //
CREATE PROCEDURE insert_documents()
BEGIN
  SET @contador = 1;
  WHILE @contador < 220 DO
  INSERT INTO `dynamic_documents_inmo` (id,language,text_title,dynamic_usuario,dynamic_agencia,docuent_documento1,text_titulo1,document_documento2,text_titulo2) VALUES( @contador, 'es', 'Documento', 0 , 1 ,'assets/documentos/agencia_1/documento_1.docx', 'word', 'assets/documentos/agencia_1/documento_1.pdf', 'pdf');
  SET @contador := @contador + 1;
  END WHILE;
END //            
DELIMITER ;


# call insert_documents();



DELIMITER //

CREATE PROCEDURE GetAllProducts()
BEGIN
	SELECT *  FROM dynamic_rooms;
END //

DELIMITER ;


#CALL GetAllProducts();



DELIMITER $$
# Create PROCEDURE insert_studentinfo(IN p_id int, IN p_name varchar(20),IN p_Address Varchar(20), IN p_subject Varchar(20))
BEGIN
#insert into student_info(id, name, address, subject) values (p_id, p_name,p_address, p_subject);
END $$
DELIMITER ;

alter table dynamic_documents_inmo add column `dynamic_usuario` int(11) DEFAULT '0' COMMENT 'Identificador de usuario';
alter table dynamic_documents_inmo add column `dynamic_agencia` int(11) DEFAULT '0' COMMENT 'Identificador de agencia';


DELIMITER $$
CREATE PROCEDURE call_mypro_x10()
BEGIN
  SET @x = 1;
  WHILE @x <= 10 DO
    CALL mypro();
    SET @x := @x + 1;
  END WHILE;
END$$
DELIMITER ;

CREATE TABLE `dynamic_documents_inmo` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
  `document_documento1` varchar(255) DEFAULT NULL COMMENT 'Documento 1',
  `text_titulo1` varchar(75) DEFAULT NULL COMMENT 'Título 1',
  `document_documento2` varchar(255) DEFAULT NULL COMMENT 'Documento 2',
  `text_titulo2` varchar(75) DEFAULT NULL COMMENT 'Título 2',
  `document_documento3` varchar(255) DEFAULT NULL COMMENT 'Documento 3',
  `text_titulo3` varchar(75) DEFAULT NULL COMMENT 'Título 3',
  `document_documento4` varchar(255) DEFAULT NULL COMMENT 'Documento 4',
  `text_titulo4` varchar(75) DEFAULT NULL COMMENT 'Titulo 4',
  `document_documento5` varchar(255) DEFAULT NULL COMMENT 'Documento 5',
  `text_titulo5` varchar(75) DEFAULT NULL COMMENT 'Titulo 5',
  `document_documento6` varchar(255) DEFAULT NULL COMMENT 'Documento 6',
  `text_titulo6` varchar(75) DEFAULT NULL COMMENT 'Titulo 6',
  `document_documento7` varchar(255) DEFAULT NULL COMMENT 'Documento 7',
  `text_titulo7` varchar(75) DEFAULT NULL COMMENT 'Titulo 7',
  `document_documento8` varchar(255) DEFAULT NULL COMMENT 'Documento 8',
  `text_titulo8` varchar(75) DEFAULT NULL COMMENT 'Titulo 8',
  `document_documento9` varchar(255) DEFAULT NULL COMMENT 'Documento 9',
  `text_titulo9` varchar(75) DEFAULT NULL COMMENT 'Titulo 9',
  `document_documento10` varchar(255) DEFAULT NULL COMMENT 'Documento 10',
  `text_titulo10` varchar(75) DEFAULT NULL COMMENT 'Titulo 10',
  PRIMARY KEY (`id`,`language`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8 COMMENT='documentos';


INSERT INTO
   `dynamic_documents` 
VALUES
   (
      1, 'en', 'Relaxation Getaway', 'assets/docs/servicios_destacados/Masajes_Cerler_-_La_Molina_-_Alto_Aragón.pdf', 'swimming pool, Jacuzzi, Massage Hammocks, sensations showers, steam bath, s', 'assets/docs/servicios_destacados/Masajes_Cerler_-_La_Molina_-_Alto_Aragón.pdf', 'heated swimming pool, Jacuzzi, sensations showers, steam bath and relax are', 'assets/docs/servicios_destacados/Masajes_Cerler_-_La_Molina_-_Alto_Aragón.pdf', 'heated swimming pool, Jacuzzi, sensations showers, steam bath and relax are', 'assets/docs/servicios_destacados/Masajes_Cerler_-_La_Molina_-_Alto_Aragón.pdf', 'massage in our haima ', 'assets/docs/documents/Activividades_Jardín_de_Menorca1.pdf', '', NULL, '', NULL, '', NULL, '', NULL, '', NULL, ''
   );


		select ds.dynamic_taxonomy_group as tipo_propiedad,count(*) as total
        from dynamic_rooms as ds
        left join avantio_inmovilla as ai on ai.id = ds.id
        left join dynamic_accion as da on da.id = ds.dynamic_accion
        left join dynamic_agencia as daa on daa.id = ds.dynamic_agencia
        left join dynamic_gallery_inmo_principal as dgip on dgip.id = ds.dynamic_agencia
        left join dynamic_gallery_inmo as dg on dg.id = ds.dynamic_gallery_inmo
        left join dynamic_geocity as dgc on dgc.id = ds.dynamic_geocity
        left join dynamic_geolocality as dgl on dgl.id = ds.dynamic_geolocality
        left join dynamic_geodistrict as dgci on dgci.id = ds.dynamic_geolocality
        left join dynamic_taxonomy as dt on dt.id = ds.dynamic_taxonomy
        left join dynamic_taxonomy_group as dtg on dtg.id = ds.dynamic_taxonomy_group
        where ds.language = 'es' and ds.dynamic_geolocality = '17'
        group by ds.dynamic_taxonomy_group;



SELECT DISTINCT (ID),p.post_title, p.post_status, p.post_date, m.meta_key, m.meta_value
FROM wp_posts as p
INNER JOIN wp_postmeta as m
INNER JOIN wp_term_relationships r ON r.object_id = p.ID
INNER JOIN wp_term_taxonomy t ON t.term_taxonomy_id = r.term_taxonomy_id
INNER JOIN wp_terms wt on wt.term_id = t.term_id
WHERE 
# p.post_author = 2 AND 
p.post_status = 'publish' and m.meta_key = 'destacado_home' and m.meta_value = "true" 
#AND p.post_date >= '2009-01-01' 
#AND p.post_date <= '2010-05-28'
AND p.ID = m.post_id;

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
        WHERE p.post_parent = 13 and parentmeta.meta_key='_thumbnail_id' and childmeta.meta_key = '_wp_attached_file';



SELECT 
            p.*,wt.slug as categoria
            from wp_posts as p
            INNER JOIN wp_term_relationships r ON r.object_id=p.ID
            INNER JOIN wp_term_taxonomy t ON t.term_taxonomy_id = r.term_taxonomy_id
            INNER JOIN wp_terms wt on wt.term_id = t.term_id
            where p.ID = 13 AND t.taxonomy = 'category';

select
   count(*) as total 
from
   dynamic_rooms as ds 
   left join
      avantio_inmovilla as ai 
      on ai.id = ds.id 
   left join
      dynamic_accion as da 
      on da.id = ds.dynamic_accion 
   left join
      dynamic_agencia as daa 
      on daa.id = ds.dynamic_agencia 
   left join
      dynamic_gallery_inmo_principal as dgip 
      on dgip.id = ds.dynamic_agencia 
   left join
      dynamic_gallery_inmo as dg 
      on dg.id = ds.dynamic_gallery_inmo 
   left join
      dynamic_geocity as dgc 
      on dgc.id = ds.dynamic_geocity 
   left join
      dynamic_geolocality as dgl 
      on dgl.id = ds.dynamic_geolocality 
   left join
      dynamic_geodistrict as dgci 
      on dgci.id = ds.dynamic_geolocality 
   left join
      dynamic_taxonomy as dt 
      on dt.id = ds.dynamic_taxonomy 
   left join
      dynamic_taxonomy_group as dtg 
      on dtg.id = ds.dynamic_taxonomy_group 
WHERE
   1 
   AND dgl.text_title = 'Manresa' 
   AND 
   (
      ds.number_precioinmo BETWEEN '50000' AND '100813' 
   )
   AND ds.language = 'es' 
   AND da.id = 1;
   

select count(*) as total 
from dynamic_rooms as ds 
left join avantio_inmovilla as ai on ai.id = ds.id 
left join dynamic_accion as da on da.id = ds.dynamic_accion 
left join dynamic_agencia as daa on daa.id = ds.dynamic_agencia 
left join dynamic_gallery_inmo_principal as dgip on dgip.id = ds.dynamic_agencia 
left join dynamic_gallery_inmo as dg on dg.id = ds.dynamic_gallery_inmo 
left join dynamic_geocity as dgc on dgc.id = ds.dynamic_geocity 
left join dynamic_geolocality as dgl on dgl.id = ds.dynamic_geolocality 
left join dynamic_geodistrict as dgci on dgci.id = ds.dynamic_geolocality 
left join dynamic_taxonomy as dt on dt.id = ds.dynamic_taxonomy 
left join dynamic_taxonomy_group as dtg on dtg.id = ds.dynamic_taxonomy_group 
WHERE 1 AND dgl.text_title = 'Manresa' AND ds.language = 'es' AND da.id = 1;


select count(*) as total from dynamic_rooms as ds 
left join avantio_inmovilla as ai on ai.id = ds.id 
left join dynamic_accion as da on da.id = ds.dynamic_accion 
left join dynamic_agencia as daa on daa.id = ds.dynamic_agencia 
left join dynamic_gallery_inmo_principal as dgip on dgip.id = ds.dynamic_agencia 
left join dynamic_gallery_inmo as dg on dg.id = ds.dynamic_gallery_inmo 
left join dynamic_geocity as dgc on dgc.id = ds.dynamic_geocity 
left join dynamic_geolocality as dgl on dgl.id = ds.dynamic_geolocality 
left join dynamic_geodistrict as dgci on dgci.id = ds.dynamic_geolocality 
left join dynamic_taxonomy as dt on dt.id = ds.dynamic_taxonomy 
left join dynamic_taxonomy_group as dtg on dtg.id = ds.dynamic_taxonomy_group 
WHERE 1 AND ai.checkbox_aire_con= 0 AND ai.checkbox_calefaccion= 0 AND ai.checkbox_chimenea= 0 AND ai.checkbox_alarmaincendio= 0 
AND ai.checkbox_alarmarobo= 0 AND ai.checkbox_gasciudad= 0 AND ai.checkbox_cajafuerte= 0 AND ai.checkbox_tv= 0 
AND ai.checkbox_satelite= 0 AND ai.checkbox_parking= 0 AND ai.checkbox_garajedoble= 0 AND ai.checkbox_ascensor= 0 AND ai.checkbox_terraza= 0 
AND ai.checkbox_balcon= 0 AND ai.checkbox_urbanizacion= 0 AND ai.checkbox_aire_con= 0 AND ai.checkbox_calefaccion= 0 AND ai.checkbox_chimenea= 0 
AND ai.checkbox_alarmaincendio= 0 AND ai.checkbox_alarmarobo= 0 AND ai.checkbox_gasciudad= 0 AND ai.checkbox_cajafuerte= 0 AND ai.checkbox_tv= 0 
AND ai.checkbox_satelite= 0 AND ai.checkbox_parking= 0 AND ai.checkbox_garajedoble= 0 AND ai.checkbox_ascensor= 0 
AND ai.checkbox_terraza= 0 AND ai.checkbox_balcon= 0 AND ai.checkbox_urbanizacion= 0 AND ai.checkbox_aire_con= 0 AND ai.checkbox_calefaccion= 0 
AND ai.checkbox_chimenea= 0 AND ai.checkbox_alarmaincendio= 0 AND ai.checkbox_alarmarobo= 0 AND ai.checkbox_gasciudad= 0 AND ai.checkbox_cajafuerte= 0 
AND ai.checkbox_tv= 0 AND ai.checkbox_satelite= 0 AND ai.checkbox_parking= 0 AND ai.checkbox_garajedoble= 0 AND ai.checkbox_ascensor= 0 
AND ai.checkbox_terraza= 0 AND ai.checkbox_balcon= 0 AND ai.checkbox_urbanizacion= 0 AND ai.checkbox_aire_con= 0 AND ai.checkbox_calefaccion= 0 
AND ai.checkbox_chimenea= 0 AND ai.checkbox_alarmaincendio= 0 AND ai.checkbox_alarmarobo= 0 AND ai.checkbox_gasciudad= 0 AND ai.checkbox_cajafuerte= 0 
AND ai.checkbox_tv= 0 AND ai.checkbox_satelite= 0 AND ai.checkbox_parking= 0 AND ai.checkbox_garajedoble= 0 AND ai.checkbox_ascensor= 0 AND ai.checkbox_terraza= 0 
AND ai.checkbox_balcon= 0 AND ai.checkbox_urbanizacion= 0 
AND dgl.text_title = 'Manresa' AND dgl.text_title = 'Manresa' AND ds.language = 'es' AND da.id = 1


CREATE DATABASE phpandfr_inmobiliaria_store CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE `dynamic_faqsagentes` (
    `id` int(11) NOT NULL COMMENT "identificador",
    `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT "lenguage",
    `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
    `dynamic_faqsagentes_type` int(11) COMMENT "faq propietarios",
    `textarea_description` text COMMENT 'Descripción',
    `text_page_title` varchar(75) COMMENT 'Titulo pagina',
    `text_slug` varchar(255) COMMENT 'Manual slug', 
	`auto_slug` varchar(255) COMMENT 'Auto slug', 
	`text_meta_keywords` varchar(255) COMMENT 'Meta Keywordds', 
	`text_meta_description` varchar(255) COMMENT 'Meta Description', 
	`text_meta_robots` varchar(45) COMMENT 'Robots', 
	`textarea_scripts_header` text COMMENT 'Scripts header', 
	`textarea_scripts_body` text COMMENT 'Scripts body', 
	status enum('ACTIVED','PAUSED') default 'ACTIVED' COMMENT'Scripts body', 
	position int(11) default '0' COMMENT 'Position',
	PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Faq Inmobiliarias';


CREATE TABLE `dynamic_faqsagentes_type` (
	`id` int(11) NOT NULL COMMENT "identificador",
    `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT "lenguage", 
	`text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
	`text_page_title` varchar(75) COMMENT 'Titulo pagina',
    `text_slug` varchar(255) COMMENT 'Manual slug', 
	`auto_slug` varchar(255) COMMENT 'Auto slug', 
	`text_meta_keywords` varchar(255) COMMENT 'Meta Keywordds', 
	`text_meta_description` varchar(255) COMMENT 'Meta Description', 
	`text_meta_robots` varchar(45) COMMENT 'Robots', 
	`textarea_scripts_header` text COMMENT 'Scripts header', 
	`textarea_scripts_body` text COMMENT 'Scripts body', 
	status enum('ACTIVED','PAUSED') default 'ACTIVED' COMMENT'Scripts body', 
	position int(11) default '0' COMMENT 'Position',
	PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tipos Faq Inmobiliarias';


create table dynamic_faqspropietarios(
	id int(11), 
	language varchar(3) 
	text_title varchar(75) 
	dynamic_faqspropietarios_type int(11) 
	textarea_description text 	
	text_page_title varchar(75) 
	text_slug varchar(255) 
	auto_slug varchar(255) 
	text_meta_keywords varchar(255) 
	text_meta_description varchar(255) 
	text_meta_robots varchar(45) 
	textarea_scripts_header text 
	textarea_scripts_body text 
	status enum('ACTIVED','PAUSED') 
	position int(11)
    primary key()
); 


# drop database phpandfr_inmobiliaria_blog;
# CREATE DATABASE phpandfr_inmobiliaria_blog CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

use phpandfr_inmobiliaria_blog;

SELECT ID,post_author,post_date,post_date_gmt,post_title FROM wp_posts 
WHERE 1=1 
AND wp_posts.post_type = 'post' 
AND (wp_posts.post_status = 'publish')
ORDER BY wp_posts.post_date DESC;


# obtenemos la imagen
SELECT 
	concat( (select option_value from wp_options where option_name ='siteurl'  limit 1), '/wp-content/uploads/' , childmeta.meta_value) as imagen,
    p.ID,    
p.post_author,   
p.post_date, 
p.post_date_gmt, 
p.post_content, 
p.post_title, 
p.post_excerpt,
p.post_status,  
p.comment_status,  
p.ping_status,  
p.post_password,  
p.post_name,  
p.to_ping, 
p.pinged, 
p.post_modified, 
p.post_modified_gmt, 
p.post_content_filtered, 
p.post_parent,   
p.guid,  
p.menu_order, 
p.post_type,  
p.post_mime_type,  
p.comment_count
FROM wp_postmeta childmeta 
INNER JOIN wp_postmeta parentmeta ON (childmeta.post_id=parentmeta.meta_value)
INNER JOIN wp_posts as p ON childmeta.post_id = p.ID
WHERE parentmeta.meta_key='_thumbnail_id' and childmeta.meta_key = '_wp_attached_file';


SELECT 
p.ID,    
p.post_author,   
p.post_date, 
p.post_date_gmt, 
p.post_content, 
p.post_title, 
p.post_excerpt,
p.post_status,  
p.comment_status,  
p.ping_status,  
p.post_password,  
p.post_name,  
p.to_ping, 
p.pinged, 
p.post_modified, 
p.post_modified_gmt, 
p.post_content_filtered, 
p.post_parent,   
p.guid,  
p.menu_order, 
p.post_type,  
p.post_mime_type,  
p.comment_count,
wt.slug as categoria
FROM wp_posts as p
INNER JOIN wp_term_relationships r ON r.object_id=p.ID
INNER JOIN wp_term_taxonomy t ON t.term_taxonomy_id = r.term_taxonomy_id
INNER JOIN wp_terms wt on wt.term_id = t.term_id
WHERE p.ID=1 and t.taxonomy="category";



# para las categorias
SELECT wt.* FROM wp_posts p
 INNER JOIN wp_term_relationships r ON r.object_id=p.ID
 INNER JOIN wp_term_taxonomy t ON t.term_taxonomy_id = r.term_taxonomy_id
 INNER JOIN wp_terms wt on wt.term_id = t.term_id
WHERE p.ID=1 AND t.taxonomy="category";




SELECT * from wp_posts as p  where p.post_title = "paula-echevarria";


# obtenemos el link

SELECT 
	p.ID,
    p.post_name,
    p.post_title, 
    p.post_content,
    p.post_excerpt,
    p.post_status,
    p.post_type,
    p.post_author,
    p.guid,
    p.post_date,
    p.post_date_gmt,
    p.post_modified_gmt
from wp_posts as p
where p.post_type = 'post' and p.post_status = 'publish' AND p.ID = 1;


# parentmeta.meta_key='_thumbnail_id' and childmeta.meta_key = '_wp_attached_file' and
# AND parentmeta.post_id = 1;
# p.post_status = 'publish';


SELECT 
	DISTINCT(p.ID),
	p.post_name,
    p.post_title, 
    p.post_content,
    p.post_excerpt,
    p.post_status,
    p.post_type,
    p.post_author,
    p.guid,
    p.post_date,
    p.post_date_gmt,
    p.post_modified_gmt,
    childmeta.meta_key,
    childmeta.meta_value
#INNER JOIN wp_postmeta parentmeta ON (childmeta.post_id=parentmeta.meta_value)
FROM wp_posts as p 
LEFT JOIN  wp_postmeta childmeta ON childmeta.post_id = p.ID; 
#WHERE parentmeta.meta_key='PermaLink'; 

select 
	p.ID,
    p.post_name,
    p.post_title, 
    p.post_content,
    p.post_excerpt,
    p.post_status,
    p.post_type,
    p.post_author,
    p.guid,
    p.post_date,
    p.post_date_gmt,
    p.post_modified_gmt,
	postmeta.meta_key,
    postmeta.meta_value
from wp_posts as p
LEFT JOIN  wp_postmeta AS postmeta ON postmeta.post_id = p.ID
INNER JOIN  wp_postmeta AS parentmeta ON (postmeta.post_id = parentmeta.meta_value)
LEFT JOIN `wp_term_relationships` AS tr ON p.ID = tr.object_id
LEFT JOIN  `wp_term_taxonomy` AS tt ON tr.term_taxonomy_id = tt.term_taxonomy_id
WHERE post_type = 'post' AND post_status='publish' AND postmeta.meta_key = 'destacado_home' and postmeta.meta_key = '_wp_attached_file'   
ORDER BY p.Id DESC;
    

SELECT Distinct(p.ID) AS postId, 
    p.post_name,
    p.post_title, 
    p.post_content,
    p.post_excerpt,
    p.post_status,
    p.post_type,
    p.post_author,
    p.guid,
    p.post_date,
    p.post_date_gmt,
    p.post_modified_gmt,
	postmeta.meta_key,
    postmeta.meta_value,
    (SELECT group_concat(t.name SEPARATOR ', ')
   FROM wp_terms t
     LEFT JOIN wp_term_taxonomy tt ON t.term_id = tt.term_id
     LEFT JOIN wp_term_relationships tr ON tr.term_taxonomy_id = tt.term_taxonomy_id
	WHERE tt.taxonomy = 'category' AND p.ID = tr.object_id
  ) AS category
FROM `wp_posts` AS p
LEFT JOIN  wp_postmeta AS postmeta ON postmeta.post_id = p.ID
LEFT JOIN `wp_term_relationships` AS tr ON p.ID = tr.object_id
LEFT JOIN  `wp_term_taxonomy` AS tt ON tr.term_taxonomy_id = tt.term_taxonomy_id
WHERE post_type = 'post' AND post_status='publish'    
ORDER BY postId DESC;

# AND tt.term_id = 11
# postmeta.meta_value,
# AND postmeta.meta_key = '_wp_attached_file'


 SELECT
        p1.*,
        wm2.meta_value
    FROM 
        wp_posts p1
    LEFT JOIN 
        wp_postmeta wm1
        ON (
            wm1.post_id = p1.id 
            AND wm1.meta_value IS NOT NULL
            AND wm1.meta_key = "_thumbnail_id"              
        )
    LEFT JOIN 
        wp_postmeta wm2
        ON (
            wm1.meta_value = wm2.post_id
            AND wm2.meta_key = "_wp_attached_file"
            AND wm2.meta_value IS NOT NULL  
        )
    WHERE
        p1.post_status="publish" 
        AND p1.post_type="post"
    ORDER BY 
        p1.post_date DESC




INSERT INTO dynamic_offers_taxonomy VALUES ( 4,'es',"oferta-venta-de-propiedades-en-bages",1,0,'','',"oferta-venta-de-propiedades-en-bages","
Encuentre aquí nuestra selección de propiedades en venta Tanto si busca pisos funcionales, casas espaciosas o increibles villas, nuestras propiedades son una de las mejores formas de disfrutar de la montaña y de las actividades deportivas es el destino ideal debido a su clima cálido, su montaña y sus numerosas actividades de ocio para todos los públicos. Si compra su propiedad en , estará en el centro del Bages.

","Venta de propiedades | Especialistas en venta de propiedades",'',"oferta-venta-de-propiedades-en-bages","venta propiedades , propiedades , venta propiedades , casas , apartamentos ","Venta de apartamentos para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra","INDEX,FOLLOW","","","ACTIVED",4 );


id int(11) PK 
language varchar(3) PK 
text_title varchar(75) 
dynamic_gallery varchar(45) 
dynamic_gallery_home varchar(45) 
text_body_title varchar(75) 
dynamic_accion int(11) 
dynamic_taxonomy_group int(10) UN 
dynamic_geolocality int(10) UN 
textarea_description text 
text_body_title_no_res varchar(75) 
textarea_description_no_res text 
text_page_title varchar(255) 
text_slug varchar(255) 
auto_slug varchar(255) 
text_meta_keywords varchar(255) 
text_meta_description varchar(255) 
text_meta_robots varchar(45) 
textarea_scripts_header text 
textarea_scripts_body text 
status enum('ACTIVED','PAUSED') 
position int(11)


alter table dynamic_offers_taxonomy add column `dynamic_accion` int(11) DEFAULT '0' COMMENT 'Identificador de accion | venta | alquiler | compra'; 
alter table dynamic_offers_taxonomy add column `dynamic_taxonomy_group` int(11) DEFAULT '0' COMMENT 'Tipo propiedad | piso | casa | local'; 
alter table dynamic_offers_taxonomy add column `dynamic_gallery_home` varchar(45) DEFAULT '0' COMMENT 'Galeria home'; 


id int(11) PK 
language varchar(3) PK 
text_title varchar(75) 
dynamic_gallery varchar(45) 
text_body_title varchar(75) 
textarea_description text 
text_page_title varchar(75) 
text_slug varchar(255) 
auto_slug varchar(255) 
text_meta_keywords varchar(255) 
text_meta_description varchar(255) 
text_meta_robots varchar(45) 
textarea_scripts_header text 
textarea_scripts_body text 
status enum('ACTIVED','PAUSED') 
position int(11)

alter table dynamic_taxonomy_city add column `dynamic_accion` int(11) DEFAULT '0' COMMENT 'Identificador de accion | venta | alquiler | compra'; 

INSERT INTO
   `dynamic_taxonomy_city` 
VALUES
   (
		59, 'es', 'Venta de propiedades en Aguilar de Segarra', '1', '11', 'Venta de propiedades en Aguilar de Segarra', 1, 0, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de propiedades en venta en Aguilar de Segarra. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras propiedades en Aguilar de Segarra son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Aguilar de Segarra es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Aguilar de Segarra, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de propiedades en Aguilar de Segarra | Especialistas en venta de propiedades', 'venta-propiedades-manresa', 'venta-de-propiedades-en-manresa', 'venta propiedades manresa, propiedades en manresa, venta propiedades en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Aguilar de Segarra para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Aguilar de Segarra.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
	),
    (
		60, 'es', 'Venta de pisos en Aguilar de Segarra', '1', '17', 'Venta de pisos en Aguilar de Segarra', 1, 1, '<p>Conozca nuestra selecci&oacute;n de pisos&nbsp;en Aguilar de Segarra. Si busca piso en Aguilar de Segarra, encuentre con Pisosmanresa los pisos que mejor se adapten a sus vacaciones. &nbsp;Nuestros pisos en Aguilar de Segarra, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Aguilar de Segarra. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Aguilar de Segarra&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre un piso en Aguilar de Segarra con Pisosmanresa. Disfrute de&nbsp; Aguilar de Segarra al mejor precio.</p>\r\n', '', '', 'Piso en Aguilar de Segarra | Especialistas en vender pisos en Aguilar de Segarra', 'vender-pisos-manresa', 'venta-de-pisos-en-manresa', 'vender pisos manresa, vender piso manresa, pisos en manresa, piso manresa bages, piso manresa', 'Venta de pisos en Aguilar de Segarra para en familia y en grupo. Descubra nuestra selección de pisos en venta y alquiler en Aguilar de Segarra, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		61, 'es', 'Venta de casas en Aguilar de Segarra', '1', '18', 'Venta de casas en Aguilar de Segarra', 1, 2, '<p>Conozca nuestra selecci&oacute;n de casas en Aguilar de Segarra. Si busca casa en Aguilar de Segarra, encuentre con Pisosmanresa las casas que mejor se adapten a sus vacaciones. &nbsp;Nuestras casas en Aguilar de Segarra, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Aguilar de Segarra. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Aguilar de Segarra&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre una casa en Aguilar de Segarra con Pisosmanresa. Disfrute de&nbsp; Aguilar de Segarra al mejor precio.</p>\r\n', '', '', 'Casa en Aguilar de Segarra | Especialistas en vender casas en Aguilar de Segarra', 'vender-casas-manresa', 'venta-de-casas-en-manresa', 'vender casas manresa, vender casa manresa, casas en manresa, casa manresa bages, casa manresa', 'Venta de casas en Aguilar de Segarra para en familia y en grupo. Descubra nuestra selección de casas en venta y alquiler en Aguilar de Segarra, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		62, 'es', 'Venta de oficinas en Aguilar de Segarra', '1', '19', 'Venta de oficinas en Aguilar de Segarra', 1, 3, '<p>Conozca nuestra selecci&oacute;n de oficinas en Aguilar de Segarra. Si busca oficina en Aguilar de Segarra, encuentre con Pisosmanresa las oficinas que mejor se adapten a sus vacaciones. &nbsp;Nuestros oficinas en Aguilar de Segarra, Bages, son ideales para grupos&nbsp;que buscan toda la comodidad de su oficina. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Aguilar de Segarra&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso no lo dude, compre un oficina en Aguilar de Segarra con Pisosmanresa. Disfrute de&nbsp; Aguilar de Segarra al mejor precio.</p>\r\n', '', '', 'Oficinas en Aguilar de Segarra | Especialistas en vender oficinas en Aguilar de Segarra', 'vender-oficinas-manresa', 'venta-de-oficinas-en-manresa', 'vender oficinas manresa, vender oficina manresa, oficina en manresa, oficina manresa bages, oficina manresa', 'Venta de oficina en Aguilar de Segarra en grupo. Descubra nuestra selección de oficinas en venta y alquiler en Aguilar de Segarra, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		63, 'es', 'Venta de locales en Aguilar de Segarra', '1', '11', 'Venta de locales en Aguilar de Segarra', 1, 4, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de locales en venta en Aguilar de Segarra. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras locales en Aguilar de Segarra son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Aguilar de Segarra es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Aguilar de Segarra, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de locales en Aguilar de Segarra | Especialistas en venta de locales', 'venta-locales-manresa', 'venta-de-locales-en-manresa', 'venta locales manresa, locales en manresa, venta locales en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Aguilar de Segarra para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Aguilar de Segarra.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		64, 'es', 'Venta de parkings en Aguilar de Segarra', '1', '11', 'Venta de parkings en Aguilar de Segarra', 1, 5, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de parkings en venta en Aguilar de Segarra. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras parkings en Aguilar de Segarra son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Aguilar de Segarra es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Aguilar de Segarra, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de parkings en Aguilar de Segarra | Especialistas en venta de parkings', 'venta-parkings-manresa', 'venta-de-parkings-en-manresa', 'venta parkings manresa, parkings en manresa, venta parkings en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Aguilar de Segarra para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Aguilar de Segarra.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		65, 'es', 'Venta de terrenos en Aguilar de Segarra', '1', '11', 'Venta de terrenos en Aguilar de Segarra', 1, 6, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de terrenos en venta en Aguilar de Segarra. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras terrenos en Aguilar de Segarra son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Aguilar de Segarra es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Aguilar de Segarra, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de terrenos en Aguilar de Segarra | Especialistas en venta de terrenos', 'venta-terrenos-manresa', 'venta-de-terrenos-en-manresa', 'venta terrenos manresa, terrenos en manresa, venta terrenos en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Aguilar de Segarra para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Aguilar de Segarra.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		66, 'es', 'Venta de naves en Aguilar de Segarra', '1', '11', 'Venta de naves en Aguilar de Segarra', 1, 7, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de naves en venta en Aguilar de Segarra. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras naves en Aguilar de Segarra son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Aguilar de Segarra es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Aguilar de Segarra, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de naves en Aguilar de Segarra | Especialistas en venta de naves', 'venta-naves-manresa', 'venta-de-naves-en-manresa', 'venta naves manresa, naves en manresa, venta naves en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Aguilar de Segarra para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Aguilar de Segarra.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		67, 'es', 'Venta de edificios en Aguilar de Segarra', '1', '11', 'Venta de edificios en Aguilar de Segarra', 1, 8, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de edificios en venta en Aguilar de Segarra. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras edificios en Aguilar de Segarra son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Aguilar de Segarra es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Aguilar de Segarra, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de edificios en Aguilar de Segarra | Especialistas en venta de edificios', 'venta-edificios-manresa', 'venta-de-edificios-en-manresa', 'venta edificios manresa, edificios en manresa, venta edificios en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Aguilar de Segarra para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Aguilar de Segarra.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		68, 'es', 'Venta de propiedades en Artes', '1', '11', 'Venta de propiedades en Artes', 2, 0, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de propiedades en venta en Artes. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras propiedades en Artes son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Artes es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Artes, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de propiedades en Artes | Especialistas en venta de propiedades', 'venta-propiedades-manresa', 'venta-de-propiedades-en-manresa', 'venta propiedades manresa, propiedades en manresa, venta propiedades en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Artes para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Artes.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
	),
    (
		69, 'es', 'Venta de pisos en Artes', '1', '17', 'Venta de pisos en Artes', 2, 1, '<p>Conozca nuestra selecci&oacute;n de pisos&nbsp;en Artes. Si busca piso en Artes, encuentre con Pisosmanresa los pisos que mejor se adapten a sus vacaciones. &nbsp;Nuestros pisos en Artes, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Artes. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Artes&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre un piso en Artes con Pisosmanresa. Disfrute de&nbsp; Artes al mejor precio.</p>\r\n', '', '', 'Piso en Artes | Especialistas en vender pisos en Artes', 'vender-pisos-manresa', 'venta-de-pisos-en-manresa', 'vender pisos manresa, vender piso manresa, pisos en manresa, piso manresa bages, piso manresa', 'Venta de pisos en Artes para en familia y en grupo. Descubra nuestra selección de pisos en venta y alquiler en Artes, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		70, 'es', 'Venta de casas en Artes', '1', '18', 'Venta de casas en Artes', 2, 2, '<p>Conozca nuestra selecci&oacute;n de casas en Artes. Si busca casa en Artes, encuentre con Pisosmanresa las casas que mejor se adapten a sus vacaciones. &nbsp;Nuestras casas en Artes, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Artes. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Artes&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre una casa en Artes con Pisosmanresa. Disfrute de&nbsp; Artes al mejor precio.</p>\r\n', '', '', 'Casa en Artes | Especialistas en vender casas en Artes', 'vender-casas-manresa', 'venta-de-casas-en-manresa', 'vender casas manresa, vender casa manresa, casas en manresa, casa manresa bages, casa manresa', 'Venta de casas en Artes para en familia y en grupo. Descubra nuestra selección de casas en venta y alquiler en Artes, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		71, 'es', 'Venta de oficinas en Artes', '1', '19', 'Venta de oficinas en Artes', 2, 3, '<p>Conozca nuestra selecci&oacute;n de oficinas en Artes. Si busca oficina en Artes, encuentre con Pisosmanresa las oficinas que mejor se adapten a sus vacaciones. &nbsp;Nuestros oficinas en Artes, Bages, son ideales para grupos&nbsp;que buscan toda la comodidad de su oficina. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Artes&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso no lo dude, compre un oficina en Artes con Pisosmanresa. Disfrute de&nbsp; Artes al mejor precio.</p>\r\n', '', '', 'Oficinas en Artes | Especialistas en vender oficinas en Artes', 'vender-oficinas-manresa', 'venta-de-oficinas-en-manresa', 'vender oficinas manresa, vender oficina manresa, oficina en manresa, oficina manresa bages, oficina manresa', 'Venta de oficina en Artes en grupo. Descubra nuestra selección de oficinas en venta y alquiler en Artes, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		72, 'es', 'Venta de locales en Artes', '1', '11', 'Venta de locales en Artes', 2, 4, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de locales en venta en Artes. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras locales en Artes son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Artes es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Artes, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de locales en Artes | Especialistas en venta de locales', 'venta-locales-manresa', 'venta-de-locales-en-manresa', 'venta locales manresa, locales en manresa, venta locales en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Artes para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Artes.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		73, 'es', 'Venta de parkings en Artes', '1', '11', 'Venta de parkings en Artes', 2, 5, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de parkings en venta en Artes. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras parkings en Artes son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Artes es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Artes, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de parkings en Artes | Especialistas en venta de parkings', 'venta-parkings-manresa', 'venta-de-parkings-en-manresa', 'venta parkings manresa, parkings en manresa, venta parkings en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Artes para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Artes.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		74, 'es', 'Venta de terrenos en Artes', '1', '11', 'Venta de terrenos en Artes', 2, 6, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de terrenos en venta en Artes. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras terrenos en Artes son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Artes es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Artes, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de terrenos en Artes | Especialistas en venta de terrenos', 'venta-terrenos-manresa', 'venta-de-terrenos-en-manresa', 'venta terrenos manresa, terrenos en manresa, venta terrenos en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Artes para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Artes.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		75, 'es', 'Venta de naves en Artes', '1', '11', 'Venta de naves en Artes', 2, 7, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de naves en venta en Artes. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras naves en Artes son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Artes es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Artes, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de naves en Artes | Especialistas en venta de naves', 'venta-naves-manresa', 'venta-de-naves-en-manresa', 'venta naves manresa, naves en manresa, venta naves en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Artes para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Artes.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		76, 'es', 'Venta de edificios en Artes', '1', '11', 'Venta de edificios en Artes', 2, 8, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de edificios en venta en Artes. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras edificios en Artes son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Artes es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Artes, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de edificios en Artes | Especialistas en venta de edificios', 'venta-edificios-manresa', 'venta-de-edificios-en-manresa', 'venta edificios manresa, edificios en manresa, venta edificios en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Artes para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Artes.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
	(
		77, 'es', 'Venta de propiedades en Avinyo', '1', '11', 'Venta de propiedades en Avinyo', 3, 0, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de propiedades en venta en Avinyo. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras propiedades en Avinyo son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Avinyo es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Avinyo, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de propiedades en Avinyo | Especialistas en venta de propiedades', 'venta-propiedades-manresa', 'venta-de-propiedades-en-manresa', 'venta propiedades manresa, propiedades en manresa, venta propiedades en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Avinyo para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Avinyo.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		78, 'es', 'Venta de pisos en Avinyo', '1', '17', 'Venta de pisos en Avinyo', 3, 1, '<p>Conozca nuestra selecci&oacute;n de pisos&nbsp;en Avinyo. Si busca piso en Avinyo, encuentre con Pisosmanresa los pisos que mejor se adapten a sus vacaciones. &nbsp;Nuestros pisos en Avinyo, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Avinyo. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Avinyo&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre un piso en Avinyo con Pisosmanresa. Disfrute de&nbsp; Avinyo al mejor precio.</p>\r\n', '', '', 'Piso en Avinyo | Especialistas en vender pisos en Avinyo', 'vender-pisos-manresa', 'venta-de-pisos-en-manresa', 'vender pisos manresa, vender piso manresa, pisos en manresa, piso manresa bages, piso manresa', 'Venta de pisos en Avinyo para en familia y en grupo. Descubra nuestra selección de pisos en venta y alquiler en Avinyo, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		79, 'es', 'Venta de casas en Avinyo', '1', '18', 'Venta de casas en Avinyo', 3, 2, '<p>Conozca nuestra selecci&oacute;n de casas en Avinyo. Si busca casa en Avinyo, encuentre con Pisosmanresa las casas que mejor se adapten a sus vacaciones. &nbsp;Nuestras casas en Avinyo, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Avinyo. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Avinyo&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre una casa en Avinyo con Pisosmanresa. Disfrute de&nbsp; Avinyo al mejor precio.</p>\r\n', '', '', 'Casa en Avinyo | Especialistas en vender casas en Avinyo', 'vender-casas-manresa', 'venta-de-casas-en-manresa', 'vender casas manresa, vender casa manresa, casas en manresa, casa manresa bages, casa manresa', 'Venta de casas en Avinyo para en familia y en grupo. Descubra nuestra selección de casas en venta y alquiler en Avinyo, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
	),
    (
		80, 'es', 'Venta de oficinas en Avinyo', '1', '19', 'Venta de oficinas en Avinyo', 3, 3, '<p>Conozca nuestra selecci&oacute;n de oficinas en Avinyo. Si busca oficina en Avinyo, encuentre con Pisosmanresa las oficinas que mejor se adapten a sus vacaciones. &nbsp;Nuestros oficinas en Avinyo, Bages, son ideales para grupos&nbsp;que buscan toda la comodidad de su oficina. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Avinyo&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso no lo dude, compre un oficina en Avinyo con Pisosmanresa. Disfrute de&nbsp; Avinyo al mejor precio.</p>\r\n', '', '', 'Oficinas en Avinyo | Especialistas en vender oficinas en Avinyo', 'vender-oficinas-manresa', 'venta-de-oficinas-en-manresa', 'vender oficinas manresa, vender oficina manresa, oficina en manresa, oficina manresa bages, oficina manresa', 'Venta de oficina en Avinyo en grupo. Descubra nuestra selección de oficinas en venta y alquiler en Avinyo, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		81, 'es', 'Venta de locales en Avinyo', '1', '11', 'Venta de locales en Avinyo', 3, 4, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de locales en venta en Avinyo. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras locales en Avinyo son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Avinyo es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Avinyo, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de locales en Avinyo | Especialistas en venta de locales', 'venta-locales-manresa', 'venta-de-locales-en-manresa', 'venta locales manresa, locales en manresa, venta locales en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Avinyo para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Avinyo.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		82, 'es', 'Venta de parkings en Avinyo', '1', '11', 'Venta de parkings en Avinyo', 3, 5, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de parkings en venta en Avinyo. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras parkings en Avinyo son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Avinyo es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Avinyo, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de parkings en Avinyo | Especialistas en venta de parkings', 'venta-parkings-manresa', 'venta-de-parkings-en-manresa', 'venta parkings manresa, parkings en manresa, venta parkings en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Avinyo para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Avinyo.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		83, 'es', 'Venta de terrenos en Avinyo', '1', '11', 'Venta de terrenos en Avinyo', 3, 6, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de terrenos en venta en Avinyo. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras terrenos en Avinyo son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Avinyo es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Avinyo, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de terrenos en Avinyo | Especialistas en venta de terrenos', 'venta-terrenos-manresa', 'venta-de-terrenos-en-manresa', 'venta terrenos manresa, terrenos en manresa, venta terrenos en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Avinyo para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Avinyo.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		84, 'es', 'Venta de naves en Avinyo', '1', '11', 'Venta de naves en Avinyo', 3, 7, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de naves en venta en Avinyo. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras naves en Avinyo son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Avinyo es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Avinyo, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de naves en Avinyo | Especialistas en venta de naves', 'venta-naves-manresa', 'venta-de-naves-en-manresa', 'venta naves manresa, naves en manresa, venta naves en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Avinyo para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Avinyo.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		85, 'es', 'Venta de edificios en Avinyo', '1', '11', 'Venta de edificios en Avinyo', 3, 8, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de edificios en venta en Avinyo. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras edificios en Avinyo son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Avinyo es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Avinyo, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de edificios en Avinyo | Especialistas en venta de edificios', 'venta-edificios-manresa', 'venta-de-edificios-en-manresa', 'venta edificios manresa, edificios en manresa, venta edificios en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Avinyo para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Avinyo.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		86, 'es', 'Venta de propiedades en Balserany', '1', '11', 'Venta de propiedades en Balserany', 4, 0, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de propiedades en venta en Balserany. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras propiedades en Balserany son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Balserany es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Balserany, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de propiedades en Balserany | Especialistas en venta de propiedades', 'venta-propiedades-manresa', 'venta-de-propiedades-en-manresa', 'venta propiedades manresa, propiedades en manresa, venta propiedades en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Balserany para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Balserany.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		87, 'es', 'Venta de pisos en Balserany', '1', '17', 'Venta de pisos en Balserany', 4, 1, '<p>Conozca nuestra selecci&oacute;n de pisos&nbsp;en Balserany. Si busca piso en Balserany, encuentre con Pisosmanresa los pisos que mejor se adapten a sus vacaciones. &nbsp;Nuestros pisos en Balserany, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Balserany. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Balserany&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre un piso en Balserany con Pisosmanresa. Disfrute de&nbsp; Balserany al mejor precio.</p>\r\n', '', '', 'Piso en Balserany | Especialistas en vender pisos en Balserany', 'vender-pisos-manresa', 'venta-de-pisos-en-manresa', 'vender pisos manresa, vender piso manresa, pisos en manresa, piso manresa bages, piso manresa', 'Venta de pisos en Balserany para en familia y en grupo. Descubra nuestra selección de pisos en venta y alquiler en Balserany, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		88, 'es', 'Venta de casas en Balserany', '1', '18', 'Venta de casas en Balserany', 4, 2, '<p>Conozca nuestra selecci&oacute;n de casas en Balserany. Si busca casa en Balserany, encuentre con Pisosmanresa las casas que mejor se adapten a sus vacaciones. &nbsp;Nuestras casas en Balserany, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Balserany. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Balserany&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre una casa en Balserany con Pisosmanresa. Disfrute de&nbsp; Balserany al mejor precio.</p>\r\n', '', '', 'Casa en Balserany | Especialistas en vender casas en Balserany', 'vender-casas-manresa', 'venta-de-casas-en-manresa', 'vender casas manresa, vender casa manresa, casas en manresa, casa manresa bages, casa manresa', 'Venta de casas en Balserany para en familia y en grupo. Descubra nuestra selección de casas en venta y alquiler en Balserany, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		89, 'es', 'Venta de oficinas en Balserany', '1', '19', 'Venta de oficinas en Balserany', 4, 3, '<p>Conozca nuestra selecci&oacute;n de oficinas en Balserany. Si busca oficina en Balserany, encuentre con Pisosmanresa las oficinas que mejor se adapten a sus vacaciones. &nbsp;Nuestros oficinas en Balserany, Bages, son ideales para grupos&nbsp;que buscan toda la comodidad de su oficina. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Balserany&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso no lo dude, compre un oficina en Balserany con Pisosmanresa. Disfrute de&nbsp; Balserany al mejor precio.</p>\r\n', '', '', 'Oficinas en Balserany | Especialistas en vender oficinas en Balserany', 'vender-oficinas-manresa', 'venta-de-oficinas-en-manresa', 'vender oficinas manresa, vender oficina manresa, oficina en manresa, oficina manresa bages, oficina manresa', 'Venta de oficina en Balserany en grupo. Descubra nuestra selección de oficinas en venta y alquiler en Balserany, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		90, 'es', 'Venta de locales en Balserany', '1', '11', 'Venta de locales en Balserany', 4, 4, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de locales en venta en Balserany. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras locales en Balserany son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Balserany es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Balserany, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de locales en Balserany | Especialistas en venta de locales', 'venta-locales-manresa', 'venta-de-locales-en-manresa', 'venta locales manresa, locales en manresa, venta locales en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Balserany para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Balserany.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		91, 'es', 'Venta de parkings en Balserany', '1', '11', 'Venta de parkings en Balserany', 4, 5, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de parkings en venta en Balserany. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras parkings en Balserany son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Balserany es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Balserany, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de parkings en Balserany | Especialistas en venta de parkings', 'venta-parkings-manresa', 'venta-de-parkings-en-manresa', 'venta parkings manresa, parkings en manresa, venta parkings en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Balserany para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Balserany.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		92, 'es', 'Venta de terrenos en Balserany', '1', '11', 'Venta de terrenos en Balserany', 4, 6, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de terrenos en venta en Balserany. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras terrenos en Balserany son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Balserany es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Balserany, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de terrenos en Balserany | Especialistas en venta de terrenos', 'venta-terrenos-manresa', 'venta-de-terrenos-en-manresa', 'venta terrenos manresa, terrenos en manresa, venta terrenos en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Balserany para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Balserany.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
	),
    (
		93, 'es', 'Venta de naves en Balserany', '1', '11', 'Venta de naves en Balserany', 4, 7, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de naves en venta en Balserany. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras naves en Balserany son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Balserany es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Balserany, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de naves en Balserany | Especialistas en venta de naves', 'venta-naves-manresa', 'venta-de-naves-en-manresa', 'venta naves manresa, naves en manresa, venta naves en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Balserany para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Balserany.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		94, 'es', 'Venta de edificios en Balserany', '1', '11', 'Venta de edificios en Balserany', 4, 8, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de edificios en venta en Balserany. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras edificios en Balserany son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Balserany es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Balserany, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de edificios en Balserany | Especialistas en venta de edificios', 'venta-edificios-manresa', 'venta-de-edificios-en-manresa', 'venta edificios manresa, edificios en manresa, venta edificios en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Balserany para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Balserany.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		95, 'es', 'Venta de propiedades en Cabrianes', '1', '11', 'Venta de propiedades en Cabrianes', 5, 0, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de propiedades en venta en Cabrianes. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras propiedades en Cabrianes son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Cabrianes es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Cabrianes, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de propiedades en Cabrianes | Especialistas en venta de propiedades', 'venta-propiedades-manresa', 'venta-de-propiedades-en-manresa', 'venta propiedades manresa, propiedades en manresa, venta propiedades en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Cabrianes para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Cabrianes.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		96, 'es', 'Venta de pisos en Cabrianes', '1', '17', 'Venta de pisos en Cabrianes', 5, 1, '<p>Conozca nuestra selecci&oacute;n de pisos&nbsp;en Cabrianes. Si busca piso en Cabrianes, encuentre con Pisosmanresa los pisos que mejor se adapten a sus vacaciones. &nbsp;Nuestros pisos en Cabrianes, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Cabrianes. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Cabrianes&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre un piso en Cabrianes con Pisosmanresa. Disfrute de&nbsp; Cabrianes al mejor precio.</p>\r\n', '', '', 'Piso en Cabrianes | Especialistas en vender pisos en Cabrianes', 'vender-pisos-manresa', 'venta-de-pisos-en-manresa', 'vender pisos manresa, vender piso manresa, pisos en manresa, piso manresa bages, piso manresa', 'Venta de pisos en Cabrianes para en familia y en grupo. Descubra nuestra selección de pisos en venta y alquiler en Cabrianes, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		97, 'es', 'Venta de casas en Cabrianes', '1', '18', 'Venta de casas en Cabrianes', 5, 2, '<p>Conozca nuestra selecci&oacute;n de casas en Cabrianes. Si busca casa en Cabrianes, encuentre con Pisosmanresa las casas que mejor se adapten a sus vacaciones. &nbsp;Nuestras casas en Cabrianes, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Cabrianes. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Cabrianes&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre una casa en Cabrianes con Pisosmanresa. Disfrute de&nbsp; Cabrianes al mejor precio.</p>\r\n', '', '', 'Casa en Cabrianes | Especialistas en vender casas en Cabrianes', 'vender-casas-manresa', 'venta-de-casas-en-manresa', 'vender casas manresa, vender casa manresa, casas en manresa, casa manresa bages, casa manresa', 'Venta de casas en Cabrianes para en familia y en grupo. Descubra nuestra selección de casas en venta y alquiler en Cabrianes, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		98, 'es', 'Venta de oficinas en Cabrianes', '1', '19', 'Venta de oficinas en Cabrianes', 5, 3, '<p>Conozca nuestra selecci&oacute;n de oficinas en Cabrianes. Si busca oficina en Cabrianes, encuentre con Pisosmanresa las oficinas que mejor se adapten a sus vacaciones. &nbsp;Nuestros oficinas en Cabrianes, Bages, son ideales para grupos&nbsp;que buscan toda la comodidad de su oficina. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Cabrianes&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso no lo dude, compre un oficina en Cabrianes con Pisosmanresa. Disfrute de&nbsp; Cabrianes al mejor precio.</p>\r\n', '', '', 'Oficinas en Cabrianes | Especialistas en vender oficinas en Cabrianes', 'vender-oficinas-manresa', 'venta-de-oficinas-en-manresa', 'vender oficinas manresa, vender oficina manresa, oficina en manresa, oficina manresa bages, oficina manresa', 'Venta de oficina en Cabrianes en grupo. Descubra nuestra selección de oficinas en venta y alquiler en Cabrianes, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		99, 'es', 'Venta de locales en Cabrianes', '1', '11', 'Venta de locales en Cabrianes', 5, 4, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de locales en venta en Cabrianes. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras locales en Cabrianes son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Cabrianes es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Cabrianes, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de locales en Cabrianes | Especialistas en venta de locales', 'venta-locales-manresa', 'venta-de-locales-en-manresa', 'venta locales manresa, locales en manresa, venta locales en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Cabrianes para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Cabrianes.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		100, 'es', 'Venta de parkings en Cabrianes', '1', '11', 'Venta de parkings en Cabrianes', 5, 5, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de parkings en venta en Cabrianes. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras parkings en Cabrianes son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Cabrianes es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Cabrianes, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de parkings en Cabrianes | Especialistas en venta de parkings', 'venta-parkings-manresa', 'venta-de-parkings-en-manresa', 'venta parkings manresa, parkings en manresa, venta parkings en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Cabrianes para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Cabrianes.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		101, 'es', 'Venta de terrenos en Cabrianes', '1', '11', 'Venta de terrenos en Cabrianes', 5, 6, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de terrenos en venta en Cabrianes. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras terrenos en Cabrianes son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Cabrianes es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Cabrianes, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de terrenos en Cabrianes | Especialistas en venta de terrenos', 'venta-terrenos-manresa', 'venta-de-terrenos-en-manresa', 'venta terrenos manresa, terrenos en manresa, venta terrenos en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Cabrianes para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Cabrianes.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
	),
    (
		102, 'es', 'Venta de naves en Cabrianes', '1', '11', 'Venta de naves en Cabrianes', 5, 7, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de naves en venta en Cabrianes. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras naves en Cabrianes son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Cabrianes es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Cabrianes, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de naves en Cabrianes | Especialistas en venta de naves', 'venta-naves-manresa', 'venta-de-naves-en-manresa', 'venta naves manresa, naves en manresa, venta naves en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Cabrianes para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Cabrianes.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
	),
    (
		103, 'es', 'Venta de edificios en Cabrianes', '1', '11', 'Venta de edificios en Cabrianes', 5, 8, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de edificios en venta en Cabrianes. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras edificios en Cabrianes son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Cabrianes es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Cabrianes, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de edificios en Cabrianes | Especialistas en venta de edificios', 'venta-edificios-manresa', 'venta-de-edificios-en-manresa', 'venta edificios manresa, edificios en manresa, venta edificios en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Cabrianes para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Cabrianes.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		104, 'es', 'Venta de propiedades en Caldes', '1', '11', 'Venta de propiedades en Caldes', 6, 0, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de propiedades en venta en Caldes. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras propiedades en Caldes son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Caldes es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Caldes, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de propiedades en Caldes | Especialistas en venta de propiedades', 'venta-propiedades-manresa', 'venta-de-propiedades-en-manresa', 'venta propiedades manresa, propiedades en manresa, venta propiedades en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Caldes para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Caldes.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
	),
    (
		105, 'es', 'Venta de pisos en Caldes', '1', '17', 'Venta de pisos en Caldes', 6, 1, '<p>Conozca nuestra selecci&oacute;n de pisos&nbsp;en Caldes. Si busca piso en Caldes, encuentre con Pisosmanresa los pisos que mejor se adapten a sus vacaciones. &nbsp;Nuestros pisos en Caldes, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Caldes. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Caldes&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre un piso en Caldes con Pisosmanresa. Disfrute de&nbsp; Caldes al mejor precio.</p>\r\n', '', '', 'Piso en Caldes | Especialistas en vender pisos en Caldes', 'vender-pisos-manresa', 'venta-de-pisos-en-manresa', 'vender pisos manresa, vender piso manresa, pisos en manresa, piso manresa bages, piso manresa', 'Venta de pisos en Caldes para en familia y en grupo. Descubra nuestra selección de pisos en venta y alquiler en Caldes, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
	),
    (
		106, 'es', 'Venta de casas en Caldes', '1', '18', 'Venta de casas en Caldes', 6, 2, '<p>Conozca nuestra selecci&oacute;n de casas en Caldes. Si busca casa en Caldes, encuentre con Pisosmanresa las casas que mejor se adapten a sus vacaciones. &nbsp;Nuestras casas en Caldes, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Caldes. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Caldes&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre una casa en Caldes con Pisosmanresa. Disfrute de&nbsp; Caldes al mejor precio.</p>\r\n', '', '', 'Casa en Caldes | Especialistas en vender casas en Caldes', 'vender-casas-manresa', 'venta-de-casas-en-manresa', 'vender casas manresa, vender casa manresa, casas en manresa, casa manresa bages, casa manresa', 'Venta de casas en Caldes para en familia y en grupo. Descubra nuestra selección de casas en venta y alquiler en Caldes, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		107, 'es', 'Venta de oficinas en Caldes', '1', '19', 'Venta de oficinas en Caldes', 6, 3, '<p>Conozca nuestra selecci&oacute;n de oficinas en Caldes. Si busca oficina en Caldes, encuentre con Pisosmanresa las oficinas que mejor se adapten a sus vacaciones. &nbsp;Nuestros oficinas en Caldes, Bages, son ideales para grupos&nbsp;que buscan toda la comodidad de su oficina. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Caldes&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso no lo dude, compre un oficina en Caldes con Pisosmanresa. Disfrute de&nbsp; Caldes al mejor precio.</p>\r\n', '', '', 'Oficinas en Caldes | Especialistas en vender oficinas en Caldes', 'vender-oficinas-manresa', 'venta-de-oficinas-en-manresa', 'vender oficinas manresa, vender oficina manresa, oficina en manresa, oficina manresa bages, oficina manresa', 'Venta de oficina en Caldes en grupo. Descubra nuestra selección de oficinas en venta y alquiler en Caldes, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		108, 'es', 'Venta de locales en Caldes', '1', '11', 'Venta de locales en Caldes', 6, 4, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de locales en venta en Caldes. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras locales en Caldes son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Caldes es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Caldes, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de locales en Caldes | Especialistas en venta de locales', 'venta-locales-manresa', 'venta-de-locales-en-manresa', 'venta locales manresa, locales en manresa, venta locales en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Caldes para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Caldes.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		109, 'es', 'Venta de parkings en Caldes', '1', '11', 'Venta de parkings en Caldes', 6, 5, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de parkings en venta en Caldes. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras parkings en Caldes son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Caldes es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Caldes, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de parkings en Caldes | Especialistas en venta de parkings', 'venta-parkings-manresa', 'venta-de-parkings-en-manresa', 'venta parkings manresa, parkings en manresa, venta parkings en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Caldes para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Caldes.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		110, 'es', 'Venta de terrenos en Caldes', '1', '11', 'Venta de terrenos en Caldes', 6, 6, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de terrenos en venta en Caldes. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras terrenos en Caldes son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Caldes es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Caldes, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de terrenos en Caldes | Especialistas en venta de terrenos', 'venta-terrenos-manresa', 'venta-de-terrenos-en-manresa', 'venta terrenos manresa, terrenos en manresa, venta terrenos en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Caldes para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Caldes.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		111, 'es', 'Venta de naves en Caldes', '1', '11', 'Venta de naves en Caldes', 6, 7, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de naves en venta en Caldes. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras naves en Caldes son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Caldes es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Caldes, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de naves en Caldes | Especialistas en venta de naves', 'venta-naves-manresa', 'venta-de-naves-en-manresa', 'venta naves manresa, naves en manresa, venta naves en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Caldes para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Caldes.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		112, 'es', 'Venta de edificios en Caldes', '1', '11', 'Venta de edificios en Caldes', 6, 8, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de edificios en venta en Caldes. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras edificios en Caldes son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Caldes es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Caldes, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de edificios en Caldes | Especialistas en venta de edificios', 'venta-edificios-manresa', 'venta-de-edificios-en-manresa', 'venta edificios manresa, edificios en manresa, venta edificios en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Caldes para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Caldes.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		113, 'es', 'Venta de propiedades en Callus', '1', '11', 'Venta de propiedades en Callus', 7, 0, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de propiedades en venta en Callus. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras propiedades en Callus son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Callus es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Callus, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de propiedades en Callus | Especialistas en venta de propiedades', 'venta-propiedades-manresa', 'venta-de-propiedades-en-manresa', 'venta propiedades manresa, propiedades en manresa, venta propiedades en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Callus para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Callus.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		114, 'es', 'Venta de pisos en Callus', '1', '17', 'Venta de pisos en Callus', 7, 1, '<p>Conozca nuestra selecci&oacute;n de pisos&nbsp;en Callus. Si busca piso en Callus, encuentre con Pisosmanresa los pisos que mejor se adapten a sus vacaciones. &nbsp;Nuestros pisos en Callus, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Callus. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Callus&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre un piso en Callus con Pisosmanresa. Disfrute de&nbsp; Callus al mejor precio.</p>\r\n', '', '', 'Piso en Callus | Especialistas en vender pisos en Callus', 'vender-pisos-manresa', 'venta-de-pisos-en-manresa', 'vender pisos manresa, vender piso manresa, pisos en manresa, piso manresa bages, piso manresa', 'Venta de pisos en Callus para en familia y en grupo. Descubra nuestra selección de pisos en venta y alquiler en Callus, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		115, 'es', 'Venta de casas en Callus', '1', '18', 'Venta de casas en Callus', 7, 2, '<p>Conozca nuestra selecci&oacute;n de casas en Callus. Si busca casa en Callus, encuentre con Pisosmanresa las casas que mejor se adapten a sus vacaciones. &nbsp;Nuestras casas en Callus, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Callus. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Callus&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre una casa en Callus con Pisosmanresa. Disfrute de&nbsp; Callus al mejor precio.</p>\r\n', '', '', 'Casa en Callus | Especialistas en vender casas en Callus', 'vender-casas-manresa', 'venta-de-casas-en-manresa', 'vender casas manresa, vender casa manresa, casas en manresa, casa manresa bages, casa manresa', 'Venta de casas en Callus para en familia y en grupo. Descubra nuestra selección de casas en venta y alquiler en Callus, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		116, 'es', 'Venta de oficinas en Callus', '1', '19', 'Venta de oficinas en Callus', 7, 3, '<p>Conozca nuestra selecci&oacute;n de oficinas en Callus. Si busca oficina en Callus, encuentre con Pisosmanresa las oficinas que mejor se adapten a sus vacaciones. &nbsp;Nuestros oficinas en Callus, Bages, son ideales para grupos&nbsp;que buscan toda la comodidad de su oficina. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Callus&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso no lo dude, compre un oficina en Callus con Pisosmanresa. Disfrute de&nbsp; Callus al mejor precio.</p>\r\n', '', '', 'Oficinas en Callus | Especialistas en vender oficinas en Callus', 'vender-oficinas-manresa', 'venta-de-oficinas-en-manresa', 'vender oficinas manresa, vender oficina manresa, oficina en manresa, oficina manresa bages, oficina manresa', 'Venta de oficina en Callus en grupo. Descubra nuestra selección de oficinas en venta y alquiler en Callus, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
	),
    (
		117, 'es', 'Venta de locales en Callus', '1', '11', 'Venta de locales en Callus', 7, 4, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de locales en venta en Callus. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras locales en Callus son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Callus es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Callus, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de locales en Callus | Especialistas en venta de locales', 'venta-locales-manresa', 'venta-de-locales-en-manresa', 'venta locales manresa, locales en manresa, venta locales en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Callus para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Callus.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
	),
    (
		118, 'es', 'Venta de parkings en Callus', '1', '11', 'Venta de parkings en Callus', 7, 5, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de parkings en venta en Callus. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras parkings en Callus son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Callus es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Callus, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de parkings en Callus | Especialistas en venta de parkings', 'venta-parkings-manresa', 'venta-de-parkings-en-manresa', 'venta parkings manresa, parkings en manresa, venta parkings en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Callus para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Callus.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		119, 'es', 'Venta de terrenos en Callus', '1', '11', 'Venta de terrenos en Callus', 7, 6, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de terrenos en venta en Callus. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras terrenos en Callus son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Callus es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Callus, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de terrenos en Callus | Especialistas en venta de terrenos', 'venta-terrenos-manresa', 'venta-de-terrenos-en-manresa', 'venta terrenos manresa, terrenos en manresa, venta terrenos en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Callus para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Callus.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		120, 'es', 'Venta de naves en Callus', '1', '11', 'Venta de naves en Callus', 7, 7, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de naves en venta en Callus. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras naves en Callus son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Callus es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Callus, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de naves en Callus | Especialistas en venta de naves', 'venta-naves-manresa', 'venta-de-naves-en-manresa', 'venta naves manresa, naves en manresa, venta naves en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Callus para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Callus.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		121, 'es', 'Venta de edificios en Callus', '1', '11', 'Venta de edificios en Callus', 7, 8, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de edificios en venta en Callus. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras edificios en Callus son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Callus es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Callus, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de edificios en Callus | Especialistas en venta de edificios', 'venta-edificios-manresa', 'venta-de-edificios-en-manresa', 'venta edificios manresa, edificios en manresa, venta edificios en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Callus para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Callus.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		122, 'es', 'Venta de propiedades en Cardona', '1', '11', 'Venta de propiedades en Cardona', 8, 0, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de propiedades en venta en Cardona. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras propiedades en Cardona son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Cardona es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Cardona, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de propiedades en Cardona | Especialistas en venta de propiedades', 'venta-propiedades-manresa', 'venta-de-propiedades-en-manresa', 'venta propiedades manresa, propiedades en manresa, venta propiedades en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Cardona para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Cardona.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		123, 'es', 'Venta de pisos en Cardona', '1', '17', 'Venta de pisos en Cardona', 8, 1, '<p>Conozca nuestra selecci&oacute;n de pisos&nbsp;en Cardona. Si busca piso en Cardona, encuentre con Pisosmanresa los pisos que mejor se adapten a sus vacaciones. &nbsp;Nuestros pisos en Cardona, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Cardona. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Cardona&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre un piso en Cardona con Pisosmanresa. Disfrute de&nbsp; Cardona al mejor precio.</p>\r\n', '', '', 'Piso en Cardona | Especialistas en vender pisos en Cardona', 'vender-pisos-manresa', 'venta-de-pisos-en-manresa', 'vender pisos manresa, vender piso manresa, pisos en manresa, piso manresa bages, piso manresa', 'Venta de pisos en Cardona para en familia y en grupo. Descubra nuestra selección de pisos en venta y alquiler en Cardona, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
	),
    (
		124, 'es', 'Venta de casas en Cardona', '1', '18', 'Venta de casas en Cardona', 8, 2, '<p>Conozca nuestra selecci&oacute;n de casas en Cardona. Si busca casa en Cardona, encuentre con Pisosmanresa las casas que mejor se adapten a sus vacaciones. &nbsp;Nuestras casas en Cardona, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Cardona. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Cardona&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre una casa en Cardona con Pisosmanresa. Disfrute de&nbsp; Cardona al mejor precio.</p>\r\n', '', '', 'Casa en Cardona | Especialistas en vender casas en Cardona', 'vender-casas-manresa', 'venta-de-casas-en-manresa', 'vender casas manresa, vender casa manresa, casas en manresa, casa manresa bages, casa manresa', 'Venta de casas en Cardona para en familia y en grupo. Descubra nuestra selección de casas en venta y alquiler en Cardona, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		125, 'es', 'Venta de oficinas en Cardona', '1', '19', 'Venta de oficinas en Cardona', 8, 3, '<p>Conozca nuestra selecci&oacute;n de oficinas en Cardona. Si busca oficina en Cardona, encuentre con Pisosmanresa las oficinas que mejor se adapten a sus vacaciones. &nbsp;Nuestros oficinas en Cardona, Bages, son ideales para grupos&nbsp;que buscan toda la comodidad de su oficina. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Cardona&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso no lo dude, compre un oficina en Cardona con Pisosmanresa. Disfrute de&nbsp; Cardona al mejor precio.</p>\r\n', '', '', 'Oficinas en Cardona | Especialistas en vender oficinas en Cardona', 'vender-oficinas-manresa', 'venta-de-oficinas-en-manresa', 'vender oficinas manresa, vender oficina manresa, oficina en manresa, oficina manresa bages, oficina manresa', 'Venta de oficina en Cardona en grupo. Descubra nuestra selección de oficinas en venta y alquiler en Cardona, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		126, 'es', 'Venta de locales en Cardona', '1', '11', 'Venta de locales en Cardona', 8, 4, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de locales en venta en Cardona. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras locales en Cardona son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Cardona es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Cardona, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de locales en Cardona | Especialistas en venta de locales', 'venta-locales-manresa', 'venta-de-locales-en-manresa', 'venta locales manresa, locales en manresa, venta locales en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Cardona para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Cardona.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
	),
    (
		127, 'es', 'Venta de parkings en Cardona', '1', '11', 'Venta de parkings en Cardona', 8, 5, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de parkings en venta en Cardona. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras parkings en Cardona son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Cardona es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Cardona, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de parkings en Cardona | Especialistas en venta de parkings', 'venta-parkings-manresa', 'venta-de-parkings-en-manresa', 'venta parkings manresa, parkings en manresa, venta parkings en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Cardona para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Cardona.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
	),
    (
		128, 'es', 'Venta de terrenos en Cardona', '1', '11', 'Venta de terrenos en Cardona', 8, 6, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de terrenos en venta en Cardona. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras terrenos en Cardona son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Cardona es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Cardona, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de terrenos en Cardona | Especialistas en venta de terrenos', 'venta-terrenos-manresa', 'venta-de-terrenos-en-manresa', 'venta terrenos manresa, terrenos en manresa, venta terrenos en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Cardona para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Cardona.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
	),
    (
		129, 'es', 'Venta de naves en Cardona', '1', '11', 'Venta de naves en Cardona', 8, 7, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de naves en venta en Cardona. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras naves en Cardona son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Cardona es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Cardona, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de naves en Cardona | Especialistas en venta de naves', 'venta-naves-manresa', 'venta-de-naves-en-manresa', 'venta naves manresa, naves en manresa, venta naves en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Cardona para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Cardona.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		130, 'es', 'Venta de edificios en Cardona', '1', '11', 'Venta de edificios en Cardona', 8, 8, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de edificios en venta en Cardona. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras edificios en Cardona son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Cardona es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Cardona, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de edificios en Cardona | Especialistas en venta de edificios', 'venta-edificios-manresa', 'venta-de-edificios-en-manresa', 'venta edificios manresa, edificios en manresa, venta edificios en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Cardona para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Cardona.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		131, 'es', 'Venta de propiedades en CastellBell i el Vilar', '1', '11', 'Venta de propiedades en CastellBell i el Vilar', 9, 0, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de propiedades en venta en CastellBell i el Vilar. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras propiedades en CastellBell i el Vilar son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>CastellBell i el Vilar es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en CastellBell i el Vilar, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de propiedades en CastellBell i el Vilar | Especialistas en venta de propiedades', 'venta-propiedades-manresa', 'venta-de-propiedades-en-manresa', 'venta propiedades manresa, propiedades en manresa, venta propiedades en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en CastellBell i el Vilar para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en CastellBell i el Vilar.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		132, 'es', 'Venta de pisos en CastellBell i el Vilar', '1', '17', 'Venta de pisos en CastellBell i el Vilar', 9, 1, '<p>Conozca nuestra selecci&oacute;n de pisos&nbsp;en CastellBell i el Vilar. Si busca piso en CastellBell i el Vilar, encuentre con Pisosmanresa los pisos que mejor se adapten a sus vacaciones. &nbsp;Nuestros pisos en CastellBell i el Vilar, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de CastellBell i el Vilar. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>CastellBell i el Vilar&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre un piso en CastellBell i el Vilar con Pisosmanresa. Disfrute de&nbsp; CastellBell i el Vilar al mejor precio.</p>\r\n', '', '', 'Piso en CastellBell i el Vilar | Especialistas en vender pisos en CastellBell i el Vilar', 'vender-pisos-manresa', 'venta-de-pisos-en-manresa', 'vender pisos manresa, vender piso manresa, pisos en manresa, piso manresa bages, piso manresa', 'Venta de pisos en CastellBell i el Vilar para en familia y en grupo. Descubra nuestra selección de pisos en venta y alquiler en CastellBell i el Vilar, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		133, 'es', 'Venta de casas en CastellBell i el Vilar', '1', '18', 'Venta de casas en CastellBell i el Vilar', 9, 2, '<p>Conozca nuestra selecci&oacute;n de casas en CastellBell i el Vilar. Si busca casa en CastellBell i el Vilar, encuentre con Pisosmanresa las casas que mejor se adapten a sus vacaciones. &nbsp;Nuestras casas en CastellBell i el Vilar, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de CastellBell i el Vilar. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>CastellBell i el Vilar&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre una casa en CastellBell i el Vilar con Pisosmanresa. Disfrute de&nbsp; CastellBell i el Vilar al mejor precio.</p>\r\n', '', '', 'Casa en CastellBell i el Vilar | Especialistas en vender casas en CastellBell i el Vilar', 'vender-casas-manresa', 'venta-de-casas-en-manresa', 'vender casas manresa, vender casa manresa, casas en manresa, casa manresa bages, casa manresa', 'Venta de casas en CastellBell i el Vilar para en familia y en grupo. Descubra nuestra selección de casas en venta y alquiler en CastellBell i el Vilar, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		134, 'es', 'Venta de oficinas en CastellBell i el Vilar', '1', '19', 'Venta de oficinas en CastellBell i el Vilar', 9, 3, '<p>Conozca nuestra selecci&oacute;n de oficinas en CastellBell i el Vilar. Si busca oficina en CastellBell i el Vilar, encuentre con Pisosmanresa las oficinas que mejor se adapten a sus vacaciones. &nbsp;Nuestros oficinas en CastellBell i el Vilar, Bages, son ideales para grupos&nbsp;que buscan toda la comodidad de su oficina. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>CastellBell i el Vilar&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso no lo dude, compre un oficina en CastellBell i el Vilar con Pisosmanresa. Disfrute de&nbsp; CastellBell i el Vilar al mejor precio.</p>\r\n', '', '', 'Oficinas en CastellBell i el Vilar | Especialistas en vender oficinas en CastellBell i el Vilar', 'vender-oficinas-manresa', 'venta-de-oficinas-en-manresa', 'vender oficinas manresa, vender oficina manresa, oficina en manresa, oficina manresa bages, oficina manresa', 'Venta de oficina en CastellBell i el Vilar en grupo. Descubra nuestra selección de oficinas en venta y alquiler en CastellBell i el Vilar, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		135, 'es', 'Venta de locales en CastellBell i el Vilar', '1', '11', 'Venta de locales en CastellBell i el Vilar', 9, 4, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de locales en venta en CastellBell i el Vilar. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras locales en CastellBell i el Vilar son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>CastellBell i el Vilar es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en CastellBell i el Vilar, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de locales en CastellBell i el Vilar | Especialistas en venta de locales', 'venta-locales-manresa', 'venta-de-locales-en-manresa', 'venta locales manresa, locales en manresa, venta locales en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en CastellBell i el Vilar para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en CastellBell i el Vilar.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		136, 'es', 'Venta de parkings en CastellBell i el Vilar', '1', '11', 'Venta de parkings en CastellBell i el Vilar', 9, 5, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de parkings en venta en CastellBell i el Vilar. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras parkings en CastellBell i el Vilar son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>CastellBell i el Vilar es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en CastellBell i el Vilar, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de parkings en CastellBell i el Vilar | Especialistas en venta de parkings', 'venta-parkings-manresa', 'venta-de-parkings-en-manresa', 'venta parkings manresa, parkings en manresa, venta parkings en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en CastellBell i el Vilar para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en CastellBell i el Vilar.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		137, 'es', 'Venta de terrenos en CastellBell i el Vilar', '1', '11', 'Venta de terrenos en CastellBell i el Vilar', 9, 6, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de terrenos en venta en CastellBell i el Vilar. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras terrenos en CastellBell i el Vilar son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>CastellBell i el Vilar es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en CastellBell i el Vilar, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de terrenos en CastellBell i el Vilar | Especialistas en venta de terrenos', 'venta-terrenos-manresa', 'venta-de-terrenos-en-manresa', 'venta terrenos manresa, terrenos en manresa, venta terrenos en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en CastellBell i el Vilar para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en CastellBell i el Vilar.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		138, 'es', 'Venta de naves en CastellBell i el Vilar', '1', '11', 'Venta de naves en CastellBell i el Vilar', 9, 7, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de naves en venta en CastellBell i el Vilar. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras naves en CastellBell i el Vilar son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>CastellBell i el Vilar es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en CastellBell i el Vilar, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de naves en CastellBell i el Vilar | Especialistas en venta de naves', 'venta-naves-manresa', 'venta-de-naves-en-manresa', 'venta naves manresa, naves en manresa, venta naves en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en CastellBell i el Vilar para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en CastellBell i el Vilar.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
		139, 'es', 'Venta de edificios en CastellBell i el Vilar', '1', '11', 'Venta de edificios en CastellBell i el Vilar', 9, 8, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de edificios en venta en CastellBell i el Vilar. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras edificios en CastellBell i el Vilar son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>CastellBell i el Vilar es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en CastellBell i el Vilar, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de edificios en CastellBell i el Vilar | Especialistas en venta de edificios', 'venta-edificios-manresa', 'venta-de-edificios-en-manresa', 'venta edificios manresa, edificios en manresa, venta edificios en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en CastellBell i el Vilar para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en CastellBell i el Vilar.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    );
    

INSERT INTO
   `dynamic_taxonomy_city` 
VALUES
   (
      1, 'es', 'Venta de propiedades en Manresa', '1', '11', 'Venta de propiedades en Manresa', 17, 0, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de propiedades en venta en Manresa. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras propiedades en Manresa son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Manresa es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Manresa, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de propiedades en Manresa | Especialistas en venta de propiedades', 'venta-propiedades-manresa', 'venta-de-propiedades-en-manresa', 'venta propiedades manresa, propiedades en manresa, venta propiedades en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Manresa para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Manresa.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   ),
   (
      2, 'es', 'Venta de pisos en Manresa', '1', '17', 'Venta de pisos en Manresa', 17, 1, '<p>Conozca nuestra selecci&oacute;n de pisos&nbsp;en Manresa. Si busca piso en Manresa, encuentre con Pisosmanresa los pisos que mejor se adapten a sus vacaciones. &nbsp;Nuestros pisos en Manresa, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Manresa. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Manresa&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre un piso en Manresa con Pisosmanresa. Disfrute de&nbsp; Manresa al mejor precio.</p>\r\n', '', '', 'Piso en Manresa | Especialistas en vender pisos en Manresa', 'vender-pisos-manresa', 'venta-de-pisos-en-manresa', 'vender pisos manresa, vender piso manresa, pisos en manresa, piso manresa bages, piso manresa', 'Venta de pisos en Manresa para en familia y en grupo. Descubra nuestra selección de pisos en venta y alquiler en Manresa, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   ), 
   (
      3, 'es', 'Venta de casas en Manresa', '1', '18', 'Venta de casas en Manresa', 17, 2, '<p>Conozca nuestra selecci&oacute;n de casas en Manresa. Si busca casa en Manresa, encuentre con Pisosmanresa las casas que mejor se adapten a sus vacaciones. &nbsp;Nuestras casas en Manresa, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Manresa. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Manresa&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre una casa en Manresa con Pisosmanresa. Disfrute de&nbsp; Manresa al mejor precio.</p>\r\n', '', '', 'Casa en Manresa | Especialistas en vender casas en Manresa', 'vender-casas-manresa', 'venta-de-casas-en-manresa', 'vender casas manresa, vender casa manresa, casas en manresa, casa manresa bages, casa manresa', 'Venta de casas en Manresa para en familia y en grupo. Descubra nuestra selección de casas en venta y alquiler en Manresa, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   ), 
   (
      4, 'es', 'Venta de oficinas en Manresa', '1', '19', 'Venta de oficinas en Manresa', 17, 3, '<p>Conozca nuestra selecci&oacute;n de oficinas en Manresa. Si busca oficina en Manresa, encuentre con Pisosmanresa las oficinas que mejor se adapten a sus vacaciones. &nbsp;Nuestros oficinas en Manresa, Bages, son ideales para grupos&nbsp;que buscan toda la comodidad de su oficina. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Manresa&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso no lo dude, compre un oficina en Manresa con Pisosmanresa. Disfrute de&nbsp; Manresa al mejor precio.</p>\r\n', '', '', 'Oficinas en Manresa | Especialistas en vender oficinas en Manresa', 'vender-oficinas-manresa', 'venta-de-oficinas-en-manresa', 'vender oficinas manresa, vender oficina manresa, oficina en manresa, oficina manresa bages, oficina manresa', 'Venta de oficina en Manresa en grupo. Descubra nuestra selección de oficinas en venta y alquiler en Manresa, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   ),
  (
      5, 'es', 'Venta de locales en Manresa', '1', '11', 'Venta de locales en Manresa', 17, 4, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de locales en venta en Manresa. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras locales en Manresa son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Manresa es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Manresa, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de locales en Manresa | Especialistas en venta de locales', 'venta-locales-manresa', 'venta-de-locales-en-manresa', 'venta locales manresa, locales en manresa, venta locales en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Manresa para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Manresa.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   ), 
   (
      6, 'es', 'Venta de parkings en Manresa', '1', '11', 'Venta de parkings en Manresa', 17, 5, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de parkings en venta en Manresa. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras parkings en Manresa son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Manresa es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Manresa, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de parkings en Manresa | Especialistas en venta de parkings', 'venta-parkings-manresa', 'venta-de-parkings-en-manresa', 'venta parkings manresa, parkings en manresa, venta parkings en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Manresa para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Manresa.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   ), 
   (
      7, 'es', 'Venta de terrenos en Manresa', '1', '11', 'Venta de terrenos en Manresa', 17, 6, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de terrenos en venta en Manresa. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras terrenos en Manresa son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Manresa es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Manresa, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de terrenos en Manresa | Especialistas en venta de terrenos', 'venta-terrenos-manresa', 'venta-de-terrenos-en-manresa', 'venta terrenos manresa, terrenos en manresa, venta terrenos en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Manresa para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Manresa.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   ), 
   (
      8, 'es', 'Venta de naves en Manresa', '1', '11', 'Venta de naves en Manresa', 17, 7, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de naves en venta en Manresa. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras naves en Manresa son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Manresa es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Manresa, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de naves en Manresa | Especialistas en venta de naves', 'venta-naves-manresa', 'venta-de-naves-en-manresa', 'venta naves manresa, naves en manresa, venta naves en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Manresa para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Manresa.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   ), 
   (
      9, 'es', 'Venta de edificios en Manresa', '1', '11', 'Venta de edificios en Manresa', 17, 8, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de edificios en venta en Manresa. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras edificios en Manresa son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Manresa es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Manresa, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de edificios en Manresa | Especialistas en venta de edificios', 'venta-edificios-manresa', 'venta-de-edificios-en-manresa', 'venta edificios manresa, edificios en manresa, venta edificios en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Manresa para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Manresa.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   );


INSERT INTO
   `dynamic_taxonomy_city` 
VALUES
   (
      29, 'es', 'Venta de locales en Manresa', '1', '11', 'Venta de locales en Manresa', 17, 4, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de locales en venta en Manresa. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras locales en Manresa son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Manresa es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Manresa, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de locales en Manresa | Especialistas en venta de locales', 'venta-locales-manresa', 'venta-de-locales-en-manresa', 'venta locales manresa, locales en manresa, venta locales en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Manresa para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Manresa.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
	),
    (
	  30, 'es', 'Venta de parkings en Manresa', '1', '11', 'Venta de parkings en Manresa', 17, 5, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de parkings en venta en Manresa. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras parkings en Manresa son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Manresa es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Manresa, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de parkings en Manresa | Especialistas en venta de parkings', 'venta-parkings-manresa', 'venta-de-parkings-en-manresa', 'venta parkings manresa, parkings en manresa, venta parkings en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Manresa para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Manresa.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
	  31, 'es', 'Venta de terrenos en Manresa', '1', '11', 'Venta de terrenos en Manresa', 17, 6, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de terrenos en venta en Manresa. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras terrenos en Manresa son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Manresa es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Manresa, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de terrenos en Manresa | Especialistas en venta de terrenos', 'venta-terrenos-manresa', 'venta-de-terrenos-en-manresa', 'venta terrenos manresa, terrenos en manresa, venta terrenos en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Manresa para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Manresa.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
	  32, 'es', 'Venta de naves en Manresa', '1', '11', 'Venta de naves en Manresa', 17, 7, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de naves en venta en Manresa. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras naves en Manresa son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Manresa es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Manresa, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de naves en Manresa | Especialistas en venta de naves', 'venta-naves-manresa', 'venta-de-naves-en-manresa', 'venta naves manresa, naves en manresa, venta naves en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Manresa para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Manresa.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
      33, 'es', 'Venta de edificios en Manresa', '1', '11', 'Venta de edificios en Manresa', 17, 8, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de edificios en venta en Manresa. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras edificios en Manresa son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Manresa es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Manresa, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de edificios en Manresa | Especialistas en venta de edificios', 'venta-edificios-manresa', 'venta-de-edificios-en-manresa', 'venta edificios manresa, edificios en manresa, venta edificios en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Manresa para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Manresa.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
	  34, 'es', 'Venta de locales en Navarcles', '1', '11', 'Venta de locales en Navarcles', 24, 4, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de locales en venta en Navarcles. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras locales en Navarcles son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Navarcles es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Navarcles, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de locales en Navarcles | Especialistas en venta de locales', 'venta-locales-Navarcles', 'venta-de-locales-en-Navarcles', 'venta locales Navarcles, locales en Navarcles, venta locales en Navarcles, casas Navarcles, apartamentos Navarcles, villas Navarcles, alojamientos Navarcles', 'Venta de apartamentos en Navarcles para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Navarcles.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
	  35, 'es', 'Venta de parkings en Navarcles', '1', '11', 'Venta de parkings en Navarcles', 24, 5, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de parkings en venta en Navarcles. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras parkings en Navarcles son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Navarcles es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Navarcles, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de parkings en Navarcles | Especialistas en venta de parkings', 'venta-parkings-Navarcles', 'venta-de-parkings-en-Navarcles', 'venta parkings Navarcles, parkings en Navarcles, venta parkings en Navarcles, casas Navarcles, apartamentos Navarcles, villas Navarcles, alojamientos Navarcles', 'Venta de apartamentos en Navarcles para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Navarcles.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
	  36, 'es', 'Venta de terrenos en Navarcles', '1', '11', 'Venta de terrenos en Navarcles', 24, 6, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de terrenos en venta en Navarcles. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras terrenos en Navarcles son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Navarcles es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Navarcles, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de terrenos en Navarcles | Especialistas en venta de terrenos', 'venta-terrenos-Navarcles', 'venta-de-terrenos-en-Navarcles', 'venta terrenos Navarcles, terrenos en Navarcles, venta terrenos en Navarcles, casas Navarcles, apartamentos Navarcles, villas Navarcles, alojamientos Navarcles', 'Venta de apartamentos en Navarcles para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Navarcles.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0	
    ),
    (
	  37, 'es', 'Venta de naves en Navarcles', '1', '11', 'Venta de naves en Navarcles', 24, 7, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de naves en venta en Navarcles. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras naves en Navarcles son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Navarcles es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Navarcles, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de naves en Navarcles | Especialistas en venta de naves', 'venta-naves-Navarcles', 'venta-de-naves-en-Navarcles', 'venta naves Navarcles, naves en Navarcles, venta naves en Navarcles, casas Navarcles, apartamentos Navarcles, villas Navarcles, alojamientos Navarcles', 'Venta de apartamentos en Navarcles para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Navarcles.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
	  38, 'es', 'Venta de edificios en Navarcles', '1', '11', 'Venta de edificios en Navarcles', 24, 8, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de edificios en venta en Navarcles. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras edificios en Navarcles son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Navarcles es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Navarcles, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de edificios en Navarcles | Especialistas en venta de edificios', 'venta-edificios-Navarcles', 'venta-de-edificios-en-Navarcles', 'venta edificios Navarcles, edificios en Navarcles, venta edificios en Navarcles, casas Navarcles, apartamentos Navarcles, villas Navarcles, alojamientos Navarcles', 'Venta de apartamentos en Navarcles para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Navarcles.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0		
    ),
    (
	  39, 'es', 'Venta de locales en Sant Joan Vilatorrada', '1', '11', 'Venta de locales en Sant Joan Vilatorrada', 31, 4, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de locales en venta en Sant Joan Vilatorrada. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras locales en Sant Joan Vilatorrada son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Sant Joan Vilatorrada es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Sant Joan Vilatorrada, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de locales en Sant Joan Vilatorrada | Especialistas en venta de locales', 'venta-locales-Sant Joan Vilatorrada', 'venta-de-locales-en-Sant Joan Vilatorrada', 'venta locales Sant Joan Vilatorrada, locales en Sant Joan Vilatorrada, venta locales en Sant Joan Vilatorrada, casas Sant Joan Vilatorrada, apartamentos Sant Joan Vilatorrada, villas Sant Joan Vilatorrada, alojamientos Sant Joan Vilatorrada', 'Venta de apartamentos en Sant Joan Vilatorrada para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Sant Joan Vilatorrada.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
	  40, 'es', 'Venta de parkings en Sant Joan Vilatorrada', '1', '11', 'Venta de parkings en Sant Joan Vilatorrada', 31, 5, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de parkings en venta en Sant Joan Vilatorrada. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras parkings en Sant Joan Vilatorrada son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Sant Joan Vilatorrada es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Sant Joan Vilatorrada, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de parkings en Sant Joan Vilatorrada | Especialistas en venta de parkings', 'venta-parkings-Sant Joan Vilatorrada', 'venta-de-parkings-en-Sant Joan Vilatorrada', 'venta parkings Sant Joan Vilatorrada, parkings en Sant Joan Vilatorrada, venta parkings en Sant Joan Vilatorrada, casas Sant Joan Vilatorrada, apartamentos Sant Joan Vilatorrada, villas Sant Joan Vilatorrada, alojamientos Sant Joan Vilatorrada', 'Venta de apartamentos en Sant Joan Vilatorrada para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Sant Joan Vilatorrada.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0			
    ),
    (
	  41, 'es', 'Venta de terrenos en Sant Joan Vilatorrada', '1', '11', 'Venta de terrenos en Sant Joan Vilatorrada', 31, 6, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de terrenos en venta en Sant Joan Vilatorrada. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras terrenos en Sant Joan Vilatorrada son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Sant Joan Vilatorrada es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Sant Joan Vilatorrada, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de terrenos en Sant Joan Vilatorrada | Especialistas en venta de terrenos', 'venta-terrenos-Sant Joan Vilatorrada', 'venta-de-terrenos-en-Sant Joan Vilatorrada', 'venta terrenos Sant Joan Vilatorrada, terrenos en Sant Joan Vilatorrada, venta terrenos en Sant Joan Vilatorrada, casas Sant Joan Vilatorrada, apartamentos Sant Joan Vilatorrada, villas Sant Joan Vilatorrada, alojamientos Sant Joan Vilatorrada', 'Venta de apartamentos en Sant Joan Vilatorrada para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Sant Joan Vilatorrada.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0		
    ),
    (
	  42, 'es', 'Venta de naves en Sant Joan Vilatorrada', '1', '11', 'Venta de naves en Sant Joan Vilatorrada', 31, 7, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de naves en venta en Sant Joan Vilatorrada. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras naves en Sant Joan Vilatorrada son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Sant Joan Vilatorrada es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Sant Joan Vilatorrada, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de naves en Sant Joan Vilatorrada | Especialistas en venta de naves', 'venta-naves-Sant Joan Vilatorrada', 'venta-de-naves-en-Sant Joan Vilatorrada', 'venta naves Sant Joan Vilatorrada, naves en Sant Joan Vilatorrada, venta naves en Sant Joan Vilatorrada, casas Sant Joan Vilatorrada, apartamentos Sant Joan Vilatorrada, villas Sant Joan Vilatorrada, alojamientos Sant Joan Vilatorrada', 'Venta de apartamentos en Sant Joan Vilatorrada para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Sant Joan Vilatorrada.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
	  43, 'es', 'Venta de edificios en Sant Joan Vilatorrada', '1', '11', 'Venta de edificios en Sant Joan Vilatorrada', 31, 8, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de edificios en venta en Sant Joan Vilatorrada. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras edificios en Sant Joan Vilatorrada son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Sant Joan Vilatorrada es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Sant Joan Vilatorrada, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de edificios en Sant Joan Vilatorrada | Especialistas en venta de edificios', 'venta-edificios-Sant Joan Vilatorrada', 'venta-de-edificios-en-Sant Joan Vilatorrada', 'venta edificios Sant Joan Vilatorrada, edificios en Sant Joan Vilatorrada, venta edificios en Sant Joan Vilatorrada, casas Sant Joan Vilatorrada, apartamentos Sant Joan Vilatorrada, villas Sant Joan Vilatorrada, alojamientos Sant Joan Vilatorrada', 'Venta de apartamentos en Sant Joan Vilatorrada para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Sant Joan Vilatorrada.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0		
    ),
    (
	  44, 'es', 'Venta de locales en Castellet', '1', '11', 'Venta de locales en Castellet', 31, 4, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de locales en venta en Castellet. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras locales en Castellet son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Castellet es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Castellet, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de locales en Castellet | Especialistas en venta de locales', 'venta-locales-Castellet', 'venta-de-locales-en-Castellet', 'venta locales Castellet, locales en Castellet, venta locales en Castellet, casas Castellet, apartamentos Castellet, villas Castellet, alojamientos Castellet', 'Venta de apartamentos en Castellet para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Castellet.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0		
    ),
    (
      45, 'es', 'Venta de parkings en Castellet', '1', '11', 'Venta de parkings en Castellet', 31, 5, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de parkings en venta en Castellet. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras parkings en Castellet son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Castellet es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Castellet, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de parkings en Castellet | Especialistas en venta de parkings', 'venta-parkings-Castellet', 'venta-de-parkings-en-Castellet', 'venta parkings Castellet, parkings en Castellet, venta parkings en Castellet, casas Castellet, apartamentos Castellet, villas Castellet, alojamientos Castellet', 'Venta de apartamentos en Castellet para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Castellet.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
	  46, 'es', 'Venta de terrenos en Castellet', '1', '11', 'Venta de terrenos en Castellet', 31, 6, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de terrenos en venta en Castellet. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras terrenos en Castellet son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Castellet es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Castellet, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de terrenos en Castellet | Especialistas en venta de terrenos', 'venta-terrenos-Castellet', 'venta-de-terrenos-en-Castellet', 'venta terrenos Castellet, terrenos en Castellet, venta terrenos en Castellet, casas Castellet, apartamentos Castellet, villas Castellet, alojamientos Castellet', 'Venta de apartamentos en Castellet para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Castellet.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
	  47, 'es', 'Venta de naves en Castellet', '1', '11', 'Venta de naves en Castellet', 31, 7, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de naves en venta en Castellet. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras naves en Castellet son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Castellet es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Castellet, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de naves en Castellet | Especialistas en venta de naves', 'venta-naves-Castellet', 'venta-de-naves-en-Castellet', 'venta naves Castellet, naves en Castellet, venta naves en Castellet, casas Castellet, apartamentos Castellet, villas Castellet, alojamientos Castellet', 'Venta de apartamentos en Castellet para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Castellet.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0	
    ),
    (
	  48, 'es', 'Venta de edificios en Castellet', '1', '11', 'Venta de edificios en Castellet', 31, 8, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de edificios en venta en Castellet. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras edificios en Castellet son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Castellet es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Castellet, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de edificios en Castellet | Especialistas en venta de edificios', 'venta-edificios-Castellet', 'venta-de-edificios-en-Castellet', 'venta edificios Castellet, edificios en Castellet, venta edificios en Castellet, casas Castellet, apartamentos Castellet, villas Castellet, alojamientos Castellet', 'Venta de apartamentos en Castellet para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Castellet.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
	  49, 'es', 'Venta de locales en Sant fruitos de Bages', '1', '11', 'Venta de locales en Sant fruitos de Bages', 30, 4, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de locales en venta en Sant fruitos de Bages. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras locales en Sant fruitos de Bages son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Sant fruitos de Bages es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Sant fruitos de Bages, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de locales en Sant fruitos de Bages | Especialistas en venta de locales', 'venta-locales-Sant fruitos de Bages', 'venta-de-locales-en-Sant fruitos de Bages', 'venta locales Sant fruitos de Bages, locales en Sant fruitos de Bages, venta locales en Sant fruitos de Bages, casas Sant fruitos de Bages, apartamentos Sant fruitos de Bages, villas Sant fruitos de Bages, alojamientos Sant fruitos de Bages', 'Venta de apartamentos en Sant fruitos de Bages para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Sant fruitos de Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0		
    ),
    (
	  50, 'es', 'Venta de parkings en Sant fruitos de Bages', '1', '11', 'Venta de parkings en Sant fruitos de Bages', 30, 5, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de parkings en venta en Sant fruitos de Bages. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras parkings en Sant fruitos de Bages son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Sant fruitos de Bages es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Sant fruitos de Bages, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de parkings en Sant fruitos de Bages | Especialistas en venta de parkings', 'venta-parkings-Sant fruitos de Bages', 'venta-de-parkings-en-Sant fruitos de Bages', 'venta parkings Sant fruitos de Bages, parkings en Sant fruitos de Bages, venta parkings en Sant fruitos de Bages, casas Sant fruitos de Bages, apartamentos Sant fruitos de Bages, villas Sant fruitos de Bages, alojamientos Sant fruitos de Bages', 'Venta de apartamentos en Sant fruitos de Bages para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Sant fruitos de Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0	
    ),
    (
	  51, 'es', 'Venta de terrenos en Sant fruitos de Bages', '1', '11', 'Venta de terrenos en Sant fruitos de Bages', 30, 6, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de terrenos en venta en Sant fruitos de Bages. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras terrenos en Sant fruitos de Bages son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Sant fruitos de Bages es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Sant fruitos de Bages, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de terrenos en Sant fruitos de Bages | Especialistas en venta de terrenos', 'venta-terrenos-Sant fruitos de Bages', 'venta-de-terrenos-en-Sant fruitos de Bages', 'venta terrenos Sant fruitos de Bages, terrenos en Sant fruitos de Bages, venta terrenos en Sant fruitos de Bages, casas Sant fruitos de Bages, apartamentos Sant fruitos de Bages, villas Sant fruitos de Bages, alojamientos Sant fruitos de Bages', 'Venta de apartamentos en Sant fruitos de Bages para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Sant fruitos de Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0	
    ),
    (
	 52, 'es', 'Venta de naves en Sant fruitos de Bages', '1', '11', 'Venta de naves en Sant fruitos de Bages', 30, 7, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de naves en venta en Sant fruitos de Bages. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras naves en Sant fruitos de Bages son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Sant fruitos de Bages es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Sant fruitos de Bages, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de naves en Sant fruitos de Bages | Especialistas en venta de naves', 'venta-naves-Sant fruitos de Bages', 'venta-de-naves-en-Sant fruitos de Bages', 'venta naves Sant fruitos de Bages, naves en Sant fruitos de Bages, venta naves en Sant fruitos de Bages, casas Sant fruitos de Bages, apartamentos Sant fruitos de Bages, villas Sant fruitos de Bages, alojamientos Sant fruitos de Bages', 'Venta de apartamentos en Sant fruitos de Bages para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Sant fruitos de Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
     53, 'es', 'Venta de edificios en Sant fruitos de Bages', '1', '11', 'Venta de edificios en Sant fruitos de Bages', 30, 8, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de edificios en venta en Sant fruitos de Bages. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras edificios en Sant fruitos de Bages son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Sant fruitos de Bages es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Sant fruitos de Bages, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de edificios en Sant fruitos de Bages | Especialistas en venta de edificios', 'venta-edificios-Sant fruitos de Bages', 'venta-de-edificios-en-Sant fruitos de Bages', 'venta edificios Sant fruitos de Bages, edificios en Sant fruitos de Bages, venta edificios en Sant fruitos de Bages, casas Sant fruitos de Bages, apartamentos Sant fruitos de Bages, villas Sant fruitos de Bages, alojamientos Sant fruitos de Bages', 'Venta de apartamentos en Sant fruitos de Bages para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Sant fruitos de Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
     54, 'es', 'Venta de locales en Sanpedor', '1', '11', 'Venta de locales en Sanpedor', 36, 4, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de locales en venta en Sanpedor. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras locales en Sanpedor son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Sanpedor es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Sanpedor, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de locales en Sanpedor | Especialistas en venta de locales', 'venta-locales-Sanpedor', 'venta-de-locales-en-Sanpedor', 'venta locales Sanpedor, locales en Sanpedor, venta locales en Sanpedor, casas Sanpedor, apartamentos Sanpedor, villas Sanpedor, alojamientos Sanpedor', 'Venta de apartamentos en Sanpedor para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Sanpedor.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    ),
    (
	 55, 'es', 'Venta de parkings en Sanpedor', '1', '11', 'Venta de parkings en Sanpedor', 36, 5, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de parkings en venta en Sanpedor. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras parkings en Sanpedor son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Sanpedor es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Sanpedor, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de parkings en Sanpedor | Especialistas en venta de parkings', 'venta-parkings-Sanpedor', 'venta-de-parkings-en-Sanpedor', 'venta parkings Sanpedor, parkings en Sanpedor, venta parkings en Sanpedor, casas Sanpedor, apartamentos Sanpedor, villas Sanpedor, alojamientos Sanpedor', 'Venta de apartamentos en Sanpedor para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Sanpedor.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0		
    ),
    (
	 56, 'es', 'Venta de terrenos en Sanpedor', '1', '11', 'Venta de terrenos en Sanpedor', 36, 6, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de terrenos en venta en Sanpedor. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras terrenos en Sanpedor son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Sanpedor es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Sanpedor, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de terrenos en Sanpedor | Especialistas en venta de terrenos', 'venta-terrenos-Sanpedor', 'venta-de-terrenos-en-Sanpedor', 'venta terrenos Sanpedor, terrenos en Sanpedor, venta terrenos en Sanpedor, casas Sanpedor, apartamentos Sanpedor, villas Sanpedor, alojamientos Sanpedor', 'Venta de apartamentos en Sanpedor para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Sanpedor.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0	
    ),
    (
	 57, 'es', 'Venta de naves en Sanpedor', '1', '11', 'Venta de naves en Sanpedor', 36, 7, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de naves en venta en Sanpedor. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras naves en Sanpedor son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Sanpedor es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Sanpedor, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de naves en Sanpedor | Especialistas en venta de naves', 'venta-naves-Sanpedor', 'venta-de-naves-en-Sanpedor', 'venta naves Sanpedor, naves en Sanpedor, venta naves en Sanpedor, casas Sanpedor, apartamentos Sanpedor, villas Sanpedor, alojamientos Sanpedor', 'Venta de apartamentos en Sanpedor para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Sanpedor.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0		
    ),
    (
	58, 'es', 'Venta de edificios en Sanpedor', '1', '11', 'Venta de edificios en Sanpedor', 36, 8, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de edificios en venta en Sanpedor. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras edificios en Sanpedor son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Sanpedor es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Sanpedor, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de edificios en Sanpedor | Especialistas en venta de edificios', 'venta-edificios-Sanpedor', 'venta-de-edificios-en-Sanpedor', 'venta edificios Sanpedor, edificios en Sanpedor, venta edificios en Sanpedor, casas Sanpedor, apartamentos Sanpedor, villas Sanpedor, alojamientos Sanpedor', 'Venta de apartamentos en Sanpedor para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Sanpedor.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
    );
    
 
INSERT INTO
   `dynamic_taxonomy_city` 
VALUES
   (
      1, 'es', 'Venta de propiedades en Manresa', '1', '11', 'Venta de propiedades en Manresa', 17, 0, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de propiedades en venta en Manresa. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras propiedades en Manresa son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Manresa es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Manresa, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de propiedades en Manresa | Especialistas en venta de propiedades', 'venta-propiedades-manresa', 'venta-de-propiedades-en-manresa', 'venta propiedades manresa, propiedades en manresa, venta propiedades en manresa, casas manresa, apartamentos manresa, villas manresa, alojamientos manresa', 'Venta de apartamentos en Manresa para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Manresa.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      2, 'es', 'Venta de propiedades en Navarcles', '1', '14', 'Venta de propiedades en Navarcles', 24, 0, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de propiedades en venta en Manresa. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras propiedades en Salou son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Manresa es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Manresa, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Vena de propiedades en Navarcles | Especialistas en venta de propiedades', 'venta-propiedades-navarcles', 'venta-de-propiedades-en-navarcles', 'venta propiedades navarcles, propiedades en navarcles, venta propiedades en navarcles, casas navarcles, apartamentos navarcles, villas navarcles, alojamientos navarcles', 'Venta de apartamentos en Manresa para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Manresa.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      3, 'es', 'Venta de propiedades en Sant Joan de Vilatorrada', '1', '12', 'Venta de propiedades en Sant Joan de Vilatorrada', 31, 0, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de propiedades en venta en Sant Joan de Vilatorrada. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras propiedades en Salou son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Sant Joan de Vilatorrada es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Sant Joan de Vilatorrada, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de propiedades en Vilatorrada | Especialistas en venta de propiedades', 'venta-propiedades-sant-joan-de-vilatorrada', 'venta-de-propiedades-en-sant-joan-de-vilatorrada', 'venta propiedades en vilatorrada, propiedades en vilatorrada, venta propiedades en vilatorrada, casas en vilatorrada, apartamentos en vilatorrada, villas en vilatorrada, alojamientos en vilatorrada', 'Venta de apartamentos en vilatorrada para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas en vilatorrada.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      4, 'es', 'Venta de propiedades en Sant Vicenç de Castellet', '1', '13', 'Venta de propiedades en Sant Vicenç de Castellet', 34, 0, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de propiedades en venta en Sant Vicen&ccedil; de Castellet. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras propiedades en Salou son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Sant Vicen&ccedil; de Castellet es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Sant Vicen&ccedil; de Castellet, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de propiedades en Castellet | Especialistas en venta de propiedades', 'venta-propiedades-castellet', 'venta-de-propiedades-en-sant-vicen-de-castellet', 'venta propiedades castellet, propiedades en castellet, venta propiedades en castellet, casas castellet, apartamentos castellet, villas castellet, alojamientos castellet', 'Venta de apartamentos en Castellet para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Castellet.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      5, 'es', 'Venta de propiedades en Santpedor', '1', '16', 'Venta de propiedades en Santpedor', 36, 0, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de propiedades en venta en Santpedor. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras propiedades en Santpedor son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Santpedor es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Santpedor, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de propiedades en Santpedor | Especialistas en venta de propiedades', 'venta-propiedades-santpedor', 'venta-de-propiedades-en-santpedor', 'venta propiedades santpedor, propiedades en santpedor, venta propiedades en santpedor, casas santpedor, apartamentos santpedor, villas santpedor, alojamientos santpedor', 'Venta de apartamentos en Santpedor para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Santpedor.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      6, 'es', 'Venta de propiedades en Sant Fruitos de Bages', '1', '15', 'Venta de propiedades en Sant Fruitos de Bages', 30, 0, '<p>Encuentre aqu&iacute; nuestra selecci&oacute;n de propiedades en venta en Sant Fruitos de Bages. Tanto si busca&nbsp;pisos funcionales, casas espaciosas o increibles villas, nuestras propiedades en Sant Fruitos de Bages son una de las mejores formas de disfrutar de la monta&ntilde;a y de las actividades deportivas.&nbsp;</p>\r\n\r\n<p>Sant Fruitos de Bages es el destino ideal debido a su clima c&aacute;lido, su monta&ntilde;a y sus numerosas actividades de ocio para todos los p&uacute;blicos. Si compra su propiedad en Sant Fruitos de Bages, estar&aacute; en el centro del Bages.</p>\r\n', '', '', 'Venta de propiedades Sant Fruitos | Especialistas en venta de propiedades', 'venta-propiedades-sant-fruitos-de-bages', 'venta-de-propiedades-en-sant-fruitos-de-bages', 'venta propiedades sant-fruitos, propiedades en sant-fruitos, venta propiedades en sant-fruitos, casas sant-fruitos, apartamentos sant-fruitos, villas sant-fruitos, alojamientos sant-fruitos', 'Venta de apartamentos en Sant Fruitos de Bages para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Sant Fruitos de Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      7, 'es', 'Venta de pisos en Manresa', '1', '17', 'Venta de pisos en Manresa', 17, 1, '<p>Conozca nuestra selecci&oacute;n de pisos&nbsp;en Manresa. Si busca piso en Manresa, encuentre con Pisosmanresa los pisos que mejor se adapten a sus vacaciones. &nbsp;Nuestros pisos en Manresa, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Manresa. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Manresa&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre un piso en Manresa con Pisosmanresa. Disfrute de&nbsp; Manresa al mejor precio.</p>\r\n', '', '', 'Piso en Manresa | Especialistas en vender pisos en Manresa', 'vender-pisos-manresa', 'venta-de-pisos-en-manresa', 'vender pisos manresa, vender piso manresa, pisos en manresa, piso manresa bages, piso manresa', 'Venta de pisos en Manresa para en familia y en grupo. Descubra nuestra selección de pisos en venta y alquiler en Manresa, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      8, 'es', 'Venta de casas en Manresa', '1', '18', 'Venta de casas en Manresa', 17, 2, '<p>Conozca nuestra selecci&oacute;n de casas en Manresa. Si busca casa en Manresa, encuentre con Pisosmanresa las casas que mejor se adapten a sus vacaciones. &nbsp;Nuestras casas en Manresa, Bages, son ideales para grupos y familias que buscan toda la comodidad de su hogar cerca de los atractivos tur&iacute;sticos de Manresa. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Manresa&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso este verano no lo dude, compre una casa en Manresa con Pisosmanresa. Disfrute de&nbsp; Manresa al mejor precio.</p>\r\n', '', '', 'Casa en Manresa | Especialistas en vender casas en Manresa', 'vender-casas-manresa', 'venta-de-casas-en-manresa', 'vender casas manresa, vender casa manresa, casas en manresa, casa manresa bages, casa manresa', 'Venta de casas en Manresa para en familia y en grupo. Descubra nuestra selección de casas en venta y alquiler en Manresa, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      9, 'es', 'Venta de oficinas en Manresa', '1', '19', 'Venta de oficinas en Manresa', 17, 3, '<p>Conozca nuestra selecci&oacute;n de oficinas en Manresa. Si busca oficina en Manresa, encuentre con Pisosmanresa las oficinas que mejor se adapten a sus vacaciones. &nbsp;Nuestros oficinas en Manresa, Bages, son ideales para grupos&nbsp;que buscan toda la comodidad de su oficina. Disfrutar&aacute; de la&nbsp;monta&ntilde;a&nbsp;y los mejores restaurantes de la ciudad.</p>\r\n\r\n<p>Manresa&nbsp;es uno de los destinos m&aacute;s conocidos del&nbsp;Bages, adem&aacute;s de su atractivo natural y sus monta&ntilde;as, tiene una amplia oferta gastron&oacute;mica, de ocio y entretenimiento. Por eso no lo dude, compre un oficina en Manresa con Pisosmanresa. Disfrute de&nbsp; Manresa al mejor precio.</p>\r\n', '', '', 'Oficinas en Manresa | Especialistas en vender oficinas en Manresa', 'vender-oficinas-manresa', 'venta-de-oficinas-en-manresa', 'vender oficinas manresa, vender oficina manresa, oficina en manresa, oficina manresa bages, oficina manresa', 'Venta de oficina en Manresa en grupo. Descubra nuestra selección de oficinas en venta y alquiler en Manresa, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      10, 'es', 'Venta de propiedades en Navarcles', '1', '14', 'Venta de propiedades en Navarcles', 24, 0, '', '', '', '', 'venta-propiedades-navarcles', 'venta-de-propiedades-en-navarcles', 'venta propiedades navarcles, propiedades en navarcles, venta propiedades en navarcles, casas navarcles, apartamentos navarcles, villas navarcles, alojamientos navarcles', 'Venta de apartamentos en Navarcles para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Navarcles.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      11, 'es', 'Venta de propiedades en Sant Joan Vilatorrada', '1', '12', 'Venta de propiedades en Sant Joan Vilatorrada', 31, 0, '', '', '', '', 'venta-propiedades-sant-joan-vilatorrada', 'venta-de-propiedades-en-sant-joan-vilatorrada', 'venta propiedades sant-joan-vilatorrada, propiedades en sant-joan-vilatorrada, venta propiedades en sant-joan-vilatorrada, casas sant-joan-vilatorrada, apartamentos sant-joan-vilatorrada, villas sant-joan-vilatorrada, alojamientos sant-joan-vilatorrada', 'Venta de apartamentos en Sant Joan Vilatorrada para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Sant Joan Vilatorrada.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      12, 'es', 'Venta de propiedades en Santpedor', '1', '16', 'Venta de propiedades en Santpedor', 36, 0, '', '', '', '', 'venta-propiedades-santpedor', 'venta-de-propiedades-en-santpedor', 'venta propiedades santpedor, propiedades en santpedor, venta propiedades en santpedor, casas santpedor, apartamentos santpedor, villas santpedor, alojamientos santpedor', 'Venta de apartamentos en Santpedor para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Santpedor.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      13, 'es', 'Venta de propiedades en Sant Fruitos de Bages', '1', '15', 'Venta de propiedades en Sant Fruitos de Bages', 30, 0, '', '', '', '', 'venta-propiedades-sant-fruitos-de-bages', 'venta-de-propiedades-en-sant-fruitos-de-bages', 'venta propiedades sant-fruitos-de-bages, propiedades en sant-fruitos-de-bages, venta propiedades en sant-fruitos-de-bages, casas santpedor, apartamentos sant-fruitos-de-bages, villas sant-fruitos-de-bages, alojamientos sant-fruitos-de-bages', 'Venta de apartamentos en sant-fruitos-de-bages para disfrutar de Bages. Descubra nuestra selección de apartamentos, casas y villas de compra en Sant Fruitos de Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      14, 'es', 'Venta de pisos en Navarcles', '1', '17', 'Venta de pisos en Navarcles', 24, 1, '', '', '', 'Piso en Navarcles | Especialistas en vender pisos en Navarcles', 'vender-pisos-navarcles', 'venta-de-pisos-en-navarcles', 'vender pisos navarcles, vender piso navarcles, pisos en navarcles, piso navarcles bages, piso navarcles', 'Venta de pisos en Navarcles para en familia y en grupo. Descubra nuestra selección de pisos en venta y alquiler en Navarcles, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      15, 'es', 'Venta de pisos en Sant Joan Vilatorrada', '1', '17', 'Venta de pisos en Sant Joan Vilatorrada', 31, 1, '', '', '', 'Piso en Vilatorrada | Especialistas en vender pisos en Vilatorrada', 'vender-pisos-sant-joan-vilatorrada', 'venta-de-pisos-en-sant-joan-vilatorrada', 'vender pisos sant joan vilatorrada, vender piso sant joan vilatorrada, pisos en sant joan vilatorrada, piso sant joan vilatorrada bages, piso sant joan vilatorrada', 'Venta de pisos en Sant Joan Vilatorrada para en familia y en grupo. Descubra nuestra selección de pisos en venta y alquiler en Sant Joan Vilatorrada, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      16, 'es', 'Venta de pisos en Sant Vicenç De Castellet', '1', '17', 'Venta de pisos en Sant Vicenç De Castellet', 34, 1, '', '', '', 'Piso en Castellet | Especialistas en vender pisos en Castellet', 'vender-pisos-sant-vicenç-de-castellet', 'venta-de-pisos-en-sant-vicen-de-castellet', 'vender pisos sant vicenç de castellet, vender piso sant vicenç de castellet, pisos en sant vicenç de castellet, piso sant sant vicenç de castellet bages, piso sant vicenç de castellet', 'Venta de pisos en Sant Vicenç De Castellet para en familia y en grupo. Descubra nuestra selección de pisos en venta y alquiler en Sant Vicenç De Castellet, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      17, 'es', 'Venta de pisos en Santpedor', '1', '17', 'Venta de pisos en Santpedor', 36, 1, '', '', '', 'Piso en Santpedor | Especialistas en vender pisos en Santpedor', 'vender-pisos-santpedor', 'venta-de-pisos-en-santpedor', 'vender pisos santpedor, vender piso santpedor, pisos en santpedor, piso santpedor bages, piso santpedor', 'Venta de pisos en Santpedor para en familia y en grupo. Descubra nuestra selección de pisos en venta y alquiler en Santpedor, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      18, 'es', 'Venta de pisos en Sant Fruitos de Bages', '1', '17', 'Venta de pisos en Sant Fruitos de Bages', 30, 1, '', '', '', 'Piso en Sant Fruitos | Especialistas en vender pisos en Sant Fruitos', 'vender-pisos-sant-fruitos-de-bages', 'venta-de-pisos-en-sant-fruitos-de-bages', 'vender pisos sant-fruitos-de-bages, vender piso sant fruitos de bages, pisos en sant fruitos de bages, piso sant fruitos de bages bages, piso sant fruitos de bages', 'Venta de pisos en Sant Fruitos De Bages para en familia y en grupo. Descubra nuestra selección de pisos en venta y alquiler en Sant Fruitos de Bages, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      19, 'es', 'Venta de casas en Sant Joan de Vilatorrada', '1', '18', 'Venta de casas en Sant Joan de Vilatorrada', 31, 2, '', '', '', 'Casa en Vilatorrada | Especialistas en vender casas en Vilatorrada', 'vender-casas-sant-joan-de-vilatorrada', 'venta-de-casas-en-sant-joan-de-vilatorrada', 'vender casas sant joan de vilatorrada, vender casa sant joan de vilatorrada, casas en sant joan de vilatorrada, casa sant joan de vilatorrada bages, casa sant joan de vilatorrada', 'Venta de casas en sant joan de vilatorrada para en familia y en grupo. Descubra nuestra selección de casas en venta y alquiler en Sant Joan de Vilatorrada, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      20, 'es', 'Venta de casas en Sant Vicenç de Castellet', '1', '18', 'Venta de casas en Sant Vicenç de Castellet', 34, 2, '', '', '', 'Casa en Castellet | Especialistas en vender casas en Castellet', 'vender-casas-sant-vicenç-de-castellet', 'venta-de-casas-en-sant-vicen-de-castellet', 'vender casas sant vicenç de castellet, vender casa sant vicenç de castellet, casas en sant vicenç de castellet, casa sant vicenç de castellet bages, casa sant vicenç de castellet', 'Venta de casas en sant vicenç de castellet para en familia y en grupo. Descubra nuestra selección de casas en venta y alquiler en Sant Vicenç de Castellet, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      21, 'es', 'Venta de casas en Santpedor', '1', '18', 'Venta de casas en Santpedor', 36, 2, '', '', '', 'Casa en Santpedor | Especialistas en vender casas en Santpedor', 'vender-casas-santpedor', 'venta-de-casas-en-santpedor', 'vender casas santpedor, vender casa santpedor, casas en santpedor, casa santpedor bages, casa santpedor', 'Venta de casas en santpedor para en familia y en grupo. Descubra nuestra selección de casas en venta y alquiler en santpedor, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      22, 'es', 'Venta de casas en Navarcles', '1', '18', 'Venta de casas en Navarcles', 24, 2, '', '', '', 'Casa en Navarcles | Especialistas en vender casas en Navarcles', 'vender-casas-navarcles', 'venta-de-casas-en-navarcles', 'vender casas navarcles, vender casa navarcles, casas en navarcles, casa navarcles bages, casa navarcles', 'Venta de casas en navarcles para en familia y en grupo. Descubra nuestra selección de casas en venta y alquiler en navarcles, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      23, 'es', 'Venta de casas en Sant Fruitos de Bages', '1', '18', 'Venta de casas en Sant Fruitos de Bages', 30, 2, '', '', '', 'Casa en Sant Fruitos | Especialistas en vender casas en Sant Fruitos', 'vender-casas-sant-fruitos-de-bages', 'venta-de-casas-en-sant-fruitos-de-bages', 'vender casas sant fruitos de bages, vender casa sant fruitos de bages, casas en sant fruitos de bages, casa sant fruitos de bages bages, casa sant fruitos de bages', 'Venta de casas en sant fruitos de bages para en familia y en grupo. Descubra nuestra selección de casas en venta y alquiler en sant fruitos de bages, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      24, 'es', 'Venta de oficinas en Sant Joan de Vilatorrada', '1', '19', 'Venta de oficinas en Sant Joan de Vilatorrada', 31, 3, '', '', '', 'Oficinas en Vilatorrada | Especialistas en vender oficinas en Vilatorrada', 'vender-oficinas-sant-joan-de-vilatorrada', 'venta-de-oficinas-en-sant-joan-de-vilatorrada', 'vender oficinas sant joan de vilatorrada, vender oficina sant joan de vilatorrada, oficina en sant joan de vilatorrada, oficina sant joan de vilatorrada bages, oficina sant joan de vilatorrada', 'Venta de oficina en sant joan de vilatorrada en grupo. Descubra nuestra selección de oficinas en venta y alquiler en Sant Joan de Vilatorrada, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      25, 'es', 'Venta de oficinas en Sant Vicenç de Castellet', '1', '19', 'Venta de oficinas en Sant Vicenç de Castellet', 34, 3, '', '', '', 'Oficinas en Castellet | Especialistas en Castellet', 'vender-oficinas-sant-vicenç-de-castellet', 'venta-de-oficinas-en-sant-vicen-de-castellet', 'vender oficinas sant vicenç de castellet, vender oficina sant vicenç de castellet, oficina en sant vicenç de castellet, oficina sant vicenç de castellet bages, oficina sant vicenç de castellet', 'Venta de oficina en sant vicenç de castellet en grupo. Descubra nuestra selección de oficinas en venta y alquiler en Sant Vicenç de Castellet, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      26, 'es', 'Venta de oficinas en Santpedor', '1', '19', 'Venta de oficinas en Santpedor', 36, 3, '', '', '', 'Oficinas en Santpedor | Especialistas en vender oficinas en Santpedor', 'vender-oficinas-santpedor', 'venta-de-oficinas-en-santpedor', 'vender oficinas santpedor, vender oficina santpedor, oficina en santpedor, oficina santpedor bages, oficina santpedor', 'Venta de oficina en santpedor en grupo. Descubra nuestra selección de oficinas en venta y alquiler en santpedor, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      27, 'es', 'Venta de oficinas en Sant Fruitos de Bages', '1', '19', 'Venta de oficinas en Sant Fruitos de Bages', 30, 3, '', '', '', 'Oficinas en Sant Fruitos | Especialistas en vender oficinas en Sant Fruitos', 'vender-oficinas-sant-fruitos-de-bages', 'venta-de-oficinas-en-sant-fruitos-de-bages', 'vender oficinas sant fruitos de bages, vender oficina sant fruitos de bages, oficina en sant fruitos de bages, oficina sant fruitos de bages bages, oficina sant fruitos de bages', 'Venta de oficina en sant fruitos de bages en grupo. Descubra nuestra selección de oficinas en venta y alquiler en sant fruitos de bages, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
, 
   (
      28, 'es', 'Venta de oficinas en Navarcles', '1', '19', 'Venta de oficinas en Navarcles', 24, 3, '', '', '', 'Oficinas en Navarcles | Especialistas en vender oficinas en Navarcles', 'vender-oficinas-navarcles', 'venta-de-oficinas-en-navarcles', 'vender oficinas navarcles, vender oficina navarcles, oficina en navarcles, oficina navarcles, oficina navarcles', 'Venta de oficina en navarcles en grupo. Descubra nuestra selección de oficinas en venta y alquiler en Navarcles, Bages.', 'INDEX,FOLLOW', '', '', 'ACTIVED', 0
   )
;

# consultas contar todas las propiedades
#select count(*) as total_propiedades from dynamic_rooms;


# aproxomacion a consulta
select ds.text_title,ds.auto_slug,ds.text_slug,ds.number_precio,ds.number_minprecio,ds.number_precioinmo,ds.number_precioalq
from dynamic_rooms as ds
where ds.dynamic_geolocality = 17 and ds.dynamic_taxonomy_group = 2;

# consulta listado
select ds.text_latitud,ds.text_altitud,ds.text_title,ds.auto_slug,ds.text_slug,ds.number_precio,ds.number_minprecio,ds.number_precioinmo,ds.number_precioalq,ds.text_ref,ds.text_zona,
da.text_title as accion, dg.foto1,dg.foto2,dg.text_title_image_1,dg.text_title_image_2,dgl.text_title as geolocality,dgc.text_title as geocity, 
ai.number_habdobles+ai.number_habitaciones as habitaciones,ai.number_banyos,dtg.text_title as taxonomia_group,dgci.text_title as cp,daa.text_title as agencia,dgip.image_principal,
ds.dynamic_taxonomy_group,ds.dynamic_taxonomy,ds.dynamic_geolocality,dynamic_rooms,textarea_description,textarea_description_2,textarea_interior,
ai.number_m_uties,ds.text_antiguedad,number_m_terraza,ds.text_conservacion,ai.number_numplanta,number_gastos_com,ai.number_tbano,ai.number_tcocina,ai.number_m_comedor,
ai.number_m_parcela,ai.checkbox_parking,ai.checkbox_opcioncompra,ai.checkbox_salon,ai.checkbox_airecentral,ai.checkbox_aire_con,ai.checkbox_alarma,ai.checkbox_alarmaincendio,ai.checkbox_alarmarobo,
ai.checkbox_carpinteria,ai.checkbox_carpinext,ai.checkbox_suelo,ai.checkbox_adaptadominus,ai.checkbox_arma_empo,ai.checkbox_cajafuerte,ai.checkbox_calefacentral, 
ai.checkbox_calefaccion,ai.checkbox_chimenea,ai.checkbox_cocina_inde, ai.checkbox_gasciudad,ai.checkbox_gimnasio,ai.checkbox_habjuegos,ai.checkbox_hidromasaje, 
ai.checkbox_jacuzzi,ai.checkbox_linea_tlf,ai.checkbox_muebles,ai.checkbox_ojobuey,ai.checkbox_tv,ai.checkbox_balcon,ai.checkbox_barbacoa,ai.checkbox_terraza,  
ai.checkbox_terrazaacris,ai.checkbox_comunidadincluida,ai.checkbox_ascensor,ai.checkbox_bar,ai.checkbox_depoagua,ai.checkbox_descalcificador,ai.checkbox_despensa, 
ai.checkbox_diafano,ai.checkbox_electro,ai.checkbox_esquina,ai.checkbox_galeria,ai.checkbox_plaza_gara,ai.checkbox_garajedoble,ai.checkbox_lavanderia,  
ai.checkbox_preinstaacc,ai.checkbox_luminoso,ai.checkbox_luz,ai.checkbox_piscina_com, ai.checkbox_piscina_prop, ai.checkbox_primera_line,  
ai.checkbox_parking,ai.checkbox_patio,ai.checkbox_puerta_blin,  
ai.checkbox_sauna,ai.checkbox_solarium,ai.checkbox_sotano,ai.checkbox_todoext,ai.checkbox_trastero,ai.checkbox_satelite,ai.checkbox_urbanizacion,  
ai.checkbox_vestuarios,ai.checkbox_video_port,ai.checkbox_vistasalmar,ai.checkbox_energialetra,ai.checkbox_energiarecibido
from dynamic_rooms as ds
left join avantio_inmovilla as ai on ai.id = ds.id
left join dynamic_accion as da on da.id = ds.dynamic_accion
left join dynamic_agencia as daa on daa.id = ds.dynamic_agencia
left join dynamic_gallery_inmo_principal as dgip on dgip.id = ds.dynamic_agencia
left join dynamic_gallery_inmo as dg on dg.id = ds.dynamic_gallery_inmo
left join dynamic_geocity as dgc on dgc.id = ds.dynamic_geocity
left join dynamic_geolocality as dgl on dgl.id = ds.dynamic_geolocality
left join dynamic_geodistrict as dgci on dgci.id = ds.dynamic_geolocality
left join dynamic_taxonomy as dt on dt.id = ds.dynamic_taxonomy
left join dynamic_taxonomy_group as dtg on dtg.id = ds.dynamic_taxonomy_group
where ds.dynamic_taxonomy_group = 2 and ds.dynamic_geolocality = 17 limit 3;

# consulta buscador checkbox
select ds.text_latitud,ds.text_altitud,ds.text_title,ds.auto_slug,ds.text_slug,ds.number_precio,ds.number_minprecio,ds.number_precioinmo,ds.number_precioalq,ds.text_ref,ds.text_zona, 
da.text_title as accion, dg.foto1,dg.foto2,dg.text_title_image_1,dg.text_title_image_2,dgl.text_title as geolocality,dgc.text_title as geocity, 
ai.number_habdobles+ai.number_habitaciones as habitaciones,ai.number_banyos,dtg.text_title as taxonomia_group,dgci.text_title as cp,daa.text_title as agencia,
dgip.image_principal, ds.dynamic_taxonomy_group,ds.dynamic_taxonomy,ds.dynamic_geolocality,ds.textarea_description,textarea_description_2,textarea_interior, 
ai.number_m_uties,ds.text_antiguedad,number_m_terraza,ds.text_conservacion,ai.number_numplanta,number_gastos_com,ai.number_tbano,ai.number_tcocina,ai.number_m_comedor, 
ai.number_m_parcela,ai.checkbox_parking,ai.checkbox_opcioncompra,ai.checkbox_salon,ai.checkbox_airecentral,ai.checkbox_aire_con,ai.checkbox_alarma,ai.checkbox_alarmaincendio,
ai.checkbox_alarmarobo, ai.checkbox_carpinteria,ai.checkbox_carpinext,ai.checkbox_suelo,ai.checkbox_adaptadominus,ai.checkbox_arma_empo,ai.checkbox_cajafuerte,ai.checkbox_calefacentral, 
ai.checkbox_calefaccion,ai.checkbox_chimenea,ai.checkbox_cocina_inde, ai.checkbox_gasciudad,ai.checkbox_gimnasio,ai.checkbox_habjuegos,ai.checkbox_hidromasaje, ai.checkbox_jacuzzi,
ai.checkbox_linea_tlf,ai.checkbox_muebles,ai.checkbox_ojobuey,ai.checkbox_tv,ai.checkbox_balcon,ai.checkbox_barbacoa,ai.checkbox_terraza, ai.checkbox_terrazaacris,ai.checkbox_comunidadincluida,
ai.checkbox_ascensor,ai.checkbox_bar,ai.checkbox_depoagua,ai.checkbox_descalcificador,ai.checkbox_despensa, ai.checkbox_diafano,ai.checkbox_electro,ai.checkbox_esquina,ai.checkbox_galeria,
ai.checkbox_plaza_gara,ai.checkbox_garajedoble,ai.checkbox_lavanderia, ai.checkbox_preinstaacc,ai.checkbox_luminoso,ai.checkbox_luz,ai.checkbox_piscina_com, ai.checkbox_piscina_prop, 
ai.checkbox_primera_line, ai.checkbox_patio,ai.checkbox_puerta_blin, ai.checkbox_sauna,ai.checkbox_solarium,ai.checkbox_sotano,ai.checkbox_todoext,ai.checkbox_trastero,ai.checkbox_satelite,
ai.checkbox_urbanizacion, ai.checkbox_vestuarios,ai.checkbox_video_port,ai.checkbox_vistasalmar,ai.checkbox_energialetra,ai.checkbox_energiarecibido 
from dynamic_rooms as ds 
left join avantio_inmovilla as ai on ai.id = ds.id 
left join dynamic_accion as da on da.id = ds.dynamic_accion 
left join dynamic_agencia as daa on daa.id = ds.dynamic_agencia 
left join dynamic_gallery_inmo_principal as dgip on dgip.id = ds.dynamic_agencia 
left join dynamic_gallery_inmo as dg on dg.id = ds.dynamic_gallery_inmo 
left join dynamic_geocity as dgc on dgc.id = ds.dynamic_geocity 
left join dynamic_geolocality as dgl on dgl.id = ds.dynamic_geolocality 
left join dynamic_geodistrict as dgci on dgci.id = ds.dynamic_geolocality 
left join dynamic_taxonomy as dt on dt.id = ds.dynamic_taxonomy 
left join dynamic_taxonomy_group as dtg on dtg.id = ds.dynamic_taxonomy_group 
WHERE 1 and ai.checkbox_aire_con= 1 AND ai.checkbox_calefaccion= 1 AND ai.checkbox_chimenea= 1 AND ai.checkbox_alarmaincendio= 1 AND ai.checkbox_alarmarobo= 1 
AND ai.checkbox_gasciudad= 1 AND ai.checkbox_cajafuerte= 1 AND ai.checkbox_tv= 1 AND ai.checkbox_satelite= 1 AND ai.checkbox_parking= 1 AND ai.checkbox_garajedoble= 1 
AND ai.checkbox_ascensor= 1 AND ai.checkbox_terraza= 1 AND ai.checkbox_balcon= 1 AND ai.checkbox_urbanizacion= 1;

# consulta buscador taxonomia group
select
   ds.text_latitud,
   ds.text_altitud,
   ds.text_title,
   ds.auto_slug,
   ds.text_slug,
   ds.number_precio,
   ds.number_minprecio,
   ds.number_precioinmo,
   ds.number_precioalq,
   ds.text_ref,
   ds.text_zona,
   da.text_title as accion,
   dg.foto1,
   dg.foto2,
   dg.text_title_image_1,
   dg.text_title_image_2,
   dgl.text_title as geolocality,
   dgc.text_title as geocity,
   ai.number_habdobles + ai.number_habitaciones as habitaciones,
   ai.number_banyos,
   dtg.text_title as taxonomia_group,
   dgci.text_title as cp,
   daa.text_title as agencia,
   dgip.image_principal,
   ds.dynamic_taxonomy_group,
   ds.dynamic_taxonomy,
   ds.dynamic_geolocality,
   ds.textarea_description,
   textarea_description_2,
   textarea_interior,
   ai.number_m_uties,
   ds.text_antiguedad,
   number_m_terraza,
   ds.text_conservacion,
   ai.number_numplanta,
   number_gastos_com,
   ai.number_tbano,
   ai.number_tcocina,
   ai.number_m_comedor,
   ai.number_m_parcela,
   ai.checkbox_parking,
   ai.checkbox_opcioncompra,
   ai.checkbox_salon,
   ai.checkbox_airecentral,
   ai.checkbox_aire_con,
   ai.checkbox_alarma,
   ai.checkbox_alarmaincendio,
   ai.checkbox_alarmarobo,
   ai.checkbox_carpinteria,
   ai.checkbox_carpinext,
   ai.checkbox_suelo,
   ai.checkbox_adaptadominus,
   ai.checkbox_arma_empo,
   ai.checkbox_cajafuerte,
   ai.checkbox_calefacentral,
   ai.checkbox_calefaccion,
   ai.checkbox_chimenea,
   ai.checkbox_cocina_inde,
   ai.checkbox_gasciudad,
   ai.checkbox_gimnasio,
   ai.checkbox_habjuegos,
   ai.checkbox_hidromasaje,
   ai.checkbox_jacuzzi,
   ai.checkbox_linea_tlf,
   ai.checkbox_muebles,
   ai.checkbox_ojobuey,
   ai.checkbox_tv,
   ai.checkbox_balcon,
   ai.checkbox_barbacoa,
   ai.checkbox_terraza,
   ai.checkbox_terrazaacris,
   ai.checkbox_comunidadincluida,
   ai.checkbox_ascensor,
   ai.checkbox_bar,
   ai.checkbox_depoagua,
   ai.checkbox_descalcificador,
   ai.checkbox_despensa,
   ai.checkbox_diafano,
   ai.checkbox_electro,
   ai.checkbox_esquina,
   ai.checkbox_galeria,
   ai.checkbox_plaza_gara,
   ai.checkbox_garajedoble,
   ai.checkbox_lavanderia,
   ai.checkbox_preinstaacc,
   ai.checkbox_luminoso,
   ai.checkbox_luz,
   ai.checkbox_piscina_com,
   ai.checkbox_piscina_prop,
   ai.checkbox_primera_line,
   ai.checkbox_patio,
   ai.checkbox_puerta_blin,
   ai.checkbox_sauna,
   ai.checkbox_solarium,
   ai.checkbox_sotano,
   ai.checkbox_todoext,
   ai.checkbox_trastero,
   ai.checkbox_satelite,
   ai.checkbox_urbanizacion,
   ai.checkbox_vestuarios,
   ai.checkbox_video_port,
   ai.checkbox_vistasalmar,
   ai.checkbox_energialetra,
   ai.checkbox_energiarecibido 
from
   dynamic_rooms as ds 
   left join
      avantio_inmovilla as ai 
      on ai.id = ds.id 
   left join
      dynamic_accion as da 
      on da.id = ds.dynamic_accion 
   left join
      dynamic_agencia as daa 
      on daa.id = ds.dynamic_agencia 
   left join
      dynamic_gallery_inmo_principal as dgip 
      on dgip.id = ds.dynamic_agencia 
   left join
      dynamic_gallery_inmo as dg 
      on dg.id = ds.dynamic_gallery_inmo 
   left join
      dynamic_geocity as dgc 
      on dgc.id = ds.dynamic_geocity 
   left join
      dynamic_geolocality as dgl 
      on dgl.id = ds.dynamic_geolocality 
   left join
      dynamic_geodistrict as dgci 
      on dgci.id = ds.dynamic_geolocality 
   left join
      dynamic_taxonomy as dt 
      on dt.id = ds.dynamic_taxonomy 
   left join
      dynamic_taxonomy_group as dtg 
      on dtg.id = ds.dynamic_taxonomy_group 
WHERE
   1 
   AND dtg.text_title = 'Piso';
# consulta por geolocality

select
   ds.text_latitud,
   ds.text_altitud,
   ds.text_title,
   ds.auto_slug,
   ds.text_slug,
   ds.number_precio,
   ds.number_minprecio,
   ds.number_precioinmo,
   ds.number_precioalq,
   ds.text_ref,
   ds.text_zona,
   da.text_title as accion,
   dg.foto1,
   dg.foto2,
   dg.text_title_image_1,
   dg.text_title_image_2,
   dgl.text_title as geolocality,
   dgc.text_title as geocity,
   ai.number_habdobles + ai.number_habitaciones as habitaciones,
   ai.number_banyos,
   dtg.text_title as taxonomia_group,
   dgci.text_title as cp,
   daa.text_title as agencia,
   dgip.image_principal,
   ds.dynamic_taxonomy_group,
   ds.dynamic_taxonomy,
   ds.dynamic_geolocality,
   ds.textarea_description,
   textarea_description_2,
   textarea_interior,
   ai.number_m_uties,
   ds.text_antiguedad,
   number_m_terraza,
   ds.text_conservacion,
   ai.number_numplanta,
   number_gastos_com,
   ai.number_tbano,
   ai.number_tcocina,
   ai.number_m_comedor,
   ai.number_m_parcela,
   ai.checkbox_parking,
   ai.checkbox_opcioncompra,
   ai.checkbox_salon,
   ai.checkbox_airecentral,
   ai.checkbox_aire_con,
   ai.checkbox_alarma,
   ai.checkbox_alarmaincendio,
   ai.checkbox_alarmarobo,
   ai.checkbox_carpinteria,
   ai.checkbox_carpinext,
   ai.checkbox_suelo,
   ai.checkbox_adaptadominus,
   ai.checkbox_arma_empo,
   ai.checkbox_cajafuerte,
   ai.checkbox_calefacentral,
   ai.checkbox_calefaccion,
   ai.checkbox_chimenea,
   ai.checkbox_cocina_inde,
   ai.checkbox_gasciudad,
   ai.checkbox_gimnasio,
   ai.checkbox_habjuegos,
   ai.checkbox_hidromasaje,
   ai.checkbox_jacuzzi,
   ai.checkbox_linea_tlf,
   ai.checkbox_muebles,
   ai.checkbox_ojobuey,
   ai.checkbox_tv,
   ai.checkbox_balcon,
   ai.checkbox_barbacoa,
   ai.checkbox_terraza,
   ai.checkbox_terrazaacris,
   ai.checkbox_comunidadincluida,
   ai.checkbox_ascensor,
   ai.checkbox_bar,
   ai.checkbox_depoagua,
   ai.checkbox_descalcificador,
   ai.checkbox_despensa,
   ai.checkbox_diafano,
   ai.checkbox_electro,
   ai.checkbox_esquina,
   ai.checkbox_galeria,
   ai.checkbox_plaza_gara,
   ai.checkbox_garajedoble,
   ai.checkbox_lavanderia,
   ai.checkbox_preinstaacc,
   ai.checkbox_luminoso,
   ai.checkbox_luz,
   ai.checkbox_piscina_com,
   ai.checkbox_piscina_prop,
   ai.checkbox_primera_line,
   ai.checkbox_patio,
   ai.checkbox_puerta_blin,
   ai.checkbox_sauna,
   ai.checkbox_solarium,
   ai.checkbox_sotano,
   ai.checkbox_todoext,
   ai.checkbox_trastero,
   ai.checkbox_satelite,
   ai.checkbox_urbanizacion,
   ai.checkbox_vestuarios,
   ai.checkbox_video_port,
   ai.checkbox_vistasalmar,
   ai.checkbox_energialetra,
   ai.checkbox_energiarecibido 
from
   dynamic_rooms as ds 
   left join
      avantio_inmovilla as ai 
      on ai.id = ds.id 
   left join
      dynamic_accion as da 
      on da.id = ds.dynamic_accion 
   left join
      dynamic_agencia as daa 
      on daa.id = ds.dynamic_agencia 
   left join
      dynamic_gallery_inmo_principal as dgip 
      on dgip.id = ds.dynamic_agencia 
   left join
      dynamic_gallery_inmo as dg 
      on dg.id = ds.dynamic_gallery_inmo 
   left join
      dynamic_geocity as dgc 
      on dgc.id = ds.dynamic_geocity 
   left join
      dynamic_geolocality as dgl 
      on dgl.id = ds.dynamic_geolocality 
   left join
      dynamic_geodistrict as dgci 
      on dgci.id = ds.dynamic_geolocality 
   left join
      dynamic_taxonomy as dt 
      on dt.id = ds.dynamic_taxonomy 
   left join
      dynamic_taxonomy_group as dtg 
      on dtg.id = ds.dynamic_taxonomy_group 
WHERE
   1 
   AND dgl.text_title = 'Manresa';

# habitaciones
select
   ds.text_latitud,
   ds.text_altitud,
   ds.text_title,
   ds.auto_slug,
   ds.text_slug,
   ds.number_precio,
   ds.number_minprecio,
   ds.number_precioinmo,
   ds.number_precioalq,
   ds.text_ref,
   ds.text_zona,
   da.text_title as accion,
   dg.foto1,
   dg.foto2,
   dg.text_title_image_1,
   dg.text_title_image_2,
   dgl.text_title as geolocality,
   dgc.text_title as geocity,
   ai.number_habdobles + ai.number_habitaciones as habitaciones,
   ai.number_banyos,
   dtg.text_title as taxonomia_group,
   dgci.text_title as cp,
   daa.text_title as agencia,
   dgip.image_principal,
   ds.dynamic_taxonomy_group,
   ds.dynamic_taxonomy,
   ds.dynamic_geolocality,
   ds.textarea_description,
   textarea_description_2,
   textarea_interior,
   ai.number_m_uties,
   ds.text_antiguedad,
   number_m_terraza,
   ds.text_conservacion,
   ai.number_numplanta,
   number_gastos_com,
   ai.number_tbano,
   ai.number_tcocina,
   ai.number_m_comedor,
   ai.number_m_parcela,
   ai.checkbox_parking,
   ai.checkbox_opcioncompra,
   ai.checkbox_salon,
   ai.checkbox_airecentral,
   ai.checkbox_aire_con,
   ai.checkbox_alarma,
   ai.checkbox_alarmaincendio,
   ai.checkbox_alarmarobo,
   ai.checkbox_carpinteria,
   ai.checkbox_carpinext,
   ai.checkbox_suelo,
   ai.checkbox_adaptadominus,
   ai.checkbox_arma_empo,
   ai.checkbox_cajafuerte,
   ai.checkbox_calefacentral,
   ai.checkbox_calefaccion,
   ai.checkbox_chimenea,
   ai.checkbox_cocina_inde,
   ai.checkbox_gasciudad,
   ai.checkbox_gimnasio,
   ai.checkbox_habjuegos,
   ai.checkbox_hidromasaje,
   ai.checkbox_jacuzzi,
   ai.checkbox_linea_tlf,
   ai.checkbox_muebles,
   ai.checkbox_ojobuey,
   ai.checkbox_tv,
   ai.checkbox_balcon,
   ai.checkbox_barbacoa,
   ai.checkbox_terraza,
   ai.checkbox_terrazaacris,
   ai.checkbox_comunidadincluida,
   ai.checkbox_ascensor,
   ai.checkbox_bar,
   ai.checkbox_depoagua,
   ai.checkbox_descalcificador,
   ai.checkbox_despensa,
   ai.checkbox_diafano,
   ai.checkbox_electro,
   ai.checkbox_esquina,
   ai.checkbox_galeria,
   ai.checkbox_plaza_gara,
   ai.checkbox_garajedoble,
   ai.checkbox_lavanderia,
   ai.checkbox_preinstaacc,
   ai.checkbox_luminoso,
   ai.checkbox_luz,
   ai.checkbox_piscina_com,
   ai.checkbox_piscina_prop,
   ai.checkbox_primera_line,
   ai.checkbox_patio,
   ai.checkbox_puerta_blin,
   ai.checkbox_sauna,
   ai.checkbox_solarium,
   ai.checkbox_sotano,
   ai.checkbox_todoext,
   ai.checkbox_trastero,
   ai.checkbox_satelite,
   ai.checkbox_urbanizacion,
   ai.checkbox_vestuarios,
   ai.checkbox_video_port,
   ai.checkbox_vistasalmar,
   ai.checkbox_energialetra,
   ai.checkbox_energiarecibido 
from
   dynamic_rooms as ds 
   left join
      avantio_inmovilla as ai 
      on ai.id = ds.id 
   left join
      dynamic_accion as da 
      on da.id = ds.dynamic_accion 
   left join
      dynamic_agencia as daa 
      on daa.id = ds.dynamic_agencia 
   left join
      dynamic_gallery_inmo_principal as dgip 
      on dgip.id = ds.dynamic_agencia 
   left join
      dynamic_gallery_inmo as dg 
      on dg.id = ds.dynamic_gallery_inmo 
   left join
      dynamic_geocity as dgc 
      on dgc.id = ds.dynamic_geocity 
   left join
      dynamic_geolocality as dgl 
      on dgl.id = ds.dynamic_geolocality 
   left join
      dynamic_geodistrict as dgci 
      on dgci.id = ds.dynamic_geolocality 
   left join
      dynamic_taxonomy as dt 
      on dt.id = ds.dynamic_taxonomy 
   left join
      dynamic_taxonomy_group as dtg 
      on dtg.id = ds.dynamic_taxonomy_group 
WHERE
   1 
   AND ai.number_habitaciones = 2;
 
 
 # baños
 select
   ds.text_latitud,
   ds.text_altitud,
   ds.text_title,
   ds.auto_slug,
   ds.text_slug,
   ds.number_precio,
   ds.number_minprecio,
   ds.number_precioinmo,
   ds.number_precioalq,
   ds.text_ref,
   ds.text_zona,
   da.text_title as accion,
   dg.foto1,
   dg.foto2,
   dg.text_title_image_1,
   dg.text_title_image_2,
   dgl.text_title as geolocality,
   dgc.text_title as geocity,
   ai.number_habdobles + ai.number_habitaciones as habitaciones,
   ai.number_banyos,
   dtg.text_title as taxonomia_group,
   dgci.text_title as cp,
   daa.text_title as agencia,
   dgip.image_principal,
   ds.dynamic_taxonomy_group,
   ds.dynamic_taxonomy,
   ds.dynamic_geolocality,
   ds.textarea_description,
   textarea_description_2,
   textarea_interior,
   ai.number_m_uties,
   ds.text_antiguedad,
   number_m_terraza,
   ds.text_conservacion,
   ai.number_numplanta,
   number_gastos_com,
   ai.number_tbano,
   ai.number_tcocina,
   ai.number_m_comedor,
   ai.number_m_parcela,
   ai.checkbox_parking,
   ai.checkbox_opcioncompra,
   ai.checkbox_salon,
   ai.checkbox_airecentral,
   ai.checkbox_aire_con,
   ai.checkbox_alarma,
   ai.checkbox_alarmaincendio,
   ai.checkbox_alarmarobo,
   ai.checkbox_carpinteria,
   ai.checkbox_carpinext,
   ai.checkbox_suelo,
   ai.checkbox_adaptadominus,
   ai.checkbox_arma_empo,
   ai.checkbox_cajafuerte,
   ai.checkbox_calefacentral,
   ai.checkbox_calefaccion,
   ai.checkbox_chimenea,
   ai.checkbox_cocina_inde,
   ai.checkbox_gasciudad,
   ai.checkbox_gimnasio,
   ai.checkbox_habjuegos,
   ai.checkbox_hidromasaje,
   ai.checkbox_jacuzzi,
   ai.checkbox_linea_tlf,
   ai.checkbox_muebles,
   ai.checkbox_ojobuey,
   ai.checkbox_tv,
   ai.checkbox_balcon,
   ai.checkbox_barbacoa,
   ai.checkbox_terraza,
   ai.checkbox_terrazaacris,
   ai.checkbox_comunidadincluida,
   ai.checkbox_ascensor,
   ai.checkbox_bar,
   ai.checkbox_depoagua,
   ai.checkbox_descalcificador,
   ai.checkbox_despensa,
   ai.checkbox_diafano,
   ai.checkbox_electro,
   ai.checkbox_esquina,
   ai.checkbox_galeria,
   ai.checkbox_plaza_gara,
   ai.checkbox_garajedoble,
   ai.checkbox_lavanderia,
   ai.checkbox_preinstaacc,
   ai.checkbox_luminoso,
   ai.checkbox_luz,
   ai.checkbox_piscina_com,
   ai.checkbox_piscina_prop,
   ai.checkbox_primera_line,
   ai.checkbox_patio,
   ai.checkbox_puerta_blin,
   ai.checkbox_sauna,
   ai.checkbox_solarium,
   ai.checkbox_sotano,
   ai.checkbox_todoext,
   ai.checkbox_trastero,
   ai.checkbox_satelite,
   ai.checkbox_urbanizacion,
   ai.checkbox_vestuarios,
   ai.checkbox_video_port,
   ai.checkbox_vistasalmar,
   ai.checkbox_energialetra,
   ai.checkbox_energiarecibido 
from
   dynamic_rooms as ds 
   left join
      avantio_inmovilla as ai 
      on ai.id = ds.id 
   left join
      dynamic_accion as da 
      on da.id = ds.dynamic_accion 
   left join
      dynamic_agencia as daa 
      on daa.id = ds.dynamic_agencia 
   left join
      dynamic_gallery_inmo_principal as dgip 
      on dgip.id = ds.dynamic_agencia 
   left join
      dynamic_gallery_inmo as dg 
      on dg.id = ds.dynamic_gallery_inmo 
   left join
      dynamic_geocity as dgc 
      on dgc.id = ds.dynamic_geocity 
   left join
      dynamic_geolocality as dgl 
      on dgl.id = ds.dynamic_geolocality 
   left join
      dynamic_geodistrict as dgci 
      on dgci.id = ds.dynamic_geolocality 
   left join
      dynamic_taxonomy as dt 
      on dt.id = ds.dynamic_taxonomy 
   left join
      dynamic_taxonomy_group as dtg 
      on dtg.id = ds.dynamic_taxonomy_group 
WHERE
   1 
   AND ai.number_banyos = 2;
  
   # Año construcción
   
   
   select
   ds.text_latitud,
   ds.text_altitud,
   ds.text_title,
   ds.auto_slug,
   ds.text_slug,
   ds.number_precio,
   ds.number_minprecio,
   ds.number_precioinmo,
   ds.number_precioalq,
   ds.text_ref,
   ds.text_zona,
   da.text_title as accion,
   dg.foto1,
   dg.foto2,
   dg.text_title_image_1,
   dg.text_title_image_2,
   dgl.text_title as geolocality,
   dgc.text_title as geocity,
   ai.number_habdobles + ai.number_habitaciones as habitaciones,
   ai.number_banyos,
   dtg.text_title as taxonomia_group,
   dgci.text_title as cp,
   daa.text_title as agencia,
   dgip.image_principal,
   ds.dynamic_taxonomy_group,
   ds.dynamic_taxonomy,
   ds.dynamic_geolocality,
   ds.textarea_description,
   textarea_description_2,
   textarea_interior,
   ai.number_m_uties,
   ds.text_antiguedad,
   number_m_terraza,
   ds.text_conservacion,
   ai.number_numplanta,
   number_gastos_com,
   ai.number_tbano,
   ai.number_tcocina,
   ai.number_m_comedor,
   ai.number_m_parcela,
   ai.checkbox_parking,
   ai.checkbox_opcioncompra,
   ai.checkbox_salon,
   ai.checkbox_airecentral,
   ai.checkbox_aire_con,
   ai.checkbox_alarma,
   ai.checkbox_alarmaincendio,
   ai.checkbox_alarmarobo,
   ai.checkbox_carpinteria,
   ai.checkbox_carpinext,
   ai.checkbox_suelo,
   ai.checkbox_adaptadominus,
   ai.checkbox_arma_empo,
   ai.checkbox_cajafuerte,
   ai.checkbox_calefacentral,
   ai.checkbox_calefaccion,
   ai.checkbox_chimenea,
   ai.checkbox_cocina_inde,
   ai.checkbox_gasciudad,
   ai.checkbox_gimnasio,
   ai.checkbox_habjuegos,
   ai.checkbox_hidromasaje,
   ai.checkbox_jacuzzi,
   ai.checkbox_linea_tlf,
   ai.checkbox_muebles,
   ai.checkbox_ojobuey,
   ai.checkbox_tv,
   ai.checkbox_balcon,
   ai.checkbox_barbacoa,
   ai.checkbox_terraza,
   ai.checkbox_terrazaacris,
   ai.checkbox_comunidadincluida,
   ai.checkbox_ascensor,
   ai.checkbox_bar,
   ai.checkbox_depoagua,
   ai.checkbox_descalcificador,
   ai.checkbox_despensa,
   ai.checkbox_diafano,
   ai.checkbox_electro,
   ai.checkbox_esquina,
   ai.checkbox_galeria,
   ai.checkbox_plaza_gara,
   ai.checkbox_garajedoble,
   ai.checkbox_lavanderia,
   ai.checkbox_preinstaacc,
   ai.checkbox_luminoso,
   ai.checkbox_luz,
   ai.checkbox_piscina_com,
   ai.checkbox_piscina_prop,
   ai.checkbox_primera_line,
   ai.checkbox_patio,
   ai.checkbox_puerta_blin,
   ai.checkbox_sauna,
   ai.checkbox_solarium,
   ai.checkbox_sotano,
   ai.checkbox_todoext,
   ai.checkbox_trastero,
   ai.checkbox_satelite,
   ai.checkbox_urbanizacion,
   ai.checkbox_vestuarios,
   ai.checkbox_video_port,
   ai.checkbox_vistasalmar,
   ai.checkbox_energialetra,
   ai.checkbox_energiarecibido 
from
   dynamic_rooms as ds 
   left join
      avantio_inmovilla as ai 
      on ai.id = ds.id 
   left join
      dynamic_accion as da 
      on da.id = ds.dynamic_accion 
   left join
      dynamic_agencia as daa 
      on daa.id = ds.dynamic_agencia 
   left join
      dynamic_gallery_inmo_principal as dgip 
      on dgip.id = ds.dynamic_agencia 
   left join
      dynamic_gallery_inmo as dg 
      on dg.id = ds.dynamic_gallery_inmo 
   left join
      dynamic_geocity as dgc 
      on dgc.id = ds.dynamic_geocity 
   left join
      dynamic_geolocality as dgl 
      on dgl.id = ds.dynamic_geolocality 
   left join
      dynamic_geodistrict as dgci 
      on dgci.id = ds.dynamic_geolocality 
   left join
      dynamic_taxonomy as dt 
      on dt.id = ds.dynamic_taxonomy 
   left join
      dynamic_taxonomy_group as dtg 
      on dtg.id = ds.dynamic_taxonomy_group 
WHERE
   1 
   AND ds.text_antiguedad = '2012';
   
   */

