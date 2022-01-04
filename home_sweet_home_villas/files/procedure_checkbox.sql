BEGIN
  ########################## `checkbox_destacado_oferta` ##############################
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
select * from dynamic_rooms where dynamic_taxonomy_group = 2 limit 10;
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

UPDATE `dynamic_rooms`
INNER JOIN (select `id` from `dynamic_rooms` where text_title like 'local%') as t2 using (`id`)
SET `dynamic_taxonomy` = 4 , `dynamic_taxonomy_group` = 4 ;

# segundo cambio
UPDATE `dynamic_rooms`
INNER JOIN (select `id` from `dynamic_rooms` where text_title like '%local%') as t2 using (`id`)
SET `dynamic_taxonomy` = 4 , `dynamic_taxonomy_group` = 4 ;

END