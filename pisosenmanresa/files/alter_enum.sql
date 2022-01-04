use pisosenm_inmobiliaria_dos;

call set_checkbox_destacados();

# alter enums
/*
alter table dynamic_accion modify column status varchar (128);
alter table dynamic_advantages modify column status varchar (128);
alter table dynamic_agencia modify column status varchar (128);
alter table dynamic_agente_inmobiliario modify column status varchar (128);
alter table dynamic_cron modify column status varchar (128);
alter table dynamic_faqsagentes modify column status varchar (128);
alter table dynamic_faqsagentes_type modify column status varchar (128);
alter table dynamic_faqsinmobiliarias modify column status varchar (128);
alter table dynamic_faqsinmobiliarias_type modify column status varchar (128);
alter table dynamic_faqspropietarios modify column status varchar (128);
alter table dynamic_faqspropietarios_type modify column status varchar (128);
alter table dynamic_franquicia modify column status varchar (128);
alter table dynamic_gallery_franquicia_principal modify column status varchar (128);
alter table dynamic_gallery_inmo modify column status varchar (128);
alter table dynamic_gallery_usuario modify column status varchar (128);
alter table dynamic_gallery_inmo_principal modify column status varchar (128);
alter table dynamic_gallery_usuario_principal modify column status varchar (128);
alter table dynamic_geocity modify column status varchar (128);
alter table dynamic_geocountry modify column status varchar (128);
alter table dynamic_geodistrict modify column status varchar (128);
alter table dynamic_geolocality modify column status varchar (128);
alter table dynamic_georegion modify column status varchar (128);
alter table dynamic_offers modify column status varchar (128);
alter table dynamic_offers_taxonomy modify column status varchar (128);
alter table dynamic_pages modify column status varchar (128);
alter table dynamic_taxonomy modify column status varchar (128);
alter table dynamic_taxonomy_city modify column status varchar (128);
alter table dynamic_taxonomy_group modify column status varchar (128);
alter table dynamic_testimonials modify column status varchar (128);
alter table dynamic_usuario modify column status varchar (128);
alter table newsletter modify column status varchar (128);
alter table users modify column status varchar (128);
*/

#alter table dynamic_gallery_usuario_principal modify column zip_status varchar (128);
#alter table dynamic_gallery_inmo_principal modify column zip_status varchar (128);

#alter table dynamic_gallery_inmo modify column zipstatus varchar (128);
#alter table dynamic_gallery_usuario modify column zipstatus varchar (128);

#alter table dynamic_accion modify column status varchar (128);
#alter table dynamic_geolocality modify column status_realstate varchar (128);

#alter table dynamic_taxonomy modify column status_realstate varchar (128);

#alter table users modify column `group` varchar (128);


#alter table dynamic_rooms modify column `status` varchar (128);

#alter table ci_sessions add primary key(`id`);

# alter table message add column id_indiceU int(10) comment "Clave primaria";
# alter table message add primary key (id_indice);

#select * from message;

/*
update message set id_indice = 1 where id = 1 and id2 = 1;
update message set id_indice = 2 where id = 1 and id2 = 2;
update message set id_indice = 3 where id = 1 and id2 = 3;
update message set id_indice = 4 where id = 1 and id2 = 4;
update message set id_indice = 5 where id = 1 and id2 = 5;
update message set id_indice = 6 where id = 6 and id2 = 1;
update message set id_indice = 7 where id = 8 and id2 = 1;
update message set id_indice = 8 where id = 9 and id2 = 1;
update message set id_indice = 9 where id = 10 and id2 = 1;
update message set id_indice = 10 where id = 11 and id2 = 1;
update message set id_indice = 11 where id = 1 and id2 = 6;
update message set id_indice = 12 where id = 1 and id2 = 7;
alter table message add primary key(`id_indice`);
*/


#update password_reset set id = 1;
#alter table password_reset add column id int(10) comment "Clave primaria";
alter table password_reset add primary key (id);
