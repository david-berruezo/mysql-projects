use pisosenm_inmobiliaria_dos;
use pisosenm_inmobiliaria_tres;


SELECT option_value FROM wp_options WHERE option_name='active_plugins';


SELECT p.ID, p.post_title, tr.term_taxonomy_id, t.`name`
FROM wp_term_relationships as tr
         JOIN wp_posts AS p ON p.ID = tr.`object_Id`
         JOIN wp_terms AS t ON t.`term_id` = tr.`term_taxonomy_id`
WHERE p.post_type = 'state_data'
  AND t.`name` = 'Alabama'
ORDER BY p.ID;


/*
select * from avantio_accomodations;
select * from avantio_accomodations;


select * from avantio_accomodations;


select auto_slug , text_slug from dynamic_accion where language = "es" and id = 1;

# select * from hshv_avantio_occupation_rules;
# select * from hshv_avantio_occupation_rules_names;
# select * from dynamic_taxonomy_geographic_language_fields_customitzation;

SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation 
WHERE language = 'es' 
and (text_page_title like 'barcelona%' or text_page_title like '%barcelona'  or text_page_title like '%barcelona%')  
ORDER BY text_page_title;


# wordpress query wpml passing language

select * from wp_icl_translations 
where element_type = "post_post"
order by element_id asc;

SELECT * FROM wp_posts 
JOIN wp_icl_translations t ON wp_posts.ID = t.element_id AND t.element_type = CONCAT('post_', wp_posts.post_type)  
WHERE wp_posts.post_type = 'post' AND wp_posts.post_status = 'publish' AND ( ( t.language_code = 'en' AND wp_posts.post_type = 'post' ) )  
ORDER BY wp_posts.post_date DESC;



		SELECT DISTINCT (ID),p.post_title, p.post_status, p.post_date, m.meta_key, m.meta_value
        FROM wp_posts as p
        INNER JOIN wp_postmeta as m
        INNER JOIN wp_term_relationships r ON r.object_id = p.ID
        INNER JOIN wp_term_taxonomy t ON t.term_taxonomy_id = r.term_taxonomy_id
        INNER JOIN wp_terms wt on wt.term_id = t.term_id
        WHERE
        p.post_status = 'publish' and m.meta_key = 'destacado_home' and m.meta_value = 'true'
        AND p.ID = m.post_id;


SELECT DISTINCT (ID),p.post_title, p.post_status, p.post_date, m.meta_key, m.meta_value
        FROM wp_posts as p
        JOIN wp_icl_translations as ticl ON p.ID = ticl.element_id AND ticl.element_type = CONCAT('post_', p.post_type)  
        INNER JOIN wp_postmeta as m
        INNER JOIN wp_term_relationships r ON r.object_id = p.ID
        INNER JOIN wp_term_taxonomy t ON t.term_taxonomy_id = r.term_taxonomy_id
        INNER JOIN wp_terms wt on wt.term_id = t.term_id
        WHERE
        p.post_status = 'publish' 
        and m.meta_key = 'destacado_home' 
        and m.meta_value = 'true'
        AND ticl.language_code = 'es'
        AND p.ID = m.post_id


SELECT * FROM `dynamic_rooms`;
SELECT * FROM `hshv_dynamic_rooms`;

SELECT * FROM `avantio_accomodations` WHERE `language` = 'es'
alter table dynamic_taxonomy_geographic_language_extra add column `dynamic_services` int(11) default 0 COMMENT "Servicio";
select * from avantio_accomodations_locations;

# clean rates
SET SQL_SAFE_UPDATES = 0;
delete from hshv_avantio_rates_names where id <> -1;
INSERT INTO hshv_avantio_rates_names(id, name) select id , text_title from hshv_avantio_accomodations where language = "es";
delete from hshv_avantio_rates_acommodation where id <> -1;  
INSERT INTO hshv_avantio_rates_acommodation(id, id_avantio_acommodation) select id , id from hshv_avantio_accomodations where language = "es";
delete from hshv_avantio_rates where accommodation_id <> -1;

select id,text_title 
from hshv_avantio_accomodations
where language = "es";

select id,name 
from hshv_avantio_rates_names;

select id,id_avantio_acommodation from hshv_avantio_rates_acommodation;


alter table avantio_caracteristicas add column `language` char(3) default 'es' COMMENT "Lenguage";
	
CREATE TABLE `avantio_caracteristicas` (
`id` int(11) COMMENT "Identificador",
`checkbox_grups` tinyint(4) COMMENT "grupos",
`text_page_title` varchar(120) COMMENT "Título página", 
`text_slug` varchar(255) COMMENT "Manual slug",
`auto_slug` varchar(255) COMMENT "Automátic slug", 
`text_meta_keywords` varchar(255)  COMMENT "Meta Keywords",
`text_meta_description` varchar(255) COMMENT "Meta description", 
`text_meta_robots` varchar(45) COMMENT "Meta robots", 
`textarea_scripts_header` text COMMENT "Scripts header",
`textarea_scripts_body` text COMMENT "Scripts body", 
`status` varchar(128) default "ACTIVED" COMMENT "Status", 
`position` int(11) COMMENT "position",
PRIMARY KEY (`id`)	
)ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT='avantio caracteristicas';


show full columns from avantio_accomodations;
show full columns from dynamic_caracteristicas;

alter table dynamic_caracteristicas add column multiple_avantio_accomodations varchar(255) COMMENT "caracteristicas originales";

alter table dynamic_caracteristicas drop column  checkbox_grups;
alter table dynamic_caracteristicas drop column  checkbox_aparcamiento;
alter table dynamic_caracteristicas drop column  checkbox_piscina;
alter table dynamic_caracteristicas drop column  checkbox_piscina_interior_climatizada;
alter table dynamic_caracteristicas drop column  checkbox_piscina_climatizada;
alter table dynamic_caracteristicas drop column  checkbox_piscina_de_agua_salada;
alter table dynamic_caracteristicas drop column  checkbox_tv;
alter table dynamic_caracteristicas drop column  checkbox_jardin;
alter table dynamic_caracteristicas drop column  checkbox_muebles_jardin;
alter table dynamic_caracteristicas drop column  checkbox_plancha;
alter table dynamic_caracteristicas drop column  checkbox_chimenea;
alter table dynamic_caracteristicas drop column  checkbox_barbacoa;
alter table dynamic_caracteristicas drop column  checkbox_radio;
alter table dynamic_caracteristicas drop column  checkbox_minibar;
alter table dynamic_caracteristicas drop column  checkbox_terraza;
alter table dynamic_caracteristicas drop column  checkbox_parcela_vallada;
alter table dynamic_caracteristicas drop column  checkbox_caja_seguridad;
alter table dynamic_caracteristicas drop column  checkbox_ascensor;
alter table dynamic_caracteristicas drop column  checkbox_dvd;
alter table dynamic_caracteristicas drop column  checkbox_balcon;
alter table dynamic_caracteristicas drop column  checkbox_exprimidor;
alter table dynamic_caracteristicas drop column  checkbox_hervidor_electrico;
alter table dynamic_caracteristicas drop column  checkbox_secador_pelo;
alter table dynamic_caracteristicas drop column  checkbox_zona_ninos;
alter table dynamic_caracteristicas drop column  checkbox_gimnasio;
alter table dynamic_caracteristicas drop column  checkbox_alarma;
alter table dynamic_caracteristicas drop column  checkbox_tennis;
alter table dynamic_caracteristicas drop column  checkbox_squash;
alter table dynamic_caracteristicas drop column  checkbox_paddel;
alter table dynamic_caracteristicas drop column  checkbox_sauna;
alter table dynamic_caracteristicas drop column  checkbox_jacuzzi;
alter table dynamic_caracteristicas drop column  checkbox_apta_discapacitados;
alter table dynamic_caracteristicas drop column  checkbox_nevera;
alter table dynamic_caracteristicas drop column  checkbox_congelador;
alter table dynamic_caracteristicas drop column  checkbox_lavavajillas;
alter table dynamic_caracteristicas drop column  checkbox_lavadora;
alter table dynamic_caracteristicas drop column  checkbox_secadora;
alter table dynamic_caracteristicas drop column  checkbox_cafetera;
alter table dynamic_caracteristicas drop column  checkbox_tostadora;
alter table dynamic_caracteristicas drop column  checkbox_microondas;
alter table dynamic_caracteristicas drop column  checkbox_horno;
alter table dynamic_caracteristicas drop column  checkbox_vajilla;
alter table dynamic_caracteristicas drop column  checkbox_utensilios_cocina;
alter table dynamic_caracteristicas drop column  checkbox_cerca_del_mar;
alter table dynamic_caracteristicas drop column  checkbox_acceso_directo_mar;
alter table dynamic_caracteristicas drop column  checkbox_batidora;
alter table dynamic_caracteristicas drop column  checkbox_extra_nevera;
alter table dynamic_caracteristicas drop column  checkbox_vinoteca;
alter table dynamic_caracteristicas drop column  checkbox_hervidor_agua;
alter table dynamic_caracteristicas drop column  checkbox_cafetera_nespresso;
alter table dynamic_caracteristicas drop column  checkbox_wifi;
alter table dynamic_caracteristicas drop column  checkbox_fibra_optica;
alter table dynamic_caracteristicas drop column  checkbox_internet_por_cable;
alter table dynamic_caracteristicas drop column  checkbox_internet_velocidad_lenta;
alter table dynamic_caracteristicas drop column  checkbox_internet_velocidad_media;
alter table dynamic_caracteristicas drop column  checkbox_internet_velocidad_rapida;
alter table dynamic_caracteristicas drop column  checkbox_aire_acondicionado;
alter table dynamic_caracteristicas drop column  checkbox_ventilador;
alter table dynamic_caracteristicas drop column  checkbox_calefacion_central;
alter table dynamic_caracteristicas drop column  checkbox_bomba_aire;
alter table dynamic_caracteristicas drop column  checkbox_suelo_radiante;
alter table dynamic_caracteristicas drop column  checkbox_cine;
alter table dynamic_caracteristicas drop column  checkbox_equipo_musica;
alter table dynamic_caracteristicas drop column  checkbox_barbacoa_gas;
alter table dynamic_caracteristicas drop column  checkbox_bano_turco;
alter table dynamic_caracteristicas drop column  checkbox_billar;
alter table dynamic_caracteristicas drop column  checkbox_ping_pong;
alter table dynamic_caracteristicas drop column  checkbox_seguridad_piscina;
alter table dynamic_caracteristicas drop column  checkbox_accesorios_yoga;
alter table dynamic_caracteristicas drop column  checkbox_hosekeeping;
alter table dynamic_caracteristicas drop column  checkbox_trona;
alter table dynamic_caracteristicas drop column  checkbox_mascotas;
alter table dynamic_caracteristicas drop column  checkbox_helipuerto;
alter table dynamic_caracteristicas drop column  checkbox_zona_de_bar_exterior;
alter table dynamic_caracteristicas drop column  checkbox_discoteca_privada;
alter table dynamic_caracteristicas drop column  checkbox_distancias_playa_arena;
alter table dynamic_caracteristicas drop column  checkbox_distancias_playa_roca;
alter table dynamic_caracteristicas drop column  checkbox_distancias_golf;
alter table dynamic_caracteristicas drop column  checkbox_distancias_pueblo;
alter table dynamic_caracteristicas drop column  checkbox_distancias_supermercado;
alter table dynamic_caracteristicas drop column  checkbox_distancias_aeropuerto;


SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_SCHEMA = "pisosenm_inmobiliaria_tres" 
AND TABLE_NAME = 'avantio_accomodations'
AND COLUMN_NAME LIKE "checkbox%";

alter table dynamic_caracteristicas drop column like 


alter table dynamic_caracteristicas drop column text_zona_de_bar_exterior;
alter table dynamic_caracteristicas drop column text_discoteca_privada;
alter table dynamic_caracteristicas drop column text_distancias_playa_arena;
alter table dynamic_caracteristicas drop column text_distancias_playa_roca;
alter table dynamic_caracteristicas drop column text_distancias_golf;
alter table dynamic_caracteristicas drop column text_distancias_pueblo;
alter table dynamic_caracteristicas drop column text_distancias_supermercado;
alter table dynamic_caracteristicas drop column text_distancias_aeropuerto;

alter table dynamic_caracteristicas add column text_grups VARCHAR(255) COMMENT "grupos";
alter table dynamic_caracteristicas add column text_aparcamiento VARCHAR(255) COMMENT "aparcamiento";
alter table dynamic_caracteristicas add column text_piscina VARCHAR(255) COMMENT "piscina";
alter table dynamic_caracteristicas add column text_piscina_interior_climatizada VARCHAR(255) COMMENT "piscina interior climatizada";
alter table dynamic_caracteristicas add column text_piscina_climatizada VARCHAR(255) COMMENT "piscina climatizada";
alter table dynamic_caracteristicas add column text_piscina_de_agua_salada VARCHAR(255) COMMENT "piscina agua salada";
alter table dynamic_caracteristicas add column text_tv VARCHAR(255) COMMENT "tv";
alter table dynamic_caracteristicas add column text_jardin VARCHAR(255) COMMENT "jardín";
alter table dynamic_caracteristicas add column text_muebles_jardin VARCHAR(255) COMMENT "muebles de jardín";
alter table dynamic_caracteristicas add column text_plancha VARCHAR(255) COMMENT "plancha";
alter table dynamic_caracteristicas add column text_chimenea VARCHAR(255) COMMENT "chimenea";
alter table dynamic_caracteristicas add column text_barbacoa VARCHAR(255) COMMENT "barbacoa";
alter table dynamic_caracteristicas add column text_radio VARCHAR(255) COMMENT "radio";
alter table dynamic_caracteristicas add column text_minibar VARCHAR(255) COMMENT "mini-bar";
alter table dynamic_caracteristicas add column text_terraza VARCHAR(255) COMMENT "terraza";
alter table dynamic_caracteristicas add column text_parcela_vallada VARCHAR(255) COMMENT "parcela vallada";
alter table dynamic_caracteristicas add column text_caja_seguridad VARCHAR(255) COMMENT "caja fuerte";
alter table dynamic_caracteristicas add column text_ascensor VARCHAR(255) COMMENT "ascensor";
alter table dynamic_caracteristicas add column text_dvd VARCHAR(255) COMMENT "reproductor de DVD";
alter table dynamic_caracteristicas add column text_balcon VARCHAR(255) COMMENT "balcón";
alter table dynamic_caracteristicas add column text_exprimidor VARCHAR(255) COMMENT "exprimidor";
alter table dynamic_caracteristicas add column text_hervidor_electrico VARCHAR(255) COMMENT "hervidor electrico";
alter table dynamic_caracteristicas add column text_secador_pelo VARCHAR(255) COMMENT "secador de pelo";
alter table dynamic_caracteristicas add column text_zona_ninos VARCHAR(255) COMMENT "zona para niños";
alter table dynamic_caracteristicas add column text_gimnasio VARCHAR(255) COMMENT "gimnasio";
alter table dynamic_caracteristicas add column text_alarma VARCHAR(255) COMMENT "alarma";
alter table dynamic_caracteristicas add column text_tennis VARCHAR(255) COMMENT "pista de tenis";
alter table dynamic_caracteristicas add column text_squash VARCHAR(255) COMMENT "squash";
alter table dynamic_caracteristicas add column text_paddel VARCHAR(255) COMMENT "paddel";
alter table dynamic_caracteristicas add column text_sauna VARCHAR(255) COMMENT "sauna";
alter table dynamic_caracteristicas add column text_jacuzzi VARCHAR(255) COMMENT "jacuzzi";
alter table dynamic_caracteristicas add column text_apta_discapacitados VARCHAR(255) COMMENT "Apta para discapacitados";
alter table dynamic_caracteristicas add column text_nevera VARCHAR(255) COMMENT "nevera";
alter table dynamic_caracteristicas add column text_congelador VARCHAR(255) COMMENT "congelador";
alter table dynamic_caracteristicas add column text_lavavajillas VARCHAR(255) COMMENT "lavavajillas";
alter table dynamic_caracteristicas add column text_lavadora VARCHAR(255) COMMENT "lavadora";
alter table dynamic_caracteristicas add column text_secadora VARCHAR(255) COMMENT "secadora";
alter table dynamic_caracteristicas add column text_cafetera VARCHAR(255) COMMENT "cafetera";
alter table dynamic_caracteristicas add column text_tostadora VARCHAR(255) COMMENT "tostadora";
alter table dynamic_caracteristicas add column text_microondas VARCHAR(255) COMMENT "microondas";
alter table dynamic_caracteristicas add column text_horno VARCHAR(255) COMMENT "horno";
alter table dynamic_caracteristicas add column text_vajilla VARCHAR(255) COMMENT "vajilla";
alter table dynamic_caracteristicas add column text_utensilios_cocina VARCHAR(255) COMMENT "utensilios de concina";
alter table dynamic_caracteristicas add column text_cerca_del_mar VARCHAR(255) COMMENT "cerca del mar";
alter table dynamic_caracteristicas add column text_acceso_directo_mar VARCHAR(255) COMMENT "acceso directo mar";
alter table dynamic_caracteristicas add column text_batidora VARCHAR(255) COMMENT "batidora";
alter table dynamic_caracteristicas add column text_extra_nevera VARCHAR(255) COMMENT "extra nevera";
alter table dynamic_caracteristicas add column text_vinoteca VARCHAR(255) COMMENT "vinoteca / frigorifico vinos";
alter table dynamic_caracteristicas add column text_hervidor_agua VARCHAR(255) COMMENT "hervidor de agua";
alter table dynamic_caracteristicas add column text_cafetera_nespresso VARCHAR(255) COMMENT "cafetera nespresso";
alter table dynamic_caracteristicas add column text_wifi VARCHAR(255) COMMENT "wifi";
alter table dynamic_caracteristicas add column text_fibra_optica VARCHAR(255) COMMENT "fibra optica";
alter table dynamic_caracteristicas add column text_internet_por_cable VARCHAR(255) COMMENT "internet por cable";
alter table dynamic_caracteristicas add column text_internet_velocidad_lenta VARCHAR(255) COMMENT "internet velocidad lenta";
alter table dynamic_caracteristicas add column text_internet_velocidad_media VARCHAR(255) COMMENT "internet velocidad media";
alter table dynamic_caracteristicas add column text_internet_velocidad_rapida VARCHAR(255) COMMENT "internet velocidad rapida";
alter table dynamic_caracteristicas add column text_aire_acondicionado VARCHAR(255) COMMENT "aire acondicionado";
alter table dynamic_caracteristicas add column text_ventilador VARCHAR(255) COMMENT "ventilador";
alter table dynamic_caracteristicas add column text_calefacion_central VARCHAR(255) COMMENT "calefacion central";
alter table dynamic_caracteristicas add column text_bomba_aire VARCHAR(255) COMMENT "bomba aire frio/calor";
alter table dynamic_caracteristicas add column text_suelo_radiante VARCHAR(255) COMMENT "suelo radiante";
alter table dynamic_caracteristicas add column text_cine VARCHAR(255) COMMENT "cine";
alter table dynamic_caracteristicas add column text_equipo_musica VARCHAR(255) COMMENT "equipo de musica";
alter table dynamic_caracteristicas add column text_barbacoa_gas VARCHAR(255) COMMENT "barbacoa de gas";
alter table dynamic_caracteristicas add column text_bano_turco VARCHAR(255) COMMENT "baño turco";
alter table dynamic_caracteristicas add column text_billar VARCHAR(255) COMMENT "billar";
alter table dynamic_caracteristicas add column text_ping_pong VARCHAR(255) COMMENT "ping pong";
alter table dynamic_caracteristicas add column text_seguridad_piscina VARCHAR(255) COMMENT "seguridad piscina";
alter table dynamic_caracteristicas add column text_accesorios_yoga VARCHAR(255) COMMENT "accesorios yoga";
alter table dynamic_caracteristicas add column text_hosekeeping VARCHAR(255) COMMENT "hosekeeping on site";
alter table dynamic_caracteristicas add column text_trona VARCHAR(255) COMMENT "trona";
alter table dynamic_caracteristicas add column text_mascotas VARCHAR(255) COMMENT "mascotas";
alter table dynamic_caracteristicas add column text_helipuerto VARCHAR(255) COMMENT "helipuerto";
alter table dynamic_caracteristicas add column text_zona_de_bar_exterior VARCHAR(255) COMMENT "zona de bar exterior";
alter table dynamic_caracteristicas add column text_discoteca_privada VARCHAR(255) COMMENT "discoteca privada";
alter table dynamic_caracteristicas add column text_distancias_playa_arena VARCHAR(255) COMMENT "distancias playa arena";
alter table dynamic_caracteristicas add column text_distancias_playa_roca VARCHAR(255) COMMENT "distancias playa roca";
alter table dynamic_caracteristicas add column text_distancias_golf VARCHAR(255) COMMENT "distancias golf";
alter table dynamic_caracteristicas add column text_distancias_pueblo VARCHAR(255) COMMENT "distancias pueblo";
alter table dynamic_caracteristicas add column text_distancias_supermercado VARCHAR(255) COMMENT "distancias supermercado";
alter table dynamic_caracteristicas add column text_distancias_aeropuerto VARCHAR(255) COMMENT "distancias aeropuerto";



SELECT COLUMN_COMMENT FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_SCHEMA = "pisosenm_inmobiliaria_tres" 
AND TABLE_NAME = 'avantio_accomodations'
AND COLUMN_NAME LIKE "checkbox%";


# create dynamic_caracteristicas

alter table dynamic_caracteristicas add primary key (`id` , `language`);

SET SQL_SAFE_UPDATES = 0;
delete from dynamic_caracteristicas;

drop table dynamic_caracteristicas;

CREATE TABLE dynamic_caracteristicas AS
(
SELECT
checkbox_grups,
checkbox_aparcamiento,
checkbox_piscina,
checkbox_piscina_interior_climatizada,
checkbox_piscina_climatizada,
checkbox_piscina_de_agua_salada,
checkbox_tv,
checkbox_jardin,
checkbox_muebles_jardin,
checkbox_plancha,
checkbox_chimenea,
checkbox_barbacoa,
checkbox_radio,
checkbox_minibar,
checkbox_terraza,
checkbox_parcela_vallada,
checkbox_caja_seguridad,
checkbox_ascensor,
checkbox_dvd,
checkbox_balcon,
checkbox_exprimidor,
checkbox_hervidor_electrico,
checkbox_secador_pelo,
checkbox_zona_ninos,
checkbox_gimnasio,
checkbox_alarma,
checkbox_tennis,
checkbox_squash,
checkbox_paddel,
checkbox_sauna,
checkbox_jacuzzi,
checkbox_apta_discapacitados,
checkbox_nevera,
checkbox_congelador,
checkbox_lavavajillas,
checkbox_lavadora,
checkbox_secadora,
checkbox_cafetera,
checkbox_tostadora,
checkbox_microondas,
checkbox_horno,
checkbox_vajilla,
checkbox_utensilios_cocina,
checkbox_cerca_del_mar,
checkbox_acceso_directo_mar,
checkbox_batidora,
checkbox_extra_nevera,
checkbox_vinoteca,
checkbox_hervidor_agua,
checkbox_cafetera_nespresso,
checkbox_wifi,
checkbox_fibra_optica,
checkbox_internet_por_cable,
checkbox_internet_velocidad_lenta,
checkbox_internet_velocidad_media,
checkbox_internet_velocidad_rapida,
checkbox_aire_acondicionado,
checkbox_ventilador,
checkbox_calefacion_central,
checkbox_bomba_aire,
checkbox_suelo_radiante,
checkbox_cine,
checkbox_equipo_musica,
checkbox_barbacoa_gas,
checkbox_bano_turco,
checkbox_billar,
checkbox_ping_pong,
checkbox_seguridad_piscina,
checkbox_accesorios_yoga,
checkbox_hosekeeping,
checkbox_trona,
checkbox_mascotas,
checkbox_helipuerto,
checkbox_zona_de_bar_exterior,
checkbox_discoteca_privada,
checkbox_distancias_playa_arena,
checkbox_distancias_playa_roca,
checkbox_distancias_golf,
checkbox_distancias_pueblo,
checkbox_distancias_supermercado,
checkbox_distancias_aeropuerto
FROM avantio_accomodations
);

alter table dynamic_caracteristicas add column `id` int(11) COMMENT "Identificador";
alter table dynamic_caracteristicas add column `language` char(3) default 'es' COMMENT "Lenguage";
alter table dynamic_caracteristicas add column `text_title` varchar(256) COMMENT "Título";
alter table dynamic_caracteristicas add column `text_translaton` varchar(256) COMMENT "Translation";
alter table dynamic_caracteristicas add column `text_page_title` varchar(255) DEFAULT NULL COMMENT 'Título sobre el alojamiento';
alter table dynamic_caracteristicas add column `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)';
alter table dynamic_caracteristicas add column `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)';
alter table dynamic_caracteristicas add column `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 characters)';
alter table dynamic_caracteristicas add column `text_meta_robots` varchar(255) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)';
alter table dynamic_caracteristicas add column `text_meta_description` text COMMENT 'Meta Description (max 255 characters)';
alter table dynamic_caracteristicas add column `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)';
alter table dynamic_caracteristicas add column `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)';
alter table dynamic_caracteristicas add column `status` varchar(128) DEFAULT NULL;
alter table dynamic_caracteristicas add column `position` int(11) NOT NULL DEFAULT '0';


# drop table dynamic_caracteristicas;
# copy all checkbox fields to new table dynamic_caracteristicas
CREATE TABLE dynamic_caracteristicas AS
SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS 
WHERE TABLE_SCHEMA = "pisosenm_inmobiliaria_tres" 
AND TABLE_NAME = 'avantio_accomodations'
AND COLUMN_NAME LIKE "checkbox%";

alter table dynamic_caracteristicas add column `id` int(11) COMMENT "Identificador";
alter table dynamic_caracteristicas add column `language` char(3) default 'es' COMMENT "Lenguage";
alter table dynamic_caracteristicas add column `text_title` varchar(256) COMMENT "Título";
alter table dynamic_caracteristicas add column `text_translaton` varchar(256) COMMENT "Translation";
alter table dynamic_caracteristicas add column `text_page_title` varchar(255) DEFAULT NULL COMMENT 'Título sobre el alojamiento';
alter table dynamic_caracteristicas add column `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)';
alter table dynamic_caracteristicas add column `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)';
alter table dynamic_caracteristicas add column `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 characters)';
alter table dynamic_caracteristicas add column `text_meta_robots` varchar(255) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)';
alter table dynamic_caracteristicas add column `text_meta_description` text COMMENT 'Meta Description (max 255 characters)';
alter table dynamic_caracteristicas add column `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)';
alter table dynamic_caracteristicas add column `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)';
alter table dynamic_caracteristicas add column `status` varchar(128) DEFAULT NULL;
alter table dynamic_caracteristicas add column `position` int(11) NOT NULL DEFAULT '0';


# update status from es to en
SET SQL_SAFE_UPDATES = 0;
UPDATE hshv_dynamic_rooms AS target
LEFT JOIN hshv_dynamic_rooms AS source ON source.id = target.id AND source.language = "es"
set target.status = source.status
WHERE target.language = "en";

# update status from es to en
UPDATE dynamic_rooms AS target
LEFT JOIN dynamic_rooms AS source ON source.id = target.id AND source.language = "es"
set target.status = source.status
WHERE target.language = "en";

# update auto_slug and text_slug from es to en
SET SQL_SAFE_UPDATES = 0;
UPDATE hshv_dynamic_rooms AS target
LEFT JOIN hshv_dynamic_rooms AS source ON source.id = target.id AND source.language = "es"
set target.text_slug = source.text_slug,
target.auto_slug = source.auto_slug
WHERE target.language = "en";

# update auto_slug and text_slug from es to en
UPDATE dynamic_rooms AS target
LEFT JOIN dynamic_rooms AS source ON source.id = target.id AND source.language = "es"
set target.text_slug = source.text_slug,
target.auto_slug = source.auto_slug
WHERE target.language = "en";


SELECT language , text_slug , auto_slug FROM hshv_dynamic_rooms WHERE id = '12' AND language <> 'es';

select * from dynamic_pages;

SELECT distinct(id) as id 
FROM dynamic_pages 
WHERE 
( 
( text_slug = "owners" AND LENGTH(text_slug) > 0 ) 
OR 
(auto_slug="owners" AND LENGTH(auto_slug) > 0 AND LENGTH(text_slug) = 0) 
) 
AND language="en" AND status='ACTIVED';



# drop table hshv_avantio_accomodations;
select* from hshv_avantio_accomodations;

SET SQL_SAFE_UPDATES = 0;
UPDATE hshv_avantio_accomodations AS target
LEFT JOIN hshv_avantio_accomodations AS source ON source.id = target.id AND source.language = "es"
set target.text_title=                       source.text_title,
target.text_referencia=                      source.text_referencia,
target.text_userid=                          source.text_userid,
target.text_company=                         source.text_company,
target.number_companyid=                     source.number_companyid,
target.text_numero_registro_turistico=       source.text_numero_registro_turistico,
target.avantio_occupation_rules=             source.avantio_occupation_rules,
target.avantio_pricemodifiers=               source.avantio_pricemodifiers,
target.avantio_gallery=                      source.avantio_gallery,
target.dynamic_taxonomy=                     source.dynamic_taxonomy,
target.dynamic_geocountry=                   source.dynamic_geocountry,
target.dynamic_georegion=                    source.dynamic_georegion,
target.dynamic_geocity=                      source.dynamic_geocity,
target.dynamic_geolocality=                  source.dynamic_geolocality,
target.dynamic_geodistrict=                  source.dynamic_geodistrict,
target.text_geo_cp=                          source.text_geo_cp,
target.text_geo_tipo_calle=                  source.text_geo_tipo_calle,
target.text_geo_calle=                       source.text_geo_calle,
target.text_geo_numero=                      source.text_geo_numero,
target.text_geo_bloque=                      source.text_geo_bloque,
target.text_geo_puerta=                      source.text_geo_puerta,
target.text_geo_piso=                        source.text_geo_piso,
target.text_geo_latitud=                     source.text_geo_latitud,
target.text_geo_longitud=                    source.text_geo_longitud,
target.number_geo_zoom=                      source.number_geo_zoom,
target.number_unidades=                      source.number_unidades,
target.number_habitaciones=                  source.number_habitaciones,
target.number_camas_doble=                   source.number_camas_doble,
target.number_camas_individual=              source.number_camas_individual,
target.number_sofas_cama=                    source.number_sofas_cama,
target.number_sofas_cama_doble=              source.number_sofas_cama_doble,
target.number_literas=                       source.number_literas,
target.number_dormitorios_personal=          source.number_dormitorios_personal,
target.number_camas_supletorias=             source.number_camas_supletorias,
target.number_aseos=                         source.number_aseos,
target.number_banyos_banyera=                source.number_banyos_banyera,
target.number_banyos_ducha=                  source.number_banyos_ducha,
target.number_metros_cuadrados=              source.number_metros_cuadrados,
target.number_metros_cuadrados_utiles=       source.number_metros_cuadrados_utiles,
target.number_metros_cuadrados_construidos=  source.number_metros_cuadrados_construidos,
target.number_metros_cuadrados_terraza=      source.number_metros_cuadrados_terraza,
target.number_capacidad_maxima=              source.number_capacidad_maxima,
target.number_capacidad_minima=              source.number_capacidad_minima,
target.number_capacidad_sin_suplemento=      source.number_capacidad_sin_suplemento,
target.number_cocinas=                       source.number_cocinas,
target.number_fun=                           source.number_fun,
target.number_plazas_aparcamiento=           source.number_plazas_aparcamiento,
target.text_cocina_clase=                    source.text_cocina_clase,
target.text_cocina_tipo=                     source.text_cocina_tipo,
target.text_orientacion=                     source.text_orientacion,
target.text_tipo_piscina=                    source.text_tipo_piscina,
target.text_dimensiones_piscina=             source.text_dimensiones_piscina,
target.checkbox_grups=                       source.checkbox_grups,
target.checkbox_piscina=                     source.checkbox_piscina,
target.checkbox_piscina_interior_climatizada=source.checkbox_piscina_interior_climatizada,
target.checkbox_piscina_climatizada=         source.checkbox_piscina_climatizada,
target.checkbox_piscina_de_agua_salada=      source.checkbox_piscina_de_agua_salada,
target.checkbox_tv=                          source.checkbox_tv,
target.checkbox_jardin=                      source.checkbox_jardin,
target.checkbox_muebles_jardin=              source.checkbox_muebles_jardin,
target.checkbox_plancha=                     source.checkbox_plancha,
target.checkbox_chimenea=                    source.checkbox_chimenea,
target.checkbox_barbacoa=                    source.checkbox_barbacoa,
target.checkbox_radio=                       source.checkbox_radio,
target.checkbox_minibar=                     source.checkbox_minibar,
target.checkbox_terraza=                     source.checkbox_terraza,
target.checkbox_parcela_vallada=             source.checkbox_parcela_vallada,
target.checkbox_caja_seguridad=              source.checkbox_caja_seguridad,
target.checkbox_ascensor=                    source.checkbox_ascensor,
target.checkbox_dvd=                         source.checkbox_dvd,
target.checkbox_balcon=                      source.checkbox_balcon,
target.checkbox_exprimidor=                  source.checkbox_exprimidor,
target.checkbox_hervidor_electrico=          source.checkbox_hervidor_electrico,
target.checkbox_secador_pelo=                source.checkbox_secador_pelo,
target.checkbox_zona_ninos=                  source.checkbox_zona_ninos,
target.checkbox_gimnasio=                    source.checkbox_gimnasio,
target.checkbox_alarma=                      source.checkbox_alarma,
target.checkbox_tennis=                      source.checkbox_tennis,
target.checkbox_squash=                      source.checkbox_squash,
target.checkbox_paddel=                      source.checkbox_paddel,
target.checkbox_sauna=                       source.checkbox_sauna,
target.checkbox_jacuzzi=                     source.checkbox_jacuzzi,
target.checkbox_apta_discapacitados=         source.checkbox_apta_discapacitados,
target.checkbox_nevera=                      source.checkbox_nevera,
target.checkbox_congelador=                  source.checkbox_congelador,
target.checkbox_lavavajillas=                source.checkbox_lavavajillas,
target.checkbox_lavadora=                    source.checkbox_lavadora,
target.checkbox_secadora=                    source.checkbox_secadora,
target.checkbox_cafetera=                    source.checkbox_cafetera,
target.checkbox_tostadora=                   source.checkbox_tostadora,
target.checkbox_microondas=                  source.checkbox_microondas,
target.checkbox_horno=                       source.checkbox_horno,
target.checkbox_vajilla=                     source.checkbox_vajilla,
target.checkbox_utensilios_cocina=           source.checkbox_utensilios_cocina,
target.checkbox_aparcamiento=                source.checkbox_aparcamiento,
target.id_avantio=                           source.id_avantio,
target.checkbox_cerca_del_mar=               source.checkbox_cerca_del_mar,
target.checkbox_acceso_directo_mar=          source.checkbox_acceso_directo_mar,
target.checkbox_batidora=                    source.checkbox_batidora,
target.checkbox_extra_nevera=                source.checkbox_extra_nevera,
target.checkbox_vinoteca=                    source.checkbox_vinoteca,
target.checkbox_hervidor_agua=               source.checkbox_hervidor_agua,
target.checkbox_cafetera_nespresso=          source.checkbox_cafetera_nespresso,
target.checkbox_wifi=                        source.checkbox_wifi,
target.checkbox_fibra_optica=                source.checkbox_fibra_optica,
target.checkbox_internet_por_cable=          source.checkbox_internet_por_cable,
target.checkbox_internet_velocidad_lenta=    source.checkbox_internet_velocidad_lenta,
target.checkbox_internet_velocidad_media=    source.checkbox_internet_velocidad_media,
target.checkbox_internet_velocidad_rapida=   source.checkbox_internet_velocidad_rapida,
target.checkbox_aire_acondicionado=          source.checkbox_aire_acondicionado,
target.checkbox_ventilador=                  source.checkbox_ventilador,
target.checkbox_calefacion_central=          source.checkbox_calefacion_central,
target.checkbox_bomba_aire=                  source.checkbox_bomba_aire,
target.checkbox_suelo_radiante=              source.checkbox_suelo_radiante,
target.checkbox_cine=                        source.checkbox_cine,
target.checkbox_equipo_musica=               source.checkbox_equipo_musica,
target.checkbox_barbacoa_gas=                source.checkbox_barbacoa_gas,
target.checkbox_bano_turco=                  source.checkbox_bano_turco,
target.checkbox_billar=                      source.checkbox_billar,
target.checkbox_ping_pong=                   source.checkbox_ping_pong,
target.checkbox_seguridad_piscina=           source.checkbox_seguridad_piscina,
target.checkbox_accesorios_yoga=             source.checkbox_accesorios_yoga,
target.checkbox_hosekeeping=                 source.checkbox_hosekeeping,
target.checkbox_trona=                       source.checkbox_trona,
target.checkbox_mascotas=                    source.checkbox_mascotas,
target.checkbox_helipuerto=                  source.checkbox_helipuerto,
target.checkbox_zona_de_bar_exterior=        source.checkbox_zona_de_bar_exterior,
target.checkbox_discoteca_privada=           source.checkbox_discoteca_privada,
target.checkbox_distancias_playa_arena=      source.checkbox_distancias_playa_arena,
target.checkbox_distancias_playa_roca=       source.checkbox_distancias_playa_roca,
target.checkbox_distancias_golf=             source.checkbox_distancias_golf,
target.checkbox_distancias_pueblo=           source.checkbox_distancias_pueblo,
target.checkbox_distancias_supermercado=     source.checkbox_distancias_supermercado,
target.checkbox_distancias_aeropuerto=       source.checkbox_distancias_aeropuerto,
target.status=                               source.status,
target.position=                             source.position,
target.text_tipo_descuento=                  source.text_tipo_descuento
WHERE target.language = "en";



# show columns from hshv_avantio_accomodations;
# SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = "pisosenm_inmobiliaria_tres" AND TABLE_NAME = 'hshv_avantio_accomodations';

CREATE DATABASE pisosenm_inmobiliaria_tres CHARACTER SET utf8 COLLATE utf8_general_ci; 

drop database pisosenm_inmobiliaria_tres;
CREATE DATABASE pisosenm_inmobiliaria_tres CHARACTER SET utf8 COLLATE utf8_general_ci; 


use pisosenm_inmobiliaria_tres;



# select * from avantio_accomodations_pictures where uri_900x600 like "http://img.crs.itsolutions.es/fotos/2/1633583943b10a211f83efaaa1b8a328607c2a6867/%";
# assets/themes/findhouse/propiedades/propiedad_4/galeria_inmuebles/greenbay01.jpg
# UPDATE avantio_accomodations_pictures SET uri_900x600 = REPLACE(uri_900x600, 'http://tiendapisosenmanresa.com/', '');
# id , avantio_accomodations , uri_900x600  , uri_650x450  , uri_99x66  , id_avantio
# assets/themes/findhouse/propiedades/propiedad_4/galeria_inmuebles/greenbay01.jpg

SET SQL_SAFE_UPDATES = 0;
UPDATE hshv_avantio_accomodations_pictures SET uri_900x600 = REPLACE(uri_900x600, 'http://tiendapisosenmanresa.com/', '');

UPDATE hshv_avantio_accomodations_pictures SET uri_900x600 = REPLACE(uri_900x600, 'https://www.homesweethomevillas.com/', '');



UPDATE `dynamic_gallery_inmo`
INNER JOIN (SELECT `id` from `dynamic_gallery_inmo` where dynamic_gallery_inmo.image_25 = "" ) as t2 using (`id`)
SET `image_25` = "https://www.pisosenmanresa.com/nofotos.gif";


alter table dynamic_gallery_franquicia_principal add column `status` varchar(128) default "ACTIVED" COMMENT "Status"; 
alter table dynamic_gallery_franquicia_principal add column `position` int(11) COMMENT "position";


# drop database pisosenm_inmobiliaria_tres;
# CREATE DATABASE pisosenm_inmobiliaria_tres CHARACTER SET utf8 COLLATE utf8_general_ci; 
# use phpandfr_inmobiliaria_blog;
# use pisosenm_inmobiliaria_dos;
# use pisosenm_inmobiliaria_tres;
# use automoci_inmobiliaria;
# use automoci_inmobiliaria_dos;
# use temp_blog_samples;


select * from hshv_avantio_rates_acommodation where id_avantio_acommodation <> 0;
select * from hshv_avantio_accomodations where id <> 0;
select * from hshv_dynamic_rooms where id <> 0;
select * from hshv_avantio_accomodations_descriptions where avantio_accomodations <> 0;
select * from hshv_avantio_accomodations_fields where avantio_accomodations <> 0;
select * from hshv_avantio_accomodations_fields_bullets where avantio_accomodations <> 0;


select * from hshv_avantio_accomodations_pictures where hshv_dynamic_rooms <> 0; 
select * from hshv_avantio_availabilities where accommodation_id <> 0; 
select * from hshv_avantio_rates_acommodation where id_avantio_acommodation <> 0;
select * from dynamic_document_hshv where id <> 0;
select * from dynamic_plano_hshv where id <> 0;
select * from hshv_avantio_accomodations_locations where avantio_accomodations <> 0;
select * from mrbs_entry where room_id <> 0;
select * from mrbs_room where id <> 0;


SELECT count(*) as total 
from( 
SELECT a.id 
FROM avantio_accomodations a 
LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity 
LEFT JOIN avantio_rates as r on r.accommodation_id = a.id 
LEFT JOIN avantio_accomodations_extras as aae on aae.avantio_accomodations = a.id 
LEFT JOIN avantio_accomodations_locations l ON a.id = l.avantio_accomodations 
WHERE a.language = 'es' 
AND a.status = 'ACTIVED' 
UNION 
SELECT b.id 
FROM hshv_avantio_accomodations b 
LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity 
LEFT JOIN hshv_avantio_rates as rh on rh.accommodation_id = b.id 
LEFT JOIN hshv_avantio_accomodations_extras as haae on haae.avantio_accomodations = b.id 
LEFT JOIN hshv_avantio_accomodations_locations hl ON b.id = hl.avantio_accomodations 
WHERE b.language = 'es' 
AND b.status = 'ACTIVED' 
) as x;

select * from dynamic_taxonomy_geographic_language_fields_customitzation;

SELECT DISTINCT(id) 
FROM dynamic_taxonomy_geographic_language_fields_customitzation 
WHERE language <> "en" 
AND dynamic_geocountry = 1 
AND dynamic_georegion = 0 
AND dynamic_geocity = 0 
AND dynamic_geolocality = 0 
AND dynamic_geodistrict = 0;


SELECT COUNT(*) AS total 
FROM 
( 
select id AS id 
from avantio_accomodations 
WHERE dynamic_geocity = '7' 
AND LANGUAGE = 'es' 
AND status = 'ACTIVED' 
UNION 
select id AS id 
from hshv_avantio_accomodations 
WHERE dynamic_geocity = '7' 
AND LANGUAGE = 'es' 
AND status = 'ACTIVED' 
ORDER by id asc 
) AS x;



SELECT COUNT(*) AS total 
FROM 
( 
select id AS id 
from avantio_accomodations 
WHERE dynamic_geocity = '7' 
AND LANGUAGE = 'en' 
AND status = 'ACTIVED' 
UNION 
select id AS id 
from hshv_avantio_accomodations 
WHERE dynamic_geocity = '7' 
AND LANGUAGE = 'en' 
AND status = 'ACTIVED' 
ORDER by id asc 
) AS x;



SELECT a.id, a.text_title, a.text_tipo_descuento, a.text_tipo_descuento, a.dynamic_geocity , a.dynamic_georegion , a.number_habitaciones , 
a.text_geo_latitud , a.text_geo_longitud , a.number_banyos_banyera , a.number_banyos_ducha , a.number_capacidad_maxima , t.text_title as taxomy_title, 
gc.text_title as geocountry_title, gr.text_title as georegion_title, gci.text_title as geocity_title, gl.text_title as geolocality_title, 
gd.text_title as geodistrict_title , ds.auto_slug, ds.text_slug , ds.number_minprecio 
FROM avantio_accomodations a 
LEFT JOIN dynamic_rooms ds ON ds.id = a.id AND ds.language='en' 
LEFT JOIN dynamic_taxonomy t ON t.id=a.dynamic_taxonomy AND t.language='en' 
LEFT JOIN dynamic_geocountry gc ON gc.id=a.dynamic_geocountry AND gc.language='en' 
LEFT JOIN dynamic_georegion gr ON gr.id=a.dynamic_georegion AND gr.language='en' 
LEFT JOIN dynamic_geocity gci ON gci.id=a.dynamic_geocity AND gci.language='en' 
LEFT JOIN dynamic_geolocality gl ON gl.id=a.dynamic_geolocality AND gl.language='en' 
LEFT JOIN dynamic_geodistrict gd ON gd.id=a.dynamic_geodistrict AND gd.language='en' 
WHERE 1 
AND a.id IN (353029,358856,358906,359034,359040,359123) 
and a.language = 'en';


CREATE TABLE `dynamic_url_detalle` (
`id` int(11) COMMENT "Identificador",
`language` char(3) default 'es' COMMENT "Lenguage",
`text_title` varchar(256) COMMENT "Título", 
`textarea_description` text COMMENT "Descripción", 
`text_page_title` varchar(120) COMMENT "Título página", 
`text_slug` varchar(255) COMMENT "Manual slug",
`auto_slug` varchar(255) COMMENT "Automátic slug", 
`text_meta_keywords` varchar(255)  COMMENT "Meta Keywords",
`text_meta_description` varchar(255) COMMENT "Meta description", 
`text_meta_robots` varchar(45) COMMENT "Meta robots", 
`textarea_scripts_header` text COMMENT "Scripts header",
`textarea_scripts_body` text COMMENT "Scripts body", 
`status` varchar(128) default "ACTIVED" COMMENT "Status", 
`position` int(11) COMMENT "position",
PRIMARY KEY (`id`,`language`)	
)ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT='url detalle';




select * from dynamic_pages;
# select * from dynamic_rooms;

x
select * from tbl_newsletter;
SELECT language , text_slug , auto_slug FROM dynamic_pages WHERE id = 7 AND language <> 'es';
select * from dynamic_accion;
select * from dynamic_pages;


select status from avantio_accomodations;
select status from hshv_avantio_accomodations;


SELECT ds.text_title , aae.*
FROM  avantio_accomodations_extras as aae
JOIN dynamic_services as ds on aae.dynamic_services = ds.id
WHERE ds.language = "es" AND aae.avantio_accomodations = 361789;


SELECT ds.text_title , aae.checkbox_included
FROM  avantio_accomodations_extras as aae
JOIN dynamic_services as ds on aae.dynamic_services = ds.id
WHERE ds.language = "es" AND aae.avantio_accomodations = 361789;


SELECT ds.text_title , aae.checkbox_included
FROM  avantio_accomodations_extras as aae
JOIN dynamic_services as ds on aae.dynamic_services = ds.id
WHERE ds.language = "es" AND aae.avantio_accomodations = 361789
UNION
SELECT ds.text_title ,haae.checkbox_included
FROM  hshv_avantio_accomodations_extras as haae
JOIN dynamic_services as ds on haae.dynamic_services = ds.id
WHERE ds.language = "es";


SELECT ds.text_title , aae.checkbox_included , 
aae.price , aae.price_unit  , aae.price_children  , aae.price_children_unit  , aae.checkbox_pago_en_reserva ,
aae.checkbox_opcional , aae.text_type  , aae.text_parking_location  , aae.number_limit_weight
FROM  avantio_accomodations_extras as aae
JOIN dynamic_services as ds on aae.dynamic_services = ds.id
WHERE ds.language = "es" AND aae.avantio_accomodations = 361789;



SELECT ds.text_title , haae.checkbox_included , 
haae.price , haae.price_unit  , haae.price_children  , haae.price_children_unit  , haae.checkbox_pago_en_reserva ,
haae.checkbox_opcional , haae.text_type  , haae.text_parking_location  , haae.number_limit_weight
FROM  hshv_avantio_accomodations_extras as haae
JOIN dynamic_services as ds on haae.dynamic_services = ds.id
WHERE ds.language = "es" AND haae.avantio_accomodations = 2;



# create table dynamic_contacto LIKE contacto;
# alter table dynamic_contacto add column `apellido` varchar(128) comment "apellido";
alter table dynamic_contacto add column `number_metodo` tinyint(3) comment "método contacto";
alter table dynamic_contacto add column `text_page_title` varchar(75) comment "titulo pagina";
alter table dynamic_contacto add column text_slug varchar(255) comment "slug manual";
alter table dynamic_contacto add column auto_slug varchar(255) comment "slug automatico";
alter table dynamic_contacto add column text_meta_keywords varchar(255) comment "metakeywords";
alter table dynamic_contacto add column text_meta_description varchar(255) comment "metadescription";
alter table dynamic_contacto add column text_meta_robots varchar(45) comment "meta robots";
alter table dynamic_contacto add column textarea_scripts_header text comment "scripts header";
alter table dynamic_contacto add column textarea_scripts_body text comment "scripts body";
alter table dynamic_contacto add column status varchar(128) comment "status";
alter table dynamic_contacto add column position int(11) comment "position";


select * from avantio_accomodations_locations;
select * from hshv_avantio_accomodations_locations;


SELECT ds.text_title , aae.checkbox_included
FROM  avantio_accomodations_extras as aae
JOIN dynamic_services as ds on aae.dynamic_services = ds.id
WHERE ds.language = "es" AND aae.avantio_accomodations = 361789
UNION
SELECT ds.text_title ,haae.checkbox_included
FROM  hshv_avantio_accomodations_extras as haae
JOIN dynamic_services as ds on haae.dynamic_services = ds.id
WHERE ds.language = "es";


SELECT ds.text_title , aae.checkbox_included , 
aae.price , aae.price_unit  , aae.price_children  , aae.price_children_unit  , aae.checkbox_pago_en_reserva ,
aae.checkbox_opcional , aae.text_type  , aae.text_parking_location  , aae.number_limit_weight
FROM  avantio_accomodations_extras as aae
JOIN dynamic_services as ds on aae.dynamic_services = ds.id
WHERE ds.language = "es" AND aae.avantio_accomodations = 361789;


SELECT ds.text_title , haae.checkbox_included , 
haae.price , haae.price_unit  , haae.price_children  , haae.price_children_unit  , haae.checkbox_pago_en_reserva ,
haae.checkbox_opcional , haae.text_type  , haae.text_parking_location  , haae.number_limit_weight
FROM  hshv_avantio_accomodations_extras as haae
JOIN dynamic_services as ds on haae.dynamic_services = ds.id
WHERE ds.language = "es" AND haae.avantio_accomodations = 2;


select * from avantio_accomodations_locations;
select * from hshv_avantio_accomodations_locations;

select * from avantio_accomodations_nearest_places;
select * from hshv_avantio_accomodations_nearest_places;

select * from avantio_accomodations_extras order by avantio_accomodations;

SELECT count(*) as total 
from
( 
SELECT a.id 
FROM avantio_accomodations a 
LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity 
LEFT JOIN avantio_rates as r on r.accommodation_id = a.id 
LEFT JOIN avantio_accomodations_extras as aae on aae.avantio_accomodations = a.id 
WHERE a.language = 'es' AND a.status = 'ACTIVED' 
AND aae.dynamic_services = 5 and aae.checkbox_included = 'on' UNION SELECT b.id FROM hshv_avantio_accomodations b LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity LEFT JOIN hshv_avantio_rates as rh on rh.accommodation_id = b.id WHERE b.language = 'es' AND b.status = 'ACTIVED' ) as x


# select * from avantio_accomodations;
select * from dynamic_services;


SELECT a.id,a.id_avantio , a.text_title, a.number_capacidad_maxima
FROM avantio_accomodations a 
LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity 
LEFT JOIN avantio_rates as r on r.accommodation_id = a.id 
WHERE a.language = 'es' 
AND a.status = 'ACTIVED' 
AND a.number_capacidad_maxima < 8 
UNION 
SELECT b.id,b.id_avantio , b.text_title, b.number_capacidad_maxima
FROM hshv_avantio_accomodations b 
LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity 
LEFT JOIN hshv_avantio_rates as rh on rh.accommodation_id = b.id 
WHERE b.language = 'es' 
AND b.status = 'ACTIVED' 
AND b.number_capacidad_maxima < 8 
ORDER by id asc LIMIT 0, 20;


SELECT a.id , a.id_avantio , a.number_capacidad_maxima 
FROM avantio_accomodations a
LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity
LEFT JOIN avantio_rates as r on r.accommodation_id = a.id
WHERE a.language = "es" AND a.status = 'ACTIVED'
UNION
SELECT b.id , b.id_avantio , b.number_capacidad_maxima 
FROM hshv_avantio_accomodations b
LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity
LEFT JOIN hshv_avantio_rates as rh on rh.accommodation_id = b.id
WHERE b.language = "es" AND b.status = 'ACTIVED';
         
# AND a.number_capacidad_maxima < 5
# AND b.number_capacidad_maxima < 5


SELECT a.id,a.id_avantio,r.price 
FROM avantio_accomodations a 
LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity 
LEFT JOIN avantio_rates as r on r.accommodation_id = a.id 
WHERE a.language = 'es' 
AND a.status = 'ACTIVED' 
AND ( r.fecha BETWEEN '2021-10-20' AND '2021-10-21' ) 
AND ( r.price >= 1 AND r.price <= 3000 ) 
UNION 
SELECT b.id,b.id_avantio,rh.price 
FROM hshv_avantio_accomodations b 
LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity 
LEFT JOIN hshv_avantio_rates as rh on rh.accommodation_id = b.id 
WHERE b.language = 'es' 
AND b.status = 'ACTIVED' 
AND ( rh.fecha BETWEEN '2021-10-20' AND '2021-10-21' ) 
AND ( rh.price >= 1 AND rh.price <= 3000 ) 
ORDER by id;

select * from `hshv_avantio_accomodations_pictures`;
select * from `avantio_accomodations_pictures`;


CREATE DATABASE pisosenm_inmobiliaria_tres CHARACTER SET utf8 COLLATE utf8_general_ci;

SELECT count(*) as total 
from(
SELECT a.id FROM 
avantio_accomodations a 
LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity 
LEFT JOIN avantio_rates as r on r.accommodation_id = a.id 
WHERE a.language = 'es' 
AND a.status = 'ACTIVED' 
AND a.checkbox_chimenea= 1 
AND ( r.fecha BETWEEN '2021-10-19' AND '2021-10-22' ) 
AND ( r.price >= 1 AND r.price <= 10000 
) 
UNION SELECT b.id 
FROM hshv_avantio_accomodations b 
LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity 
LEFT JOIN hshv_avantio_rates as rh on rh.accommodation_id = b.id 
WHERE b.language = 'es' 
AND b.status = 'ACTIVED' 
AND a.checkbox_chimenea= 1 
AND ( rh.fecha BETWEEN '2021-10-19' AND '2021-10-22' ) 
AND ( rh.price >= 1 AND rh.price <= 10000 ) ) as x

SELECT b.id,b.id_avantio , price
FROM hshv_avantio_accomodations b 
LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity 
LEFT JOIN hshv_avantio_rates as rh on rh.accommodation_id = b.id 
WHERE b.language = 'es' 
AND b.status = 'ACTIVED' 
AND ( rh.fecha BETWEEN "2021-10-19" AND "2021-10-21" ) 
AND ( rh.price >= 1 AND rh.price <= 10000 ) 
ORDER by id;



SELECT a.id,a.id_avantio 
FROM avantio_accomodations a 
LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity 
LEFT JOIN avantio_rates as r on r.accommodation_id = a.id 
WHERE a.language = 'es' 
AND a.status = 'ACTIVED' 
AND ( r.fecha BETWEEN '2021-10-19' AND '2021-10-20' ) 
AND ( r.price >= 1 AND r.price <= 10000 ) 
UNION 
SELECT b.id,b.id_avantio 
FROM hshv_avantio_accomodations b 
LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity 
LEFT JOIN hshv_avantio_rates as rh on rh.accommodation_id = b.id 
WHERE b.language = 'es' 
AND b.status = 'ACTIVED' 
AND ( rh.fecha BETWEEN '2021-10-19' AND '2021-10-20' ) 
AND ( rh.price >= 1 AND rh.price <= 10000 ) 
ORDER by id;


SELECT a.id, a.text_title, a.text_tipo_descuento, a.text_tipo_descuento, a.dynamic_geocity , a.dynamic_georegion , a.number_habitaciones , a.text_geo_latitud , a.text_geo_longitud , a.number_banyos_banyera , a.number_banyos_ducha , a.number_capacidad_maxima , t.text_title as taxomy_title, gc.text_title as geocountry_title, gr.text_title as georegion_title, gci.text_title as geocity_title, gl.text_title as geolocality_title, gd.text_title as geodistrict_title , ds.auto_slug, ds.text_slug , ds.number_minprecio FROM avantio_accomodations a LEFT JOIN dynamic_rooms ds ON ds.id = a.id AND ds.language='es' LEFT JOIN dynamic_taxonomy t ON t.id=a.dynamic_taxonomy AND t.language='es' LEFT JOIN dynamic_geocountry gc ON gc.id=a.dynamic_geocountry AND gc.language='es' LEFT JOIN dynamic_georegion gr ON gr.id=a.dynamic_georegion AND gr.language='es' LEFT JOIN dynamic_geocity gci ON gci.id=a.dynamic_geocity AND gci.language='es' LEFT JOIN dynamic_geolocality gl ON gl.id=a.dynamic_geolocality AND gl.language='es' LEFT JOIN dynamic_geodistrict gd ON gd.id=a.dynamic_geodistrict AND gd.language='es' WHERE 1 AND a.id IN (351396,352889,353029,353602,357814,357823,357826,357831,357837,357843,358797,358811,358819,358856,358906,359034,359040,359123) and a.language = 'es' ;


SELECT a.id, a.text_title, a.text_tipo_descuento, a.text_tipo_descuento, a.dynamic_geocity , a.dynamic_georegion , a.number_habitaciones , a.text_geo_latitud , 
a.text_geo_longitud , a.number_banyos_banyera , a.number_banyos_ducha , a.number_capacidad_maxima , t.text_title as taxomy_title, gc.text_title as geocountry_title, 
gr.text_title as georegion_title, gci.text_title as geocity_title, gl.text_title as geolocality_title, gd.text_title as geodistrict_title , ds.auto_slug, ds.text_slug , 
ds.number_minprecio 
FROM avantio_accomodations a 
LEFT JOIN dynamic_rooms ds ON ds.id = a.id AND ds.language='es' 
LEFT JOIN dynamic_taxonomy t ON t.id = a.dynamic_taxonomy AND t.language='es' 
LEFT JOIN dynamic_geocountry gc ON gc.id=a.dynamic_geocountry AND gc.language='es' 
LEFT JOIN dynamic_georegion gr ON gr.id=a.dynamic_georegion AND gr.language='es' 
LEFT JOIN dynamic_geocity gci ON gci.id=a.dynamic_geocity AND gci.language='es' 
LEFT JOIN dynamic_geolocality gl ON gl.id=a.dynamic_geolocality AND gl.language='es' 
LEFT JOIN dynamic_geodistrict gd ON gd.id=a.dynamic_geodistrict AND gd.language='es' 
WHERE 1 
AND a.id IN (351396,352889,353029,353602,357814,357823,357826,357831,357837,357843,358797,358811,358819,358856,358906,359034,359040,359123) 
and a.language = 'es';
*/


/*
SELECT COUNT(*) AS total
FROM
(
select a.id AS id 
from avantio_accomodations as a
LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity
LEFT JOIN avantio_rates as r on r.accommodation_id = a.id
WHERE a.language = 'es' AND a.status = 'ACTIVED'   AND ( r.fecha BETWEEN  '2021-10-19' AND '2021-10-20' ) AND ( r.price > 1 AND r.price < 10000  )  
UNION
select b.id AS id 
from hshv_avantio_accomodations as b 
LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity
LEFT JOIN hshv_avantio_rates as rh on rh.accommodation_id = b.id
WHERE b.language = 'es' AND b.status = 'ACTIVED'   AND ( rh.fecha BETWEEN '2021-10-19' AND  '2021-10-20' ) AND ( rh.price > 1 AND rh.price < 10000  )  ORDER by id asc
) AS x



# primera consulta
SELECT count(*) as total  
from(  
	SELECT a.id 
	FROM avantio_accomodations a  
	LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity  
	LEFT JOIN avantio_rates as r on r.accommodation_id = a.id
    WHERE 1   
UNION  
	SELECT a.id 
	FROM hshv_avantio_accomodations a  
	LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity  
	LEFT JOIN hshv_avantio_rates as r on r.accommodation_id = a.id
    WHERE 1   
) as x;


# price
SELECT a.id, a.id_avantio, a.avantio_occupation_rules, a.avantio_pricemodifiers, g.number_release 
FROM avantio_accomodations a, dynamic_geolocality g 
WHERE a.dynamic_geolocality = g.id 
AND g.language = "es" AND a.id IN(1) 
UNION
SELECT b.id,a.id_avantio, b.avantio_occupation_rules, b.avantio_pricemodifiers, g.number_release 
FROM hshv_avantio_accomodations a, dynamic_geolocality g 
WHERE b.dynamic_geolocality = g.id 
AND g.language = "es" AND a.id IN(1);


SELECT accommodation_id, SUM(price) as price, MAX(capacity) as capacity 
FROM avantio_rates 
WHERE fecha BETWEEN '" . $fecha_ini . "' AND '" . $fecha_fin . "' " . $cond . " GROUP BY 1 ;


SELECT a.id , a.text_title , a.number_capacidad_maxima
	FROM avantio_accomodations a  
	LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity  
	WHERE a.number_capacidad_maxima < 4   
UNION  
	SELECT b.id , b.text_title , b.number_capacidad_maxima
	FROM hshv_avantio_accomodations b  
	LEFT JOIN dynamic_geocity as dg on dg.id = b.dynamic_geocity  
	WHERE b.number_capacidad_maxima < 4;


# primera consulta
SELECT count(*) as total  
from(  
	SELECT a.id 
	FROM avantio_accomodations a  
	LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity  
	WHERE 1   
UNION  
	SELECT a.id 
	FROM hshv_avantio_accomodations a  
	LEFT JOIN dynamic_geocity as dg on dg.id = a.dynamic_geocity  
	WHERE 1   
) as x;

select count(*) as total
from(
select a.id AS id , a.text_title , a.number_capacidad_maxima
from avantio_accomodations as a 
WHERE a.language = "es" AND a.status = 'ACTIVED' AND a.number_capacidad_maxima < 4
UNION
select b.id AS id, b.text_title , b.number_capacidad_maxima
from hshv_avantio_accomodations as b 
WHERE b.language = "es" AND b.status = 'ACTIVED' AND b.number_capacidad_maxima < 4 ORDER by id asc
) as x;


SELECT COUNT(*) AS total
FROM
(
select a.id AS id 
from avantio_accomodations as a 
WHERE a.language = "es" AND a.status = 'ACTIVED'
UNION
select b.id AS id 
from hshv_avantio_accomodations as b 
WHERE b.language = "es" AND b.status = 'ACTIVED' ORDER by id asc
) AS x;



insert into `hshv_avantio_accomodations_pictures`
values
(null,8, '' , '' , '' , 0);


SELECT `COLUMN_NAME` 
FROM `INFORMATION_SCHEMA`.`COLUMNS` 
WHERE `TABLE_SCHEMA`='pisosenm_inmobiliaria_dos' 
    AND `TABLE_NAME`='avantio_accomodations'
    AND `COLUMN_NAME` like 'checkbox%';



select * from hshv_avantio_rates_acommodation where id_avantio_acommodation <> 0;

select * from hshv_avantio_accomodations where id <> 0;
select * from hshv_dynamic_rooms where id <> 0;
select * from hshv_avantio_accomodations_descriptions where avantio_accomodations <> 0;
select * from hshv_avantio_accomodations_fields where avantio_accomodations <> 0;
select * from hshv_avantio_accomodations_fields_bullets where avantio_accomodations <> 0;
select * from hshv_avantio_accomodations_pictures where hshv_dynamic_rooms <> 0; 
select * from hshv_avantio_availabilities where accommodation_id <> 0; 
select * from hshv_avantio_rates_acommodation where id_avantio_acommodation <> 0;
select * from dynamic_document_hshv where id <> 0;
select * from dynamic_plano_hshv where id <> 0;
select * from hshv_avantio_accomodations_locations where avantio_accomodations <> 0;
select * from mrbs_entry where room_id <> 0;
select * from mrbs_room where id <> 0;

select * from hshv_avantio_rates_acommodation;


# delete all hshv
set sql_safe_updates = 0;
delete from hshv_avantio_accomodations where id <> 0;
delete from hshv_dynamic_rooms where id <> 0;
delete from hshv_avantio_accomodations_descriptions where avantio_accomodations <> 0;
delete from hshv_avantio_accomodations_fields where avantio_accomodations <> 0;
delete from hshv_avantio_accomodations_fields_bullets where avantio_accomodations <> 0;
delete from hshv_avantio_accomodations_pictures where hshv_dynamic_rooms <> 0; 
delete from hshv_avantio_availabilities where accommodation_id <> 0; 
delete from hshv_avantio_rates_acommodation where id_avantio_acommodation <> 0;
delete from dynamic_document_hshv where id <> 0;
delete from dynamic_plano_hshv where id <> 0;
delete from hshv_avantio_accomodations_locations where avantio_accomodations <> 0;
delete from mrbs_entry where room_id <> 0;
delete from mrbs_room where id <> 0;

# delete one hshv by id
delete from hshv_avantio_accomodations where id = 7;
delete from hshv_dynamic_rooms where id = 7;
delete from hshv_avantio_accomodations_descriptions where avantio_accomodations = 7;
delete from hshv_avantio_accomodations_fields where avantio_accomodations = 7;
delete from hshv_avantio_accomodations_fields_bullets where avantio_accomodations = 7;
delete from hshv_avantio_accomodations_pictures where hshv_dynamic_rooms = 7; 
delete from hshv_avantio_availabilities where accommodation_id = 7; 
delete from hshv_avantio_rates_acommodation where id_avantio_acommodation = 7;
delete from dynamic_document_hshv where id = 7;
delete from dynamic_plano_hshv where id = 7;
delete from hshv_avantio_accomodations_locations where avantio_accomodations = 7;
delete from mrbs_entry where room_id = 7;
delete from mrbs_room where id = 7;


# hshv_avantio_availabilities  no la borra

select * from hshv_avantio_accomodations;
select * from hshv_avantio_occupation_rules;
select * from hshv_avantio_occupation_rules_names;
select * from hshv_avantio_availabilities;

alter table dynamic_gallery_regiones_menu add column language char(3) comment "lenguage";
drop table `dynamic_regiones_menu`;

CREATE TABLE `dynamic_regiones_menu` (
`id` int(11) COMMENT "Identificador",
`language` char(3) default 'es' COMMENT "Lenguage",
`text_title` varchar(256) COMMENT "Título", 
`text_subtitle` varchar(256) COMMENT "Subtítulo", 
`dynamic_gallery_regiones_menu` varchar(45) COMMENT "Galería", 
#`dynamic_taxonomy_geographic_language_extra` varchar(45) COMMENT "Url", 
`dynamic_taxonomy_geographic_language_fields_customitzation` varchar(45) COMMENT "Url",
`textarea_description` text COMMENT "Descripción", 
`text_page_title` varchar(120) COMMENT "Título página", 
`text_slug` varchar(255) COMMENT "Manual slug",
`auto_slug` varchar(255) COMMENT "Automátic slug", 
`text_meta_keywords` varchar(255)  COMMENT "Meta Keywords",
`text_meta_description` varchar(255) COMMENT "Meta description", 
`text_meta_robots` varchar(45) COMMENT "Meta robots", 
`textarea_scripts_header` text COMMENT "Scripts header",
`textarea_scripts_body` text COMMENT "Scripts body", 
`status` varchar(128) default "ACTIVED" COMMENT "Status", 
`position` int(11) COMMENT "position",
PRIMARY KEY (`id`,`language`)	
)ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT='regiones menu';


CREATE TABLE `dynamic_gallery_regiones_menu` (
  `id` int(11) NOT NULL COMMENT 'identificador de las imágenes',
  `language` char(3) default 'es',
  `zipstatus` varchar(128) DEFAULT NULL,
  `text_title` varchar(255) DEFAULT NULL COMMENT 'titulo de la galería del imueble',
  `text_title_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
  `text_alt_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
  `image_1` varchar(255) DEFAULT NULL COMMENT 'imagen 1',
  `text_title_image_2` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 2',
  `text_alt_image_2` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 2',
  `image_2` varchar(255) DEFAULT NULL COMMENT 'imagen 2',
  `text_title_image_3` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 3',
  `text_alt_image_3` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 3',
  `image_3` varchar(255) DEFAULT NULL COMMENT 'imagen 3',
  `text_title_image_4` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 4',
  `text_alt_image_4` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 4',
  `image_4` varchar(255) DEFAULT NULL COMMENT 'imagen 4',
  `text_title_image_5` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 5',
  `text_alt_image_5` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 5',
  `image_5` varchar(255) DEFAULT NULL COMMENT 'imagen 5',
  `text_title_image_6` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 6',
  `text_alt_image_6` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 6',
  `image_6` varchar(255) DEFAULT NULL COMMENT 'imagen 6',
  `text_title_image_7` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 7',
  `text_alt_image_7` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 7',
  `image_7` varchar(255) DEFAULT NULL COMMENT 'imagen 7',
  `text_title_image_8` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 8',
  `text_alt_image_8` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 8',
  `image_8` varchar(255) DEFAULT NULL COMMENT 'imagen 8',
  `text_title_image_9` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 9',
  `text_alt_image_9` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 9',
  `image_9` varchar(255) DEFAULT NULL COMMENT 'imagen 9',
  `text_title_image_10` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 10',
  `text_alt_image_10` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 10',
  `image_10` varchar(255) DEFAULT NULL COMMENT 'imagen 10',
  `text_title_image_11` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 11',
  `text_alt_image_11` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 11',
  `image_11` varchar(255) DEFAULT NULL COMMENT 'imagen 11',
  `text_title_image_12` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 12',
  `text_alt_image_12` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 12',
  `image_12` varchar(255) DEFAULT NULL COMMENT 'imagen 12',
  `text_title_image_13` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 13',
  `text_alt_image_13` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 13',
  `image_13` varchar(255) DEFAULT NULL COMMENT 'imagen 13',
  `text_title_image_14` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 14',
  `text_alt_image_14` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 14',
  `image_14` varchar(255) DEFAULT NULL COMMENT 'imagen 14',
  `text_title_image_15` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 15',
  `text_alt_image_15` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 15',
  `image_15` varchar(255) DEFAULT NULL COMMENT 'imagen 15',
  `text_title_image_16` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 16',
  `text_alt_image_16` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 16',
  `image_16` varchar(255) DEFAULT NULL COMMENT 'imagen 16',
  `text_title_image_17` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 17',
  `text_alt_image_17` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 17',
  `image_17` varchar(255) DEFAULT NULL COMMENT 'imagen 17',
  `text_title_image_18` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 18',
  `text_alt_image_18` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 18',
  `image_18` varchar(255) DEFAULT NULL COMMENT 'imagen 18',
  `text_title_image_19` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 19',
  `text_alt_image_19` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 19',
  `image_19` varchar(255) DEFAULT NULL COMMENT 'imagen 19',
  `text_title_image_20` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 20',
  `text_alt_image_20` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 20',
  `image_20` varchar(255) DEFAULT NULL COMMENT 'imagen 20',
  `text_title_image_21` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 21',
  `text_alt_image_21` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 21',
  `image_21` varchar(255) DEFAULT NULL COMMENT 'imagen 21',
  `text_title_image_22` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 22',
  `text_alt_image_22` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 22',
  `image_22` varchar(255) DEFAULT NULL COMMENT 'imagen 22',
  `text_title_image_23` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 23',
  `text_alt_image_23` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 23',
  `image_23` varchar(255) DEFAULT NULL COMMENT 'imagen 23',
  `text_title_image_24` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 24',
  `text_alt_image_24` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 24',
  `image_24` varchar(255) DEFAULT NULL COMMENT 'imagen 24',
  `text_title_image_25` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 25',
  `text_alt_image_25` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 25',
  `image_25` varchar(255) DEFAULT NULL COMMENT 'imagen 25',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Galeria regiones menu';

alter table dynamic_destinos add column checkbox_menu char(3) comment "Destacado menu";


CREATE TABLE `dynamic_prereserva` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador de la pre reserva',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje pre reserva',
  `text_nombre_propiedad` varchar(255) DEFAULT NULL COMMENT 'Nombre propiedad',
  `number_id_propiedad` varchar(255) DEFAULT NULL COMMENT 'Identificador propiedad',
  `text_url_propiedad` varchar(255) DEFAULT NULL COMMENT 'Url propiedad',
  `number_precio_reserva` varchar(255) DEFAULT NULL COMMENT 'Precio pre reserva',
  `text_nombre_cliente` varchar(255) DEFAULT NULL COMMENT 'Nombre cliente',
  `text_apellido_cliente` varchar(255) DEFAULT NULL COMMENT 'Apellido cliente',
  `text_email_cliente` varchar(255) DEFAULT NULL COMMENT 'Email cliente',
  `number_telf_cliente` varchar(255) DEFAULT NULL COMMENT 'Telf cliente',
  `textarea_mensaje_cliente` text COMMENT 'Mensaje cliente',
  `number_metodo_envio` varchar(255) DEFAULT NULL COMMENT 'Método envío',
  `text_page_title` varchar(255) DEFAULT NULL COMMENT 'Título sobre el alojamiento',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 characters)',
  `text_meta_robots` varchar(255) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `text_meta_description` text COMMENT 'Meta Description (max 255 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)	
)ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT='pre reserva';

	

SELECT id,text_title 
FROM avantio_accomodations 
UNION ALL
SELECT id,text_title 
FROM hshv_avantio_accomodations; 

select * from mrbs_room;

select * from mrbs_entry;

SELECT *
FROM avantio_occupation_rules
WHERE  id = 1304138
AND checkin = 1
AND checkout = 1;

SELECT id,avantio_occupation_rules 
FROM avantio_accomodations; 

SELECT *
FROM avantio_occupation_rules
WHERE  id = 1304138;

SELECT id,avantio_occupation_rules 
FROM avantio_accomodations 
WHERE id = 353029;

SELECT min(fecha),max(fecha)
FROM avantio_occupation_rules
WHERE  id = 1304138;

SELECT fecha, status 
FROM avantio_availabilities 
WHERE accommodation_id='353029' 
AND occupation_rule_id='1304138' 
AND fecha BETWEEN '2021-10-22' AND '2021-10-29' 
AND status = 0 
ORDER BY fecha ASC ;


SELECT id,avantio_occupation_rules 
FROM avantio_accomodations 
WHERE id = 353029;

SELECT min(fecha),max(fecha)
FROM avantio_occupation_rules
WHERE  id = 1304138;

SELECT fecha, status 
FROM avantio_availabilities 
WHERE accommodation_id='353029' 
AND occupation_rule_id='1304138' 
AND fecha BETWEEN '2021-10-22' AND '2021-10-29' 
AND status = 0 
ORDER BY fecha ASC ;


SELECT min(fecha),max(fecha)
FROM avantio_occupation_rules
WHERE  id = ;

# min(fecha),max(fecha),
 
# disponibilidades
SELECT fecha, status 
FROM avantio_availabilities 
WHERE accommodation_id = 353029 
AND occupation_rule_id = 1304138
AND fecha BETWEEN "2021-10-01" AND "2021-10-29" 
AND status = 0
ORDER BY fecha ASC;

# occupation rules
SELECT fecha, checkin, checkout 
FROM avantio_occupation_rules 
WHERE id = 1304138
AND fecha BETWEEN "2021-10-01" AND "2021-10-29" 
ORDER BY fecha ASC ;

select * from avantio_accomodations;

select * from avantio_accomodations
where checkbox_chimenea = 1  and number_banyos_banyera + number_banyos_ducha >= 5
union all 
select * from hshv_avantio_accomodations
where checkbox_chimenea = 1 and number_banyos_banyera + number_banyos_ducha >= 5;

# and number_banyos_banyera
# and number_banyos_banyera + a.number_banyos_dutxa >= 5

select * from avantio_accomodations
where checkbox_chimenea = 1 and number_habitaciones = 5
union all 
select * from hshv_avantio_accomodations
where checkbox_chimenea = 1 and number_habitaciones = 5;


SELECT a.id,a.id_avantio 
FROM avantio_accomodations a WHERE 1 
AND a.multiple_taxonomy_geographic_language_carac IN(9) 
UNION ALL 
SELECT a.id,a.id_avantio 
FROM hshv_avantio_accomodations a WHERE 1 
AND a.multiple_taxonomy_geographic_language_carac IN(9) 
ORDER by id asc LIMIT 0, 20

select * from avantio_accomodations where checkbox_aire_acondicionado = 1;
select * from hshv_avantio_accomodations where checkbox_aire_acondicionado = 1;

select * from avantio_accomodations
where checkbox_aire_acondicionado = 1 and multiple_taxonomy_geographic_language_carac IN(9)
union all 
select * from hshv_avantio_accomodations
where checkbox_aire_acondicionado = 1 and multiple_taxonomy_geographic_language_carac IN(9);



select * from avantio_accomodations where checkbox_aire_acondicionado = 1;
select * from hshv_avantio_accomodations where checkbox_aire_acondicionado = 1;


select * from avantio_accomodations
where checkbox_aire_acondicionado = 1
union all 
select * from hshv_avantio_accomodations
where checkbox_aire_acondicionado = 1;


 [checkbox_aire_acondicionado] => on
    [checkbox_chimenea] => on
    [checkbox_gimnasio] => on
    [checkbox_jacuzzi] => on
    [carac_9] => on
    [checkbox_tennis] => on
    [carac_11] => on
    [checkbox_cine] => on
    [checkbox_tv] => on
    [carac_1] => on
    [carac_3] => on
    [carac_13] => on
    [checkbox_barbacoa] => on
    [checkbox_wifi] => on


select * from hshv_avantio_rates;

select * from hshv_avantio_rates
where fecha between "2010-08-01" and "2021-10-03"
and accommodation_id = 1;

# 1
insert into hshv_avantio_accomodations_nearest_places
(id, avantio_accomodations, place_type, place_name, distance, dist_unit)
VALUES
(1 , 1 , "BEACH" , "" , 0 , "KM" );

insert into hshv_avantio_accomodations_nearest_places
(id, avantio_accomodations, place_type, place_name, distance, dist_unit)
VALUES
(2 , 1 , "ROCKBEACH" , "" , 0 , "KM" );

insert into hshv_avantio_accomodations_nearest_places
(id, avantio_accomodations, place_type, place_name, distance, dist_unit)
VALUES
(3 , 1 , "TOWN" , "" , 0 , "KM" );

insert into hshv_avantio_accomodations_nearest_places
(id, avantio_accomodations, place_type, place_name, distance, dist_unit)
VALUES
(4 , 1 , "SUPERMARKET" , "" , 0 , "KM" );

insert into hshv_avantio_accomodations_nearest_places
(id, avantio_accomodations, place_type, place_name, distance, dist_unit)
VALUES
(5 , 1 , "AIRPORT" , "" , 0 , "KM" );

# 2
insert into hshv_avantio_accomodations_nearest_places
(id, avantio_accomodations, place_type, place_name, distance, dist_unit)
VALUES
(6 , 2 , "BEACH" , "" , 0 , "KM" );

insert into hshv_avantio_accomodations_nearest_places
(id, avantio_accomodations, place_type, place_name, distance, dist_unit)
VALUES
(7 , 2 , "ROCKBEACH" , "" , 0 , "KM" );

insert into hshv_avantio_accomodations_nearest_places
(id, avantio_accomodations, place_type, place_name, distance, dist_unit)
VALUES
(8 , 2 , "TOWN" , "" , 0 , "KM" );

insert into hshv_avantio_accomodations_nearest_places
(id, avantio_accomodations, place_type, place_name, distance, dist_unit)
VALUES
(9 , 10 , "SUPERMARKET" , "" , 0 , "KM" );

insert into hshv_avantio_accomodations_nearest_places
(id, avantio_accomodations, place_type, place_name, distance, dist_unit)
VALUES
(10 , 11 , "AIRPORT" , "" , 0 , "KM" );

# 3
insert into hshv_avantio_accomodations_nearest_places
(id, avantio_accomodations, place_type, place_name, distance, dist_unit)
VALUES
(11 , 3 , "BEACH" , "" , 0 , "KM" );

insert into hshv_avantio_accomodations_nearest_places
(id, avantio_accomodations, place_type, place_name, distance, dist_unit)
VALUES
(12 , 3 , "ROCKBEACH" , "" , 0 , "KM" );

insert into hshv_avantio_accomodations_nearest_places
(id, avantio_accomodations, place_type, place_name, distance, dist_unit)
VALUES
(13 , 4 , "TOWN" , "" , 0 , "KM" );

insert into hshv_avantio_accomodations_nearest_places
(id, avantio_accomodations, place_type, place_name, distance, dist_unit)
VALUES
(14 , 4 , "SUPERMARKET" , "" , 0 , "KM" );

insert into hshv_avantio_accomodations_nearest_places
(id, avantio_accomodations, place_type, place_name, distance, dist_unit)
VALUES
(15 , 5 , "AIRPORT" , "" , 0 , "KM" );


select * from avantio_accomodations_locations
UNION ALL
select * from hshv_avantio_accomodations_locations;

select * from avantio_accomodations_locations
UNION ALL
select * from hshv_avantio_accomodations_locations;

alter table hshv_avantio_accomodations_locations add column beach_dist_unit char(3) comment "Distance beach unit";
alter table hshv_avantio_accomodations_locations add column golf_dist_unit char(3) comment "Distance golf unit";
alter table hshv_avantio_accomodations_locations add column city_dist_unit char(3) comment "Distance city unit";
alter table hshv_avantio_accomodations_locations add column super_dist_unit char(3) comment "Distance super unit";
alter table hshv_avantio_accomodations_locations add column airport_dist_unit char(3) comment "Distance airport unit";
alter table hshv_avantio_accomodations_locations add column train_dist_unit char(3) comment "Distance train unit";
alter table hshv_avantio_accomodations_locations add column bus_dist_unit char(3) comment "Distance bus unit";

CREATE TABLE hshv_avantio_accomodations_locations like avantio_accomodations_locations;

insert into hshv_avantio_accomodations_locations
(
avantio_accomodations, text_title , loc_where , loc_howto , loc_desc1 , loc_desc2 , 
beach_name , beach_dist , golf_name , golf_dist , city_name , city_dist , super_name ,super_dist, airport_name, airport_dist, train_name, train_dist, bus_name, bus_dist, 
view_to_beach, view_to_swimming_pool, view_to_golf, view_to_garden, view_to_river, view_to_mountain, view_to_lake, 
first_line_beach, first_line_golf, 
position, id_avantio, 
beach_dist_unit, golf_dist_unit, city_dist_unit, super_dist_unit, airport_dist_unit, train_dist_unit, bus_dist_unit
)
values
(
1, "" , "", "" ,"" ,"",
"" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" , "" ,
""  , ""  ,""  , ""  , ""  , "" , ""  ,
""   , ""  ,
""   , ""  ,
""  , ""  ,""  , ""  , ""  , "" , "" 
);

select * from avantio_accomodations_locations
UNION ALL
select * from hshv_avantio_accomodations_locations;


update hshv_avantio_accomodations_locations set id_avantio = 0 
where avantio_accomodations in(1,2,3,4);

select * from avantio_accomodations_locations
UNION ALL
select * from hshv_avantio_accomodations_locations;


alter table hshv_avantio_accomodations_locations add column id_avantio tinyint(3) default 0 comment "Id avantio";
alter table avantio_accomodations_locations add column id_avantio tinyint(3) default 1 comment "Id avantio";


select id,number_capacidad_maxima from avantio_accomodations;
select id,number_capacidad_maxima from hshv_avantio_accomodations;


SELECT COUNT(*) AS total
FROM
(
select id AS id 
from avantio_accomodations 
WHERE LANGUAGE = "es" AND status = 'ACTIVED'
UNION ALL
select id AS id 
from hshv_avantio_accomodations 
WHERE LANGUAGE = "es" AND status = 'ACTIVED' ORDER by id asc
) AS x;


select id , id_avantio from avantio_accomodations WHERE language = "es" AND status = 'ACTIVED' 
UNION ALL
select id , id_avantio from hshv_avantio_accomodations WHERE language = "es" AND status = 'ACTIVED'; 
#ORDER by id asc LIMIT 0 , 20;


select * from avantio_accomodations;
select * from hshv_avantio_accomodations;


CREATE TABLE `dynamic_caracteristicas_iconos` (
`id` int(11) NOT NULL DEFAULT '0',
`language` char(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguagje aplicación',
`text_title` varchar(255) DEFAULT NULL COMMENT 'Listado caracteristicas iconos',
`text_grups` varchar(128)  Comment "grups",
`text_aparcamiento` varchar(128) Comment "aparcamiento",
`text_piscina_interior_climatizada` varchar(128) Comment "piscina interior climatizada",
`text_piscina_climatizada` varchar(128) Comment "piscina climatizada",
`text_piscina_de_agua_salada` varchar(128) Comment "piscina climatizada agua salada",
`text_tv` varchar(128)  Comment "tv",
`text_jardin` varchar(128)  Comment "jardin",
`text_muebles_jardin` varchar(128)  Comment "muebles jardin",
`text_plancha` varchar(128)  Comment "plancha",
`text_chimenea` varchar(128)  Comment "chimenea",
`text_barbacoa` varchar(128)  Comment "barbacoa",
`text_radio` varchar(128)  Comment "radio",
`text_minibar` varchar(128)  Comment "minibar",
`text_terraza` varchar(128)  Comment "terraza",
`text_parcela_vallada` varchar(128)  Comment "parcela vallada",
`text_caja_seguridad` varchar(128)  Comment "caja seguridad",
`text_ascensor` varchar(128)  Comment "ascensor",
`text_dvd` varchar(128)  Comment "dvd",
`text_balcon` varchar(128)  Comment "balcon",
`text_exprimidor` varchar(128)  Comment "exprimidor",
`text_hervidor_electrico` varchar(128)  Comment "hervidor heléctrico",
`text_secador_pelo` varchar(128)  Comment "secador de pelo",
`text_zona_ninos` varchar(128)  Comment "zona niños",
`text_gimnasio` varchar(128)  Comment "gimnasio",
`text_alarma` varchar(128)  Comment "alarma",
`text_tennis` varchar(128)  Comment "tenis",
`text_squash` varchar(128)  Comment "squash",
`text_paddel` varchar(128)  Comment "paddel",
`text_sauna` varchar(128)  Comment "sauna",
`text_jacuzzi` varchar(128)  Comment "jacuzzi",
`text_apta_discapacitados` varchar(128)  Comment "discapacitados",
`text_nevera` varchar(128)  Comment "nevera",
`text_congelador` varchar(128)  Comment "congelador",
`text_lavavajillas` varchar(128)  Comment "lavavajillas",
`text_lavadora` varchar(128)  Comment "lavadora",
`text_secadora` varchar(128)  Comment "secadora",
`text_cafetera` varchar(128)  Comment "cafetera",
`text_tostadora` varchar(128)  Comment "tostadora",
`text_microondas` varchar(128)  Comment "microondas",
`text_horno` varchar(128)  Comment "horno" ,
`text_vajilla` varchar(128)  Comment "vajilla",
`text_utensilios_cocina` varchar(128)  Comment "utensilios cocina",
`text_cerca_del_mar` varchar(128) Comment "cerca del mar",
`text_acceso_directo_mar` varchar(128) Comment "acceso directo al mar",
`text_batidora` varchar(128) Comment "batidora",
`text_extra_nevera` varchar(128) Comment "extra nevera",
`text_vinoteca` varchar(128) Comment "vinoteca",
`text_hervidor_agua` varchar(128) Comment "hervidor agua",
`text_cafetera_nespresso` varchar(128) Comment "cafetera nespresso",
`text_wifi` varchar(128) Comment "wifi",
`text_fibra_optica` varchar(128) Comment "fibra optica",
`text_internet_por_cable` varchar(128) Comment "internet por cable",
`text_internet_velocidad_lenta` varchar(128) Comment "internet velocidad lenta",
`text_internet_velocidad_media` varchar(128) Comment "internet velocidad media",
`text_internet_velocidad_rapida` varchar(128) Comment "internet velocidad rapida",
`text_aire_acondicionado` varchar(128) Comment "aire acondicionado",
`text_ventilador` varchar(128) Comment "ventilador",
`text_calefacion_central` varchar(128) Comment "calefaccion central",
`text_bomba_aire` varchar(128) Comment "bomba aire",
`text_suelo_radiante` varchar(128) Comment "suelo radiante",
`text_cine` varchar(128) Comment "cine",
`text_equipo_musica` varchar(128) Comment "equipo música",
`text_barbacoa_gas` varchar(128) Comment "barbacoa gas",
`text_bano_turco` varchar(128) Comment "baño turco",
`text_billar` varchar(128) Comment "billar",
`text_ping_pong` varchar(128) Comment "ping pong",
`text_seguridad_piscina` varchar(128) Comment "seguridad piscina",
`text_accesorios_yoga` varchar(128) Comment "accesorios yoga",
`text_hosekeeping` varchar(128) Comment "house keepping",
`text_trona` varchar(128) Comment "trona",
`text_mascotas` varchar(128) Comment "mascotas",
`text_helipuerto` varchar(128) Comment "helipuerto",
`text_zona_de_bar_exterior` varchar(128) Comment "zona de bar exterior",
`text_discoteca_privada` varchar(128) Comment "discoteca privada",
`text_distancias_playa_arena` varchar(128) Comment "distancia playa arena",
`text_distancias_playa_roca` varchar(128) Comment "distancia playa roca",
`text_distancias_golf` varchar(128) Comment "distancia golf",
`text_distancias_pueblo` varchar(128) Comment "ditancia pueblo",
`text_distancias_supermercado` varchar(128) Comment "distancia supermercado",
`text_distancias_aeropuerto` varchar(128) Comment "distancia aropuerto",
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT = 'Características iconos';



checkbox_grups tinyint(4) UN 
checkbox_aparcamiento tinyint(4)
checkbox_piscina_interior_climatizada tinyint(4) 
checkbox_piscina_climatizada tinyint(4) 
checkbox_piscina_de_agua_salada tinyint(4) 
checkbox_tv tinyint(4) UN 
checkbox_jardin tinyint(4) UN 
checkbox_muebles_jardin tinyint(4) UN 
checkbox_plancha tinyint(4) UN 
checkbox_chimenea tinyint(4) UN 
checkbox_barbacoa tinyint(4) UN 
checkbox_radio tinyint(4) UN 
checkbox_minibar tinyint(4) UN 
checkbox_terraza tinyint(4) UN 
checkbox_parcela_vallada tinyint(4) UN 
checkbox_caja_seguridad tinyint(4) UN 
checkbox_ascensor tinyint(4) UN 
checkbox_dvd tinyint(4) UN 
checkbox_balcon tinyint(4) UN 
checkbox_exprimidor tinyint(4) UN 
checkbox_hervidor_electrico tinyint(4) UN 
checkbox_secador_pelo tinyint(4) UN 
checkbox_zona_ninos tinyint(4) UN 
checkbox_gimnasio tinyint(4) UN 
checkbox_alarma tinyint(4) UN 
checkbox_tennis tinyint(4) UN 
checkbox_squash tinyint(4) UN 
checkbox_paddel tinyint(4) UN 
checkbox_sauna tinyint(4) UN 
checkbox_jacuzzi tinyint(4) UN 
checkbox_apta_discapacitados tinyint(4) UN 
checkbox_nevera tinyint(4) UN 
checkbox_congelador tinyint(4) UN 
checkbox_lavavajillas tinyint(4) UN 
checkbox_lavadora tinyint(4) UN 
checkbox_secadora tinyint(4) UN 
checkbox_cafetera tinyint(4) UN 
checkbox_tostadora tinyint(4) UN 
checkbox_microondas tinyint(4) UN 
checkbox_horno tinyint(4) UN 
checkbox_vajilla tinyint(4) UN 
checkbox_utensilios_cocina tinyint(4) UN
checkbox_cerca_del_mar tinyint(4) 
checkbox_acceso_directo_mar tinyint(4) 
checkbox_batidora tinyint(4) 
checkbox_extra_nevera tinyint(4) 
checkbox_vinoteca tinyint(4) 
checkbox_hervidor_agua tinyint(4) 
checkbox_cafetera_nespresso tinyint(4) 
checkbox_wifi tinyint(4) 
checkbox_fibra_optica tinyint(4) 
checkbox_internet_por_cable tinyint(4) 
checkbox_internet_velocidad_lenta tinyint(4) 
checkbox_internet_velocidad_media tinyint(4) 
checkbox_internet_velocidad_rapida tinyint(4) 
checkbox_aire_acondicionado tinyint(4) 
checkbox_ventilador tinyint(4) 
checkbox_calefacion_central tinyint(4) 
checkbox_bomba_aire tinyint(4) 
checkbox_suelo_radiante tinyint(4) 
checkbox_cine tinyint(4) 
checkbox_equipo_musica tinyint(4) 
checkbox_barbacoa_gas tinyint(4) 
checkbox_bano_turco tinyint(4) 
checkbox_billar tinyint(4) 
checkbox_ping_pong tinyint(4) 
checkbox_seguridad_piscina tinyint(4) 
checkbox_accesorios_yoga tinyint(4) 
checkbox_hosekeeping tinyint(4) 
checkbox_trona tinyint(4) 
checkbox_mascotas tinyint(4) 
checkbox_helipuerto tinyint(4) 
checkbox_zona_de_bar_exterior tinyint(4) 
checkbox_discoteca_privada tinyint(4) 
checkbox_distancias_playa_arena tinyint(4) 
checkbox_distancias_playa_roca tinyint(4) 
checkbox_distancias_golf tinyint(4) 
checkbox_distancias_pueblo tinyint(4) 
checkbox_distancias_supermercado tinyint(4) 
checkbox_distancias_aeropuerto tinyint(4)
*/



/*

select * from avantio_accomodations;
select * from avantio_accomodations_locations;

alter table avantio_accomodations drop column number_capacidad_real;
alter table hshv_avantio_accomodations drop column number_capacidad_real;

alter table avantio_accomodations add column number_capacidad_real int(11) comment "Capacidad real";
alter table hshv_avantio_accomodations add column number_capacidad_real int(11) comment "Capacidad real";

alter table avantio_accomodations drop column text_tipo_desuento;
alter table hshv_avantio_accomodations drop column text_tipo_desuento;

alter table avantio_accomodations add column text_tipo_descuento varchar(255) comment "tipo descuento";
alter table hshv_avantio_accomodations add column text_tipo_descuento varchar(255) comment "tipo descuento";

SELECT * FROM avantio_occupation_rules;

SELECT * FROM avantio_availabilities 
where accommodation_id IN(357837);


SELECT a.id, a.avantio_occupation_rules, a.avantio_pricemodifiers, g.number_release 
FROM avantio_accomodations a, dynamic_geolocality g 
WHERE a.dynamic_geolocality = g.id 
AND g.language='es'
AND a.id IN(357837);


alter table hshv_avantio_accomodations add column text_cert_energetico varchar(255) comment "certificado energetico";

SELECT a.id, a.id_avantio, a.avantio_occupation_rules, a.avantio_pricemodifiers, g.number_release 
FROM avantio_accomodations a, dynamic_geolocality g 
WHERE a.dynamic_geolocality = g.id 
AND g.language = 'es' 
AND a.id IN (357837,359034,352889,357843,358856,351396,357814,357830,358819,358906,359040,353029,353602,357815,357823,357826,357831,358797,358811) 
UNION ALL 
SELECT a.id,a.id_avantio, a.avantio_occupation_rules, a.avantio_pricemodifiers, g.number_release 
FROM hshv_avantio_accomodations a, dynamic_geolocality g 
WHERE a.dynamic_geolocality = g.id 
AND g.language = 'es' 
AND a.id IN (357837,359034,352889,357843,358856,351396,357814,357830,358819,358906,359040,353029,353602,357815,357823,357826,357831,358797,358811) ;

select * from hshv_avantio_accomodations;

SELECT a.id, a.id_avantio, a.avantio_occupation_rules, a.avantio_pricemodifiers, g.number_release 
FROM avantio_accomodations a, dynamic_geolocality g 
WHERE a.dynamic_geolocality = g.id 
AND g.language='es'
AND a.id IN(357837,359034,352889,357843,358856,1)
UNION ALL
SELECT a.id,a.id_avantio, a.avantio_occupation_rules, a.avantio_pricemodifiers, g.number_release 
FROM hshv_avantio_accomodations a, dynamic_geolocality g 
WHERE a.dynamic_geolocality = g.id 
AND g.language='es'
AND a.id IN(357837,359034,352889,357843,358856,1);

# bora house
SELECT a.id, a.avantio_occupation_rules, a.avantio_pricemodifiers, g.number_release 
FROM avantio_accomodations a, dynamic_geolocality g 
WHERE a.dynamic_geolocality = g.id 
AND g.language='es'
AND a.id IN(357837);

# occupation rules cogemos el status minimo
SELECT fecha , accommodation_id , MIN(status) as status 
FROM avantio_availabilities 
WHERE accommodation_id = 357837 
AND occupation_rule_id = 1299472 
AND fecha BETWEEN "2021-09-22"  AND "2021-09-23" GROUP BY 1;

# occupation rules  min minimo noches
SELECT id, MIN(min_nights) min_nights 
FROM avantio_occupation_rules 
WHERE id IN (1299472) 
AND fecha BETWEEN "2021-09-22" AND "2021-09-23" 
GROUP BY 1;

# occupation rules checkin
SELECT id, checkin 
FROM avantio_occupation_rules 
WHERE id IN (1299472) 
AND fecha = "2021-09-22" GROUP BY 1;


# occupation rules checkout
SELECT id, checkout 
FROM avantio_occupation_rules 
WHERE id IN (1299472) 
AND fecha = "2021-09-23" GROUP BY 1;

select * 
from avantio_pricemodifiers
where id = 1620345;

SELECT * 
FROM avantio_pricemodifiers 
WHERE fecha BETWEEN "2021-09-22" AND "2021-09-23" 
AND ( 
( min_nights < 31 AND min_nights > 0 )  OR  max_nights > 31 ) 
AND id IN (1620345,1624380);


SELECT accommodation_id, fecha, price, capacity 
FROM avantio_rates 
WHERE fecha BETWEEN "2021-09-22" AND "2021-09-23"
AND accommodation_id IN(357837);

alter table avantio_accomodations add column number_geo_zoom int(11) comment "zoom google"; 

SELECT id, MIN(min_nights) min_nights 
FROM avantio_occupation_rules 
WHERE id IN (1299472) 
AND fecha BETWEEN "2021-09-01" AND "2021-09-31" 
GROUP BY 1;


# availabilities cogemos la primera noche
SELECT fecha , accommodation_id , MIN(status) as status 
FROM avantio_availabilities 
WHERE accommodation_id = 357837 
AND occupation_rule_id = 1299472 
AND fecha BETWEEN "2021-09-01"  AND "2021-09-31" GROUP BY 1;

SELECT accommodation_id , MIN(status) as status 
FROM avantio_availabilities 
WHERE accommodation_id = 357837 
AND occupation_rule_id = 1299472 
AND fecha BETWEEN ""  AND "" GROUP BY 1;


# avantio_occupation_rules avantio_pricemodifiers number_release union
SELECT a.id, a.avantio_occupation_rules, a.avantio_pricemodifiers, g.number_release 
FROM avantio_accomodations a, dynamic_geolocality g 
WHERE a.dynamic_geolocality = g.id 
AND g.language='es'
AND a.id IN(357837,359034,352889,357843,358856,1)
UNION ALL
SELECT a.id, a.avantio_occupation_rules, a.avantio_pricemodifiers, g.number_release 
FROM hshv_avantio_accomodations a, dynamic_geolocality g 
WHERE a.dynamic_geolocality = g.id 
AND g.language='es'
AND a.id IN(357837,359034,352889,357843,358856,1);


# avantio_occupation_rules avantio_pricemodifiers number_release
SELECT a.id, a.avantio_occupation_rules, a.avantio_pricemodifiers, g.number_release 
FROM avantio_accomodations a, dynamic_geolocality g 
WHERE a.dynamic_geolocality = g.id 
AND g.language='es'
AND a.id IN(357837,359034,352889,357843,358856);

select number_capacidad_maxima from avantio_accomodations;

SELECT count(*) as total from
( 
SELECT a.id 
FROM avantio_accomodations a WHERE 1 
AND a.checkbox_wifi= 1 
AND a.multiple_taxonomy_geographic_language_carac IN('1') 
UNION ALL 
SELECT a.id FROM hshv_avantio_accomodations a WHERE 1 
AND a.checkbox_wifi= 1 
AND a.multiple_taxonomy_geographic_language_carac IN('1') 
) as x;


select * from avantio_accomodations;
select * from hshv_avantio_accomodations;

# avantio y nuestras status and position

alter table avantio_accomodations add column status varchar(128) default "ACTIVED" comment "estado";
alter table hshv_avantio_accomodations add column status varchar(128) default "ACTIVED" comment "estado";

alter table avantio_accomodations add column position int(11) default "0" comment "posicion";
alter table hshv_avantio_accomodations add column position int(11) default "0" comment "posicion";

SET SQL_SAFE_UPDATES = 0;

update avantio_accomodations set status = "ACTIVED";
update hshv_avantio_accomodations set status = "ACTIVED";


# certificado energético
alter table avantio_accomodations_fields add column text_cert_energetico varchar(255) default 0 comment "cert. energético";
alter table hshv_avantio_accomodations_fields add column text_cert_energetico varchar(255) default 0 comment "cert. energético";

select * from avantio_accomodations_fields_bullets;

select * from hshv_avantio_accomodations;
select * from hshv_dynamic_rooms;

# hshv_dynamic_rooms
select * from hshv_avantio_accomodations;
select * from hshv_dynamic_rooms;

select * from hshv_avantio_accomodations;
select * from hshv_dynamic_rooms;

alter table hshv_avantio_accomodations add column id_avantio tinyint(3) default 0 comment "Id avantio";

# nearest places
alter table avantio_accomodations_nearest_places add column dist_unit char(3) comment "Distance unit";
alter table hshv_avantio_accomodations_nearest_places add column dist_unit char(3) comment "Distance unit";
# locations
select * from avantio_accomodations_locations;
alter table avantio_accomodations_locations add column beach_dist_unit char(3) comment "Distance beach unit";
alter table hshv_avantio_accomodations_locations add column beach_dist_unit char(3) comment "Distance beach unit";
alter table avantio_accomodations_locations add column golf_dist_unit char(3) comment "Distance golf unit";
alter table hshv_avantio_accomodations_locations add column golf_dist_unit char(3) comment "Distance golf unit";
alter table avantio_accomodations_locations add column city_dist_unit char(3) comment "Distance city unit";
alter table hshv_avantio_accomodations_locations add column city_dist_unit char(3) comment "Distance city unit";
alter table avantio_accomodations_locations add column super_dist_unit char(3) comment "Distance super unit";
alter table hshv_avantio_accomodations_locations add column super_dist_unit char(3) comment "Distance super unit";
alter table avantio_accomodations_locations add column airport_dist_unit char(3) comment "Distance airport unit";
alter table hshv_avantio_accomodations_locations add column airport_dist_unit char(3) comment "Distance airport unit";
alter table avantio_accomodations_locations add column train_dist_unit char(3) comment "Distance train unit";
alter table hshv_avantio_accomodations_locations add column train_dist_unit char(3) comment "Distance train unit";
alter table avantio_accomodations_locations add column bus_dist_unit char(3) comment "Distance bus unit";
alter table hshv_avantio_accomodations_locations add column bus_dist_unit char(3) comment "Distance bus unit";

# add m km to locations
# fields column textarea_informacion_adicional and text_youtube
alter table avantio_accomodations_fields_bullets add column textarea_informacion_adicional text comment "Información adicional";
alter table hshv_avantio_accomodations_fields_bullets add column textarea_informacion_adicional text comment "Información adicional";
alter table `avantio_accomodations_fields` drop column textarea_informacion_adicional;
alter table `hshv_avantio_accomodations_fields` drop column textarea_informacion_adicional;
alter table `avantio_accomodations_fields` add column `text_youtube` varchar(255) DEFAULT '' COMMENT 'Link youtube';
alter table `hshv_avantio_accomodations_fields` add column `text_youtube` varchar(255) DEFAULT '' COMMENT 'Link youtube';

alter table `dynamic_experiencias` add column `language` char(3) DEFAULT 'es' COMMENT 'Lenguagje aplicación';


CREATE TABLE `dynamic_experiencia` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Subtítulo Cabecera',
  `text_subtitle` varchar(255) DEFAULT NULL COMMENT 'Título Cabecera',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Seccion experiéncia';



CREATE TABLE `dynamic_experiencias` (
  `id` int(11) NOT NULL DEFAULT '0',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título Cabecera',
  `text_title_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
  `text_alt_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
  `image_1` varchar(255) DEFAULT NULL COMMENT 'imagen 1',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Experiéncias';



SELECT *,
6371 * 1000 * acos(cos(radians(38.877259513437)) * cos(radians(1.2917292779098)) * cos(radians(text_geo_longitud) - radians(1.2917292779098)) + sin(radians(38.877259513437)) * sin(radians(text_geo_latitud))) as distancia
FROM avantio_accomodations
WHERE language= "es" AND id <> 357837
ORDER BY distancia desc
LIMIT 0,6;
        
select * from avantio_accomodations_nearest_places order by avantio_accomodations asc;

show full columns from avantio_accomodations;

# select principal tables
select * from avantio_accomodations;
select * from hshv_avantio_accomodations;
select * from dynamic_rooms;
select * from hshv_dynamic_rooms;

# buscador lateral servicios count
SELECT count(*) as total
from(
SELECT a.id  FROM avantio_accomodations a  WHERE 1  
AND a.checkbox_wifi= 1 
UNION ALL
SELECT a.id  FROM hshv_avantio_accomodations a  WHERE 1  
AND a.checkbox_wifi= 1
) as x;

# buscador lateral servicios
SELECT a.id  FROM avantio_accomodations a  WHERE 1  
AND a.checkbox_wifi= 1 
UNION ALL
SELECT a.id  FROM hshv_avantio_accomodations a  WHERE 1  
AND a.checkbox_wifi= 1;

SELECT count(a.id) as total  
FROM avantio_accomodations a  
WHERE 1  
AND a.checkbox_wifi= 1 
ORDER BY a.dynamic_geodistrict;

# buscador lateral servicios


SELECT a.id 
FROM avantio_accomodations a  
WHERE 1  
AND a.checkbox_wifi = 'on'  AND a.checkbox_barbacoa='on'  ORDER BY a.dynamic_geodistrict;

select * from avantio_accomodations;
select * from avantio_accomodations_locations;

# select * from avantio_accomodations_extras;
# select * from dynamic_services;


select * 
from avantio_accomodations_extras as aae
LEFT JOIN dynamic_services as ds on ds.id = aae; 
where ds.language = "es"


SELECT * from avantio_accomodations
LEFT JOIN avantio_

SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation; 


SELECT COUNT(*) AS total
FROM
(
select id AS id 
from avantio_accomodations 
WHERE dynamic_geocity = 7 
AND LANGUAGE = "es"
UNION ALL
select id AS id 
from hshv_avantio_accomodations 
WHERE dynamic_geocity = 7 
AND LANGUAGE = "es" ORDER by id asc
) AS x;




select id,id_avantio 
from avantio_accomodations 
WHERE dynamic_geocity = 7 
AND LANGUAGE = "es"
UNION ALL
select id,id_avantio 
from hshv_avantio_accomodations 
WHERE dynamic_geocity = 7 
AND LANGUAGE = "es" ORDER by id asc LIMIT 0, 4;


SELECT id FROM
(
SELECT id 
)

SELECT * FROM dynamic_geocity;

SELECT id FROM avantio_accomodations WHERE dynamic_geocity = 7 AND LANGUAGE = "es";

select id from avantio_accomodations WHERE LANGUAGE = "es";
select id from hshv_avantio_accomodations WHERE LANGUAGE = "es";

# show apartments avantio
(SELECT a.*, t.text_title as taxomy_title, gc.text_title as geocountry_title, gr.text_title as georegion_title, 
gci.text_title as geocity_title, gl.text_title as geolocality_title, gd.text_title as geodistrict_title , ds.auto_slug, ds.text_slug , 
number_minprecio
FROM avantio_accomodations a 
LEFT JOIN dynamic_rooms ds ON ds.id = a.id  AND ds.language='es'
LEFT JOIN dynamic_taxonomy t ON t.id=a.dynamic_taxonomy AND t.language='es'
LEFT JOIN dynamic_geocountry gc ON gc.id=a.dynamic_geocountry AND gc.language='es'
LEFT JOIN dynamic_georegion gr ON gr.id=a.dynamic_georegion AND gr.language='es'
LEFT JOIN dynamic_geocity gci ON gci.id=a.dynamic_geocity AND gci.language='es'
LEFT JOIN dynamic_geolocality gl ON gl.id=a.dynamic_geolocality AND gl.language='es'
LEFT JOIN dynamic_geodistrict gd ON gd.id=a.dynamic_geodistrict AND gd.language='es'
WHERE 1  
AND a.id IN (351396,352889,353029,353602,357814,357815,357823,357826,357830,357831,357837,357843,358797,358811,358819,358856,358906,359034,359040,359123)
AND a.language = "es")
UNION ALL
# show apartments geo
(SELECT a.*, t.text_title as taxomy_title, gc.text_title as geocountry_title, gr.text_title as georegion_title, gci.text_title as geocity_title, 
gl.text_title as geolocality_title, gd.text_title as geodistrict_title, ds.auto_slug, ds.text_slug , number_minprecio 
FROM hshv_avantio_accomodations a 
RIGHT JOIN hshv_dynamic_rooms ds ON ds.id = a.id AND ds.LANGUAGE = "es" 
LEFT JOIN dynamic_taxonomy t ON t.id=a.dynamic_taxonomy AND t.language='es' 
LEFT JOIN dynamic_geocountry gc ON gc.id=a.dynamic_geocountry AND gc.language='es' 
LEFT JOIN dynamic_georegion gr ON gr.id=a.dynamic_georegion AND gr.language='es' 
LEFT JOIN dynamic_geocity gci ON gci.id=a.dynamic_geocity AND gci.language='es' 
LEFT JOIN dynamic_geolocality gl ON gl.id=a.dynamic_geolocality AND gl.language='es' 
LEFT JOIN dynamic_geodistrict gd ON gd.id=a.dynamic_geodistrict AND gd.language='es' 
WHERE 1 
AND a.id IN (1)
AND a.language = "es" order by id asc LIMIT 10);
#  limit 10


# hshv avantio
select * from hshv_avantio_accomodations;
select * from hshv_avantio_accomodations_descriptions;
select * from hshv_avantio_accomodations_extras;
select * from hshv_avantio_accomodations_fields;
select * from hshv_avantio_accomodations_fields_bullets;
select * from hshv_avantio_accomodations_locations;
select * from hshv_avantio_accomodations_nearest_places;
select * from hshv_avantio_accomodations_pictures;
select * from hshv_avantio_availabilities;
select * from hshv_avantio_occupation_rules;
select * from hshv_avantio_occupation_rules_names;
select * from hshv_avantio_occupation_rules_partials;
select * from hshv_avantio_pricemodifiers;
select * from hshv_avantio_rates;
select * from hshv_avantio_rates_acommodation;
select * from hshv_avantio_rates_names;
select * from hshv_dynamic_rooms;
select * from hshv_dynamic_services;
select * from hshv_ecb_exchange;
select * from dynamic_document_hshv;
select * from dynamic_plano_hshv;

# mrbs
select * from mrbs_area;
select * from mrbs_entry;
select * from mrbs_room;


# set sql safe updates
SET SQL_SAFE_UPDATES = 0;
select number_minprecio from dynamic_rooms;

SELECT * FROM hshv_avantio_accomodations_pictures WHERE 1  AND hshv_dynamic_rooms IN (1)  ORDER BY 1;

# delete hshv
delete from hshv_avantio_accomodations where id <> 0;
delete from hshv_dynamic_rooms where id <> 0;
delete from hshv_avantio_accomodations_descriptions where avantio_accomodations <> 0;
delete from hshv_avantio_accomodations_fields where avantio_accomodations <> 0;
delete from hshv_avantio_accomodations_fields_bullets where avantio_accomodations <> 0;
delete from hshv_avantio_accomodations_pictures where hshv_dynamic_rooms <> 0; 
delete from hshv_avantio_availabilities where accommodation_id <> 0; 
delete from hshv_avantio_rates_acommodation where id_avantio_acommodation <> 0;
delete from dynamic_document_hshv where id <> 0;
delete from dynamic_plano_hshv where id <> 0;
delete from hshv_avantio_accomodations_locations where avantio_accomodations <> 0;


 # delete mrbs
delete from mrbs_room where id <> 0;
delete from mrbs_entry where id <> 0;



# avantio
select * from avantio_accomodations;
select * from avantio_accomodations_descriptions;
select * from avantio_accomodations_descriptions_tmp;
select * from avantio_accomodations_extras;
select * from avantio_accomodations_extras_tmp;
select * from avantio_accomodations_fields;
select * from avantio_accomodations_fields_bullets;
select * from avantio_accomodations_locations;
select * from avantio_accomodations_locations_tmp;
select * from avantio_accomodations_nearest_places;
select * from avantio_accomodations_nearest_places_tmp;
select * from avantio_accomodations_pictures;
select * from avantio_accomodations_pictures_tmp;
select * from avantio_accomodations_tmp;
select * from avantio_availabilities;
select * from avantio_availabilities_tmp;
select * from avantio_inmovilla;
select * from avantio_occupation_rules;
select * from avantio_occupation_rules_names;
select * from avantio_occupation_rules_tmp;
select * from avantio_pricemodifiers;
select * from avantio_pricemodifiers_tmp;
select * from avantio_pricemodifiers_tmp_vlad;
select * from avantio_rates;
select * from avantio_rates_acommodation;
select * from avantio_rates_names;
select * from avantio_rates_tmp;
select * from avantio_report;
select * from avantio_report_historico;


# borra contenido
SET SQL_SAFE_UPDATES = 0;
delete from hshv_avantio_accomodations_fields where avantio_accomodations <> 0;
delete from hshv_avantio_accomodations_fields_bullets where avantio_accomodations <> 0;
delete from hshv_avantio_accomodations_pictures where hshv_dynamic_rooms <> 0;
delete from hshv_avantio_availabilities where accommodation_id <> 0;
delete from hshv_avantio_rates_acommodation where id_avantio_acommodation <> 0;
delete from hshv_dynamic_rooms where id <> 0;
delete from hshv_avantio_accomodations where id <> 0;
delete from hshv_avantio_accomodations_descriptions where avantio_accomodations <> 0;
delete from hshv_avantio_occupation_rules where id <> 0;
delete from mrbs_entry where room_id <> 0;
delete from mrbs_room where id <> 0;


# copy from dynamic_gallery_inmo to dynamic_gallery_inmo_dos
INSERT INTO dynamic_gallery_inmo_dos SELECT * FROM dynamic_gallery_inmo;

INSERT INTO dynamic_gallery_inmo_dos SELECT * FROM dynamic_gallery_inmo;

CREATE TABLE `dynamic_document` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
  `document_documento1` varchar(255) DEFAULT NULL COMMENT 'Documento 1',
  `text_titulo1` varchar(75) DEFAULT NULL COMMENT 'Título 1',
   PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Documentos';


CREATE TABLE `dynamic_document_hshv` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
  `document_documento1` varchar(255) DEFAULT NULL COMMENT 'Documento 1',
  `text_titulo1` varchar(75) DEFAULT NULL COMMENT 'Título 1',
   PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Documentos';



CREATE TABLE `dynamic_document` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
  `document_documento1` varchar(255) DEFAULT NULL COMMENT 'Documento 1',
  `text_titulo1` varchar(75) DEFAULT NULL COMMENT 'Título 1',
   PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Documentos';


CREATE TABLE `dynamic_document_hshv` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
  `document_documento1` varchar(255) DEFAULT NULL COMMENT 'Documento 1',
  `text_titulo1` varchar(75) DEFAULT NULL COMMENT 'Título 1',
   PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Documentos';

select * from hshv_avantio_accomodations_fields;
select * from hshv_avantio_accomodations_fields_bullets;
# hshv_avantio_accomodations inserta contenido
select * from hshv_avantio_accomodations_pictures;
select * from hshv_avantio_availabilities;
select * from hshv_avantio_rates_acommodation;
select * from hshv_dynamic_rooms;

# hshv_avantio_accomodations no inserta contenido
# delete from hshv_avantio_accomodations where id <> 0;
select * from hshv_avantio_accomodations;
select * from hshv_avantio_accomodations_descriptions;
select * from hshv_avantio_occupation_rules;
select * from hshv_avantio_rates;
select * from mrbs_entry;
select * from mrbs_room;
select * from hshv_avantio_accomodations_fields;
select * from hshv_avantio_accomodations_fields_bullets;

# borra contenido
SET SQL_SAFE_UPDATES = 0;
delete from hshv_avantio_accomodations_fields where avantio_accomodations <> 0;
delete from hshv_avantio_accomodations_fields_bullets where avantio_accomodations <> 0;
delete from hshv_avantio_accomodations_pictures where hshv_dynamic_rooms <> 0;
delete from hshv_avantio_availabilities where accommodation_id <> 0;
delete from hshv_avantio_rates_acommodation where id_avantio_acommodation <> 0;
delete from hshv_dynamic_rooms where id <> 0;
delete from hshv_avantio_accomodations where id <> 0;
delete from hshv_avantio_accomodations_descriptions where avantio_accomodations <> 0;
delete from hshv_avantio_occupation_rules where id <> 0;
delete from mrbs_entry where room_id <> 0;
delete from mrbs_room where id <> 0;
*/


/*
# alter table `avantio_accomodations` add column `number_dormitorios_personal`int(11);

INSERT INTO dynamic_colecciones_home SELECT * FROM dynamic_colecciones;
SELECT * FROM dynamic_colecciones_home;
SELECT * FROM avantio_accomodations;

CREATE TABLE dynamic_colecciones_home LIKE dynamic_colecciones;

select * 
from dynamic_taxonomy_geographic_language_fields_customitzation
where  dynamic_geocountry = 0
AND dynamic_georegion = 0
AND dynamic_geocity = 0
AND dynamic_geolocality = 0 
AND dynamic_geodistrict = 0;

select dynamic_url_extra_parametro 
from dynamic_taxonomy_geographic_language_fields_customitzation as dtglfc 
where  dtglfc.id = 39;

alter table avantio_accomodations add column `dynamic_taxonomy_geographic_language_fields_customitzation` int(11) comment "extra field";
alter table hshv_avantio_accomodations add column `dynamic_taxonomy_geographic_language_fields_customitzation` int(11) comment "extra field";

alter table avantio_accomodations drop column `dynamic_taxonomy_geographic_language_extra`;
alter table hshv_avantio_accomodations drop column `dynamic_taxonomy_geographic_language_extra`;

SET SQL_SAFE_UPDATES = 0;
update hshv_avantio_accomodations set dynamic_taxonomy_geographic_language_fields_customitzation = ( 
select DISTINCT(id) from dynamic_taxonomy_geographic_language_extra order by rand() limit 1
);


# actualizamos todas las filas dynamic_taxonomy_geographic_language_extra
# select DISTINCT(id) from dynamic_taxonomy_geographic_language_extra;
SET SQL_SAFE_UPDATES = 0;
update avantio_accomodations set dynamic_taxonomy_geographic_language_fields_customitzation = ( 
select DISTINCT(id) from dynamic_taxonomy_geographic_language_extra order by rand() limit 1
);


SET SQL_SAFE_UPDATES = 0;
update avantio_accomodations set dynamic_taxonomy_geographic_language_fields_customitzation = ( 
select DISTINCT(id) from dynamic_taxonomy_geographic_language_extra order by rand() limit 1
)
where avantio_accomodations.id IN(55213,55631);

select * from avantio_accomodations
where avantio_accomodations.id IN(55213,55631); 

update avantio_accomodations set dynamic_taxonomy_geographic_language_fields_customitzation =  
(
select dtglfc.id 
from avantio_accomodations as aa
join dynamic_taxonomy_geographic_language_fields_customitzation as dtglfc on aa.dynamic_geolocality = dtglfc.dynamic_geolocality
);


# 1.- saber de que tipo es  

# contador total

select count(*) as total 
from avantio_accomodations
where dynamic_geolocality = 13;

# query to show geolocalities of colecciones
select dtglfc.dynamic_url_extra_parametro 
from dynamic_colecciones as d
join dynamic_taxonomy_geographic_language_fields_customitzation as dtglfc on dtglfc.id = d.dynamic_taxonomy_geographic_language_fields_customitzation
where d.id = 1;

# query to show geolocalities of destinos
select dtglfc.dynamic_geocountry , dtglfc.dynamic_georegion , dtglfc.dynamic_geocity , dtglfc.dynamic_geolocality , dtglfc.dynamic_geodistrict , dtglfc.dynamic_url_extra_parametro 
from dynamic_destinos as d
join dynamic_taxonomy_geographic_language_fields_customitzation as dtglfc on dtglfc.id = d.dynamic_taxonomy_geographic_language_fields_customitzation
where d.id = 1;


# 1.- todos los campos geolocality iguales
# 2.- coger todos los ids de 
# 3.- 


select dtglfc.id 
from avantio_accomodations as aa
join dynamic_taxonomy_geographic_language_fields_customitzation as dtglfc on aa.dynamic_geolocality = dtglfc.dynamic_geolocality;


update avantio_accomodations set dynamic_taxonomy_geographic_language_fields_customitzation =  
(
select dtglfc.id 
from avantio_accomodations as aa
join dynamic_taxonomy_geographic_language_fields_customitzation as dtglfc on aa.dynamic_geolocality = dtglfc.dynamic_geolocality
);

select * 
from avantio_accomodations as aa
where aa.dynamic_taxonomy_geographic_language_fields_customitzation
 
alter table avantio_accomodations add column `dynamic_taxonomy_geographic_language_fields_customitzation` int(11) comment "extra field";
alter table hshv_avantio_accomodations add column `dynamic_taxonomy_geographic_language_fields_customitzation` int(11) comment "extra field";

alter table avantio_accomodations drop column `dynamic_taxonomy_geographic_language_extra`;
alter table hshv_avantio_accomodations drop column `dynamic_taxonomy_geographic_language_extra`;



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


#alter table dynamic_agente_inmobiliario add column text_email varchar(20) comment 'Dirección de email' default null;

#INSERT INTO `newsletter` (`id`, `langauge`, `status`, `email`) VALUES (1, 'es', 'ACTIVED', 'davidberruezo@davidberruezo.com');

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
  
CREATE TABLE `dynamic_gallery_inmo_dos` (
  `id` int(11) NOT NULL COMMENT 'identificador de las imágenes',
  `language` varchar(3) NOT NULL COMMENT 'lenguage',
  `zipstatus` varchar(128) DEFAULT NULL,
  `text_title` varchar(255) DEFAULT NULL COMMENT 'titulo de la galería del imueble',
  `dynamic_agencia` varchar(45) COMMENT 'agencia',
  `dynamic_usuario` varchar(45) COMMENT 'usuario',
  `text_title_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
  `text_alt_image_1` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 1',
  `image_1` varchar(255) DEFAULT NULL COMMENT 'imagen 1',
  `text_title_image_2` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 2',
  `text_alt_image_2` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 2',
  `image_2` varchar(255) DEFAULT NULL COMMENT 'imagen 2',
  `text_title_image_3` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 3',
  `text_alt_image_3` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 3',
  `image_3` varchar(255) DEFAULT NULL COMMENT 'imagen 3',
  `text_title_image_4` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 4',
  `text_alt_image_4` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 4',
  `image_4` varchar(255) DEFAULT NULL COMMENT 'imagen 4',
  `text_title_image_5` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 5',
  `text_alt_image_5` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 5',
  `image_5` varchar(255) DEFAULT NULL COMMENT 'imagen 5',
  `text_title_image_6` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 6',
  `text_alt_image_6` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 6',
  `image_6` varchar(255) DEFAULT NULL COMMENT 'imagen 6',
  `text_title_image_7` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 7',
  `text_alt_image_7` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 7',
  `image_7` varchar(255) DEFAULT NULL COMMENT 'imagen 7',
  `text_title_image_8` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 8',
  `text_alt_image_8` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 8',
  `image_8` varchar(255) DEFAULT NULL COMMENT 'imagen 8',
  `text_title_image_9` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 9',
  `text_alt_image_9` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 9',
  `image_9` varchar(255) DEFAULT NULL COMMENT 'imagen 9',
  `text_title_image_10` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 10',
  `text_alt_image_10` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 10',
  `image_10` varchar(255) DEFAULT NULL COMMENT 'imagen 10',
  `text_title_image_11` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 11',
  `text_alt_image_11` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 11',
  `image_11` varchar(255) DEFAULT NULL COMMENT 'imagen 11',
  `text_title_image_12` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 12',
  `text_alt_image_12` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 12',
  `image_12` varchar(255) DEFAULT NULL COMMENT 'imagen 12',
  `text_title_image_13` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 13',
  `text_alt_image_13` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 13',
  `image_13` varchar(255) DEFAULT NULL COMMENT 'imagen 13',
  `text_title_image_14` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 14',
  `text_alt_image_14` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 14',
  `image_14` varchar(255) DEFAULT NULL COMMENT 'imagen 14',
  `text_title_image_15` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 15',
  `text_alt_image_15` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 15',
  `image_15` varchar(255) DEFAULT NULL COMMENT 'imagen 15',
  `text_title_image_16` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 16',
  `text_alt_image_16` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 16',
  `image_16` varchar(255) DEFAULT NULL COMMENT 'imagen 16',
  `text_title_image_17` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 17',
  `text_alt_image_17` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 17',
  `image_17` varchar(255) DEFAULT NULL COMMENT 'imagen 17',
  `text_title_image_18` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 18',
  `text_alt_image_18` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 18',
  `image_18` varchar(255) DEFAULT NULL COMMENT 'imagen 18',
  `text_title_image_19` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 19',
  `text_alt_image_19` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 19',
  `image_19` varchar(255) DEFAULT NULL COMMENT 'imagen 19',
  `text_title_image_20` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 20',
  `text_alt_image_20` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 20',
  `image_20` varchar(255) DEFAULT NULL COMMENT 'imagen 20',
  `text_title_image_21` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 21',
  `text_alt_image_21` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 21',
  `image_21` varchar(255) DEFAULT NULL COMMENT 'imagen 21',
  `text_title_image_22` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 22',
  `text_alt_image_22` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 22',
  `image_22` varchar(255) DEFAULT NULL COMMENT 'imagen 22',
  `text_title_image_23` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 23',
  `text_alt_image_23` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 23',
  `image_23` varchar(255) DEFAULT NULL COMMENT 'imagen 23',
  `text_title_image_24` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 24',
  `text_alt_image_24` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 24',
  `image_24` varchar(255) DEFAULT NULL COMMENT 'imagen 24',
  `text_title_image_25` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 25',
  `text_alt_image_25` varchar(255) DEFAULT NULL COMMENT 'titulo imagen 25',
  `image_25` varchar(255) DEFAULT NULL COMMENT 'imagen 25',
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id` , `language`)
) ENGINE=MyISAM CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Galeria inmuebles';  
  
  
   */