#drop database pisosenm_inmobiliaria; 
#CREATE DATABASE pisosenm_inmobiliaria CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
use pisosenm_inmobiliaria_dos;

# select text_title from dynamic_taxonomy;
# select text_title from dynamic_geolocality;

# use pisosenm_inmobiliaria;
# set SQL_SAFE_UPDATES = 0;

# select * from dynamic_rooms;
# select * from dynamic_agencia;
# Consulta de tablas de productos
# select * from dynamic_rooms where id <> -1;
# select * from avantio_inmovilla where id <> -1;
# select *  from dynamic_gallery_inmo where id <> -1;

# select ds.id,ds.text_title,ds.text_ref from dynamic_rooms as ds,dynamic_rooms as ds_dos
# where ds.text_ref = ds_dos.text_ref and ds.id <> ds_dos.id; 

# select * from dynamic_agencia;

/*
# Borramos los datos de particulares en el caso que no se hayan grabado bien

select ds.id,ds.text_title,ds.text_ref,ds.dynamic_agencia,ds.dynamic_accion,ds.dynamic_geolocality,ds.dynamic_taxonomy_group,ds.number_precioinmo,ds.number_precioalq 
from dynamic_rooms as ds
left join avantio_inmovilla as ai on ai.id = ds.id
left join dynamic_gallery_inmo as dgi on dgi.id = ds.id
where ds.dynamic_agencia = 0;


DELETE ds 
from dynamic_rooms as ds
left join avantio_inmovilla as ai on ai.id = ds.id
left join dynamic_gallery_inmo as dgi on dgi.id = ds.id
where ds.dynamic_agencia = 0;
*/

/*
select ds.id,ds.text_title,ds.text_ref,ds.dynamic_agencia,ds.dynamic_accion,ds.dynamic_geolocality,ds.dynamic_taxonomy_group,ds.number_precioinmo,ds.number_precioalq
from dynamic_rooms ds
order by ds.text_ref,ds.number_precioinmo,ds.number_precioalq asc; 


SELECT 
	ds.id,ds.text_title,ds.text_ref,ds.dynamic_agencia,ds.dynamic_accion,ds.dynamic_geolocality,ds.dynamic_taxonomy_group,ds.number_precioinmo,ds.number_precioalq,
    ds.text_ref, 
    COUNT(ds.text_ref)
FROM
    dynamic_rooms as ds
GROUP BY ds.text_ref
HAVING COUNT(ds.text_ref) > 1;
*/



/*
# Consultamos duplicados por agencia

select * from dynamic_agencia;

select ds.id,ds.text_title,ds.text_ref,ds.dynamic_agencia,ds.dynamic_accion,ds.dynamic_geolocality,ds.dynamic_taxonomy_group,ds.number_precioinmo,ds.number_precioalq 
from dynamic_rooms as ds
inner join dynamic_rooms as ds_dos
where ds.id < ds_dos.id AND ds.text_ref = ds_dos.text_ref AND ds.dynamic_agencia = 42 AND ds_dos.dynamic_agencia = 42
order by ds.number_precioinmo,ds.number_precioalq asc; 
# group by ds.text_ref ds.text_ref = ds_dos.text_ref AND 


delete ds 
from dynamic_rooms as ds
inner join dynamic_rooms as ds_dos
where ds.id < ds_dos.id AND ds.text_ref = ds_dos.text_ref AND ds.dynamic_agencia = 42 AND ds_dos.dynamic_agencia = 42;

delete ds 
from dynamic_rooms as ds
inner join dynamic_rooms as ds_dos
where ds.id < ds_dos.id AND ds.text_ref = ds_dos.text_ref AND ds.dynamic_agencia = 41 AND ds_dos.dynamic_agencia = 41;

delete ds 
from dynamic_rooms as ds
inner join dynamic_rooms as ds_dos
where ds.id < ds_dos.id AND ds.text_ref = ds_dos.text_ref AND ds.dynamic_agencia = 38 AND ds_dos.dynamic_agencia = 38;

delete ds 
from dynamic_rooms as ds
inner join dynamic_rooms as ds_dos
where ds.id < ds_dos.id AND ds.text_ref = ds_dos.text_ref AND ds.dynamic_agencia = 31 AND ds_dos.dynamic_agencia = 31;

delete ds 
from dynamic_rooms as ds
inner join dynamic_rooms as ds_dos
where ds.id < ds_dos.id AND ds.text_ref = ds_dos.text_ref AND ds.dynamic_agencia = 30 AND ds_dos.dynamic_agencia = 30;


# Borramos los duplicados de pisosafys
delete ds 
from dynamic_rooms as ds
inner join dynamic_rooms as ds_dos
where ds.id < ds_dos.id AND ds.text_ref = ds_dos.text_ref AND ds.dynamic_agencia = 24 AND ds_dos.dynamic_agencia = 24;

# Borramos los duplicados de vitalinmobiles
delete ds 
from dynamic_rooms as ds
inner join dynamic_rooms as ds_dos
where ds.id < ds_dos.id AND ds.text_ref = ds_dos.text_ref AND ds.dynamic_agencia = 10 AND ds_dos.dynamic_agencia = 10;
*/

