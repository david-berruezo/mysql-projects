use pisosenm_inmobiliaria;
set SQL_SAFE_UPDATES = 0;

################################################# checkbox destacado home | detalle inmobiliaria propiedades ####################################################
UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 and checkbox_oferta = 1 group by `dynamic_agencia` order by `id` limit 9) as t2 using (`id`)
SET `checkbox_destacado_home` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 and checkbox_oferta = 1 group by `dynamic_agencia` order by `id` limit 9) as t2 using (`id`)
SET `checkbox_destacado_home` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 3 and checkbox_oferta = 1 group by `dynamic_agencia` order by `id` limit 9) as t2 using (`id`)
SET `checkbox_destacado_home` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 and checkbox_oferta = 1 group by `dynamic_agencia` order by `id` limit 9) as t2 using (`id`)
SET `checkbox_destacado_home` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 5 and checkbox_oferta = 1 group by `dynamic_agencia` order by `id` limit 9) as t2 using (`id`)
SET `checkbox_destacado_home` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 6 and checkbox_oferta = 1 group by `dynamic_agencia` order by `id` limit 9) as t2 using (`id`)
SET `checkbox_destacado_home` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 7 and checkbox_oferta = 1 group by `dynamic_agencia` order by `id` limit 9) as t2 using (`id`)
SET `checkbox_destacado_home` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 8 and checkbox_oferta = 1 group by `dynamic_agencia` order by `id` limit 9) as t2 using (`id`)
SET `checkbox_destacado_home` = 1;


################################################# checkbox destacado oferta menu propiedades ####################################################

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 and checkbox_oferta = 1 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 and checkbox_oferta = 1 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 3 and checkbox_oferta = 1 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 and checkbox_oferta = 1 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 5 and checkbox_oferta = 1 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 6 and checkbox_oferta = 1 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 7 and checkbox_oferta = 1 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 8 and checkbox_oferta = 1 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

######################################## SINO HAY EN CHECKBOX_DESTACADO_OFERTA  COMO CHECKBOX_OFERTA SE PONE SE PONE SIN CHECKBOX_OFERTA = 0 #################################################### #

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 and checkbox_oferta = 0 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 and checkbox_oferta = 0 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 3 and checkbox_oferta = 0 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 and checkbox_oferta = 0 group by `dynamic_agencia` order by `id` limit 12) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 5 and checkbox_oferta = 0 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 6 and checkbox_oferta = 0 group by `dynamic_agencia` order by `id` limit 12) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 7 and checkbox_oferta = 0 group by `dynamic_agencia` order by `id` limit 12) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 8 and checkbox_oferta = 0 group by `dynamic_agencia` order by `id` limit 12) as t2 using (`id`)
SET `checkbox_destacado_oferta` = 1;

# ################################################ checkbox_oferta ################################################### #

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 group by `dynamic_agencia` order by `id` limit 12) as t2 using (`id`)
SET `checkbox_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 group by `dynamic_agencia` order by `id` limit 12) as t2 using (`id`)
SET `checkbox_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 3 group by `dynamic_agencia` order by `id` limit 12) as t2 using (`id`)
SET `checkbox_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 group by `dynamic_agencia` order by `id` limit 12) as t2 using (`id`)
SET `checkbox_oferta` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 5 group by `dynamic_agencia` order by `id` limit 12) as t2 using (`id`)
SET `checkbox_oferta` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 6 group by `dynamic_agencia` order by `id` limit 12) as t2 using (`id`)
SET `checkbox_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 7 group by `dynamic_agencia` order by `id` limit 12) as t2 using (`id`)
SET `checkbox_oferta` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 8 group by `dynamic_agencia` order by `id` limit 12) as t2 using (`id`)
SET `checkbox_oferta` = 1;


# ################################################ checkbox_destacado_detalle_inmobiliaria_lateral ################################################### #

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 and checkbox_oferta = 0 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_detalle_inmobiliaria_lateral` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 2 and checkbox_oferta = 0 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_detalle_inmobiliaria_lateral` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 3 and checkbox_oferta = 0 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_detalle_inmobiliaria_lateral` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 4 and checkbox_oferta = 0 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_detalle_inmobiliaria_lateral` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 5 and checkbox_oferta = 0 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_detalle_inmobiliaria_lateral` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 6 and checkbox_oferta = 0 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_detalle_inmobiliaria_lateral` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 7 and checkbox_oferta = 0 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_detalle_inmobiliaria_lateral` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 8 and checkbox_oferta = 0 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_detalle_inmobiliaria_lateral` = 1;




####################################################################### checkbox_destacado_detalle_propiedad ############################################################## 

UPDATE `dynamic_rooms`
INNER JOIN (select ds.id from dynamic_rooms as ds where dynamic_taxonomy_group = 1 group by ds.dynamic_geolocality,ds.dynamic_agencia order by dynamic_geolocality asc ) as t2 using (`id`)
SET `checkbox_destacado_detalle_propiedad` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (select ds.id from dynamic_rooms as ds where dynamic_taxonomy_group = 2 group by ds.dynamic_geolocality,ds.dynamic_agencia order by dynamic_geolocality asc ) as t2 using (`id`)
SET `checkbox_destacado_detalle_propiedad` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (select ds.id from dynamic_rooms as ds where dynamic_taxonomy_group = 3 group by ds.dynamic_geolocality,ds.dynamic_agencia order by dynamic_geolocality asc ) as t2 using (`id`)
SET `checkbox_destacado_detalle_propiedad` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (select ds.id from dynamic_rooms as ds where dynamic_taxonomy_group = 4 group by ds.dynamic_geolocality,ds.dynamic_agencia order by dynamic_geolocality asc ) as t2 using (`id`)
SET `checkbox_destacado_detalle_propiedad` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (select ds.id from dynamic_rooms as ds where dynamic_taxonomy_group = 5 group by ds.dynamic_geolocality,ds.dynamic_agencia order by dynamic_geolocality asc ) as t2 using (`id`)
SET `checkbox_destacado_detalle_propiedad` = 1;


UPDATE `dynamic_rooms`
INNER JOIN (select ds.id from dynamic_rooms as ds where dynamic_taxonomy_group = 6 group by ds.dynamic_geolocality,ds.dynamic_agencia order by dynamic_geolocality asc ) as t2 using (`id`)
SET `checkbox_destacado_detalle_propiedad` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (select ds.id from dynamic_rooms as ds where dynamic_taxonomy_group = 7 group by ds.dynamic_geolocality,ds.dynamic_agencia order by dynamic_geolocality asc ) as t2 using (`id`)
SET `checkbox_destacado_detalle_propiedad` = 1;

UPDATE `dynamic_rooms`
INNER JOIN (select ds.id from dynamic_rooms as ds where dynamic_taxonomy_group = 8 group by ds.dynamic_geolocality,ds.dynamic_agencia order by dynamic_geolocality asc ) as t2 using (`id`)
SET `checkbox_destacado_detalle_propiedad` = 1;



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




/*
UPDATE `dynamic_rooms`
INNER JOIN (SELECT DISTINCT(`dynamic_agencia`),`id` from `dynamic_rooms` where dynamic_taxonomy_group = 1 and checkbox_oferta = 0 group by `dynamic_agencia` order by `id` limit 22) as t2 using (`id`)
SET `checkbox_destacado_detalle_inmobiliaria_lateral` = 1;


SELECT ds.dynamic_taxonomy_group,ds.dynamic_geolocality,ds.dynamic_agencia
from dynamic_rooms as ds
group by ds.dynamic_geolocality
order by ds.dynamic_taxonomy_group asc;
*/


/*
SELECT ds.dynamic_taxonomy_group,ds.dynamic_geolocality,dynamic_agencia
from dynamic_rooms as ds
# where dynamic_agencia = 6
group by ds.dynamic_geolocality
# ,ds.text_title,ds.dynamic_agencia
order by ds.dynamic_taxonomy_group asc;
*/


/*
set SQL_SAFE_UPDATES = 0;
update dynamic_rooms set checkbox_destacado = 0 where id <> -1; 
update dynamic_rooms set checkbox_destacado_home = 0 where id <> -1;
update dynamic_rooms set checkbox_destacado_provincia = 0 where id <> -1;
update dynamic_rooms set checkbox_destacado_taxonomia = 0 where id <> -1;
update dynamic_rooms set checkbox_destacado_listado_inmobiliarias = 0 where id <> -1;
update dynamic_rooms set checkbox_destacado_detalle_inmobiliaria = 0 where id <> -1;
update dynamic_rooms set checkbox_destacado_listado_blog = 0 where id <> -1;
update dynamic_rooms set checkbox_destacado_detalle_blog = 0 where id <> -1;
update dynamic_rooms set checkbox_destacado_detalle_propiedad = 0 where id <> -1;
update dynamic_rooms set checkbox_vistos_recientemente_provincia = 0 where id <> -1;
update dynamic_rooms set checkbox_vistos_recientemente_taxonomia = 0 where id <> -1;
update dynamic_rooms set checkbox_vistos_recientemente_listado_inmobiliarias = 0 where id <> -1;
update dynamic_rooms set checkbox_vistos_recientemente_detalle_inmobiliarias = 0 where id <> -1;
update dynamic_rooms set checkbox_vistos_recientemente_listado_blog = 0 where id <> -1;
update dynamic_rooms set checkbox_vistos_recientemente_detalle_blog = 0 where id <> -1;
update dynamic_rooms set checkbox_vistos_recientemente_detalle_propiedad = 0 where id <> -1;
update dynamic_rooms set checkbox_destacado_oferta = 0 where id <> -1;
update dynamic_rooms set checkbox_oferta= 0 where id <> -1;
update dynamic_rooms set checkbox_destacado_newsletter= 0 where id <> -1;
*/

