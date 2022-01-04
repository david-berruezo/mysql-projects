use pisosenm_inmobiliaria;
SET SQL_SAFE_UPDATES = 0;
	
/*
# updates por publicidad
select * from dynamic_rooms where dynamic_taxonomy_group = 4;
select * from dynamic_rooms where dynamic_taxonomy_group = 6;
select * from dynamic_rooms where dynamic_taxonomy_group = 7;
select * from dynamic_rooms where dynamic_taxonomy_group = 8;

# locales
update dynamic_rooms set checkbox_oferta = 1, checkbox_destacado_home = 1 where dynamic_rooms.id = 269;

# naves
update dynamic_rooms set checkbox_oferta = 1, checkbox_destacado_home = 1 where dynamic_rooms.id = 1549;
update dynamic_rooms set checkbox_oferta = 1, checkbox_destacado_home = 1 where dynamic_rooms.id = 1780;

# edificios
update dynamic_rooms set checkbox_oferta = 1, checkbox_destacado_home = 1 where dynamic_rooms.id = 447;
update dynamic_rooms set checkbox_oferta = 1, checkbox_destacado_home = 1 where dynamic_rooms.id = 600;
update dynamic_rooms set checkbox_oferta = 1, checkbox_destacado_home = 1 where dynamic_rooms.id = 4972;

# agentes inmobiliarios

update dynamic_rooms set dynamic_agente_inmobiliario = 63 where dynamic_rooms.id < 2300 and dynamic_agencia = 6;
update dynamic_rooms set dynamic_agente_inmobiliario = 40 where dynamic_rooms.id >= 2300 and dynamic_agencia = 6;
select * from dynamic_rooms where dynamic_agencia = 6;

# consultamos por fecha los ultimos particulares
select * from 

update `avantio_inmovilla` set `dynamic_agencia` = 0 where `dynamic_agencia` = "";
update `avantio_inmovilla` set `dynamic_usuario` = 0 where `dynamic_usuario` = "";

# inseramos algun usuario creeado online
insert into users (`id`,`username`,`password`,`email`,`grupo`, `status`, `roleId`) 
values (272, 'nuevo_usuario_272','0f4952cb452479356747e33fbe25343ef4662862','perevidalg@gmail.com','no-usuario','ACTIVED',5);

# dynamic_usuario
insert into dynamic_usuario (`id`,`language`,`text_title`,`text_firstname`,`text_lastname`, `number_telf`, `number_telf_mobil` , `text_direccion` , `textarea_description` ,`text_page_title` , `text_slug` , `auto_slug` , `text_meta_keywords` , `text_meta_description` , `textarea_scripts_header` , `textarea_scripts_body` ,`text_meta_robots` , `status`, `position`) 
values (272, 'es','nuevo_usuario_272','Pere','Vidal','932176757','615231533', 'vallirana', 'descripcion', 'nuevo_usuario_272', '', 'nuevo_usuario_272' , 'nuevo_usuario_272' , 'nuevo_usuario_272' , '', '', 'INDEX,FOLLOW', 'ACTIVED',4);

# insertamos mensajes
insert into message (`id_indice`,`id`,`id2`,`title`,`user1`, `user2`, `message`,`timestamp`,`user1read`,`user2read`) 
values (17, 18,1,'Nuevo mensaje de Pedro Linus',272,6,'me gustaría si es posible visitar el inmueble, sin embargo antes de saber me gustaría saber si dispone de ascensor.
',1608388811,'no','no');

# select * from dynamic_rooms where id <> -1;

SET  @num := 0;
UPDATE your_table SET id = @num := (@num+1);
ALTER TABLE your_table AUTO_INCREMENT =1;
 
# select ds.id,ds.text_title,ds.text_ref from dynamic_rooms as ds,dynamic_rooms as ds_dos
# where ds.text_ref = ds_dos.text_ref and ds.id <> ds_dos.id; 
# ds.id < ds_dos.id AND 
# AND ds.dynamic_agencia = ds_dos.dynamic_agencia

# Borrado de tablas de productos
# delete from dynamic_rooms where id <> -1;
# delete from avantio_inmovilla where id <> -1;
# delete from dynamic_gallery_inmo where id <> -1;
DELETE user_one
FROM users as user_one 
JOIN 
(
	SELECT usr.id 
	from users as usr
	where usr.username
	like "ivanpozo%"
) AS usr
WHERE user_one.id >= usr.id;

# Consulta de tablas de productos
# select * from dynamic_rooms where id <> -1;
# select * from avantio_inmovilla where id <> -1;
# select *  from dynamic_gallery_inmo where id <> -1;
# Otras Consultas
# select * from dynamic_agencia;
# select * from users;

# chequeo info de usuarios y mensajes
select * from users where id <> -1;
select * from dynamic_usuario where id <> -1;
select * from message where id <> -1;

# ponemos los contadores a 1
ALTER TABLE users AUTO_INCREMENT = 1;
ALTER TABLE dynamic_usuario AUTO_INCREMENT = 1;
ALTER TABLE dynamic_rooms AUTO_INCREMENT = 1;
ALTER TABLE dynamic_gallery_inmo AUTO_INCREMENT = 1;
ALTER TABLE avantio_inmovilla AUTO_INCREMENT = 1;


# prueba de consultas complejas
# id, text_title
1, franquiciado
2, usuario
3, no_usuario
6, consultin
7, ainmobles
8, tothabitatge
9, grupsolnou
10, vitalinmobles
11, fedisainmobles
22, layvak
23, besthouse
24, pisosafys
25, vicmoba
26, macrofincas
27, bsninmobles
28, besthousemanresa
29, inllobsa
30, installat
31, vidainmo
32, bonavista
34, bolsadelavivienda
38, lesclaus
41, finsetinmobles
42, lmfinques

# inmovilla
6,9,22,23,24,25,26,27,28,29,30,31,32 
# pisos.com
8, 10, 38,41, 42, 34
# otros
11,7

# otras queries
# select id,text_title from dynamic_agencia;
# select id,text_title from dynamic_taxonomy_group;
# use pisosenm_inmobiliaria;
# select * from dynamic_rooms;
# use pisosenm_inmobiliaria_dos;
# select * from dynamic_rooms;


# registros repetidos con las cantidades totales == 36 + 24 + ... 

select ds.id, ds.text_title,dynamic_agencia,ds.text_ref,COUNT(ds.text_ref) 
from dynamic_rooms ds
group by ds.text_ref
having count(ds.text_ref) > 1;

# registros repetidos
# borramos registros no iguales a la tabla dynamic_rooms de la tabla dynamic_gallery_inmo 
delete ds2
from (select id from dynamic_rooms union select id from dynamic_gallery_inmo) ds
left join dynamic_rooms ds1 on ds.id = ds1.id
left join dynamic_gallery_inmo ds2 on ds.id = ds2.id
where not (ds1.id <=> ds2.id);

# registros repetidos
# borramos registros no iguales a la tabla dynamic_rooms de la tabla avantio_inmovilla
delete ds2
from (select id from dynamic_rooms union select id from avantio_inmovilla) ds
left join dynamic_rooms ds1 on ds.id = ds1.id
left join avantio_inmovilla ds2 on ds.id = ds2.id
where not (ds1.id <=> ds2.id);
*/

# borramos habitaciones con text_title = "titulo1"
delete from dynamic_rooms where text_title = "titulo1";
 
# update dynamic_agente_inmobiliario
update dynamic_rooms set dynamic_agente_inmobiliario = 63 where dynamic_rooms.id < 2300 and dynamic_agencia = 6;
#update dynamic_rooms set dynamic_agente_inmobiliario = 40 where dynamic_rooms.id >= 2300 and dynamic_agencia = 6;

# update publicidad
update dynamic_rooms set checkbox_destacado_home = 0 where id <> -1;
update dynamic_rooms set checkbox_destacado_home_agente = 0 where id <> -1;


# borrado de registros duplicados
select ds.id,ds.text_title,ds.text_ref,ds.dynamic_agencia,ds.dynamic_accion,ds.dynamic_geolocality,ds.dynamic_taxonomy_group,ds.number_precioinmo,ds.number_precioalq 
from dynamic_rooms as ds
inner join dynamic_rooms as ds_dos
where ds.id < ds_dos.id AND ds.text_ref = ds_dos.text_ref AND ds.dynamic_agencia = ds_dos.dynamic_agencia;


delete ds from dynamic_rooms ds
inner join dynamic_rooms ds_dos
where ds.id < ds_dos.id and ds.text_ref = ds_dos.text_ref AND ds.dynamic_agencia = ds_dos.dynamic_agencia;


select ds.id,ds.text_title,ds.text_ref,ds.dynamic_agencia,ds.dynamic_accion,ds.dynamic_geolocality,ds.dynamic_taxonomy_group,ds.number_precioinmo,ds.number_precioalq 
from dynamic_rooms as ds
inner join dynamic_rooms as ds_dos
where ds.id < ds_dos.id AND ds.text_ref = ds_dos.text_ref AND ds.dynamic_agencia = ds_dos.dynamic_agencia;

# update dynamic_rooms status ACTIVED
update dynamic_rooms set status = "ACTIVED";

# update number_habdobles and number_habitaciones
update avantio_inmovilla 
inner join (select id from dynamic_rooms as ds where ds.dynamic_taxonomy_group = 1 OR  ds.dynamic_taxonomy_group = 2 ) as t2 using (id)  
set number_habitaciones = 1 where number_habitaciones = 0;

update avantio_inmovilla 
inner join (select id from dynamic_rooms as ds where ds.dynamic_taxonomy_group = 1 OR  ds.dynamic_taxonomy_group = 2 ) as t2 using (id)  
set number_habdobles = 1 where number_habdobles = 0;

# update number_banyos and number_aseos 
update avantio_inmovilla 
inner join (select id from dynamic_rooms as ds where ds.dynamic_taxonomy_group = 1 OR  ds.dynamic_taxonomy_group = 2 ) as t2 using (id)  
set number_banyos = 1 where number_banyos = 0;

update avantio_inmovilla 
inner join (select id from dynamic_rooms as ds where ds.dynamic_taxonomy_group = 1 OR  ds.dynamic_taxonomy_group = 2 ) as t2 using (id)  
set number_aseos = 1 where number_aseos = 0;

# text_tipo_bano parquet,cerámica,gres,percelana,baldosa,pvc
update avantio_inmovilla set text_tipo_bano = 'baldosa' where text_tipo_bano = "" OR text_tipo_bano = "No se sabe";

# text_tipo_cocina Cocina Office - Equipada
update avantio_inmovilla set text_tipo_cocina = 'Cocina Office - Equipada' where text_tipo_cocina = "" OR text_tipo_cocina = "No se sabe";

# text_tipo_fachada Ladrillo
update avantio_inmovilla set text_tipo_fachada = 'Ladrillo' where text_tipo_fachada = "" OR text_tipo_fachada = "No se sabe";

# text_carpinteria Madera
update avantio_inmovilla set text_carpinteria = 'Madera' where text_carpinteria = "" OR text_carpinteria = "No se sabe";

# text_carpinteria_exterior Aluminio
update avantio_inmovilla set text_carpinteria_exterior = 'Aluminio' where text_carpinteria_exterior = "" OR text_carpinteria_exterior = "No se sabe";

# text_tipo_calefacion Gas natural
update avantio_inmovilla set text_tipo_calefaccion = 'Gas natural' where text_tipo_calefaccion = "" OR text_tipo_calefaccion = "No se sabe";

# text_tipo_exterior Gas natural
update avantio_inmovilla set text_tipo_exterior = 'Exterior' where text_tipo_exterior = "" OR text_tipo_exterior = "1" OR text_tipo_exterior = "No se sabe";

/*
# consulta por inmovilla
select ai.number_habdobles,ai.number_habitaciones,ai.number_banyos,ai.number_aseos,ds.text_title,ds.dynamic_agencia,ai.text_tipo_bano , ai.text_tipo_cocina , ai.text_tipo_fachada , ai.text_carpinteria , ai.text_carpinteria_exterior , ai.text_tipo_calefaccion,
ai.text_tipo_exterior , ai.text_vistas , ai.text_aguacaliente , ai.text_tipo_suelo , ai.text_superficie_terraza , ai.text_tipo_postigo,
ai.number_superficie_util , ai.number_superficie_parcela , ai.number_superficie_construida ,ai.number_numero_plantas, ai.number_numero_planta  
from dynamic_rooms as ds
inner join avantio_inmovilla as ai on ai.id = ds.id
where ds.dynamic_agencia in(6,9,22,23,24,25,26,27,28,29,30,31,32)
order by ds.dynamic_agencia;
# where ds.dynamic_agencia = 10;


# consulta por pisos.com
select ai.number_habdobles , ai.number_habitaciones ,ai.number_banyos , ai.number_aseos,ds.text_title,ds.dynamic_agencia,ai.text_tipo_bano , ai.text_tipo_cocina , ai.text_tipo_fachada , ai.text_carpinteria , ai.text_carpinteria_exterior , ai.text_tipo_calefaccion,
ai.text_tipo_exterior , ai.text_vistas , ai.text_aguacaliente , ai.text_tipo_suelo , ai.text_superficie_terraza , ai.text_tipo_postigo,
ai.number_superficie_util , ai.number_superficie_parcela , ai.number_superficie_construida ,ai.number_numero_plantas, ai.number_numero_planta 
from dynamic_rooms as ds
inner join avantio_inmovilla as ai on ai.id = ds.id
where ds.dynamic_agencia in(8, 10, 38,41, 42, 34)
order by ds.dynamic_agencia;
*/

