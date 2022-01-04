# use temp_inmobiliaria;
use pisosenm_inmobiliaria;

# delete from dynamic_gallery_inmo where id <> -1;
# delete from avantio_inmovilla where id <> -1;
# delete from dynamic_rooms where id <> -1;

# select * from dynamic_rooms;
# select * from avantio_inmovilla;
# select * from dynamic_gallery_inmo;


# select * from users;
# select * from dynamic_agencia;
# select * from dynamic_usuarios;



# drop table users;

# cargamos inmobiliarias
/*
insert into dynamic_agencia (`id`,`language`,`text_title`,`number_telf`,`number_mobile`,`number_fax`,`text_direccion`,`text_body_title`,`text_latitud`,`text_longitud`,`text_page_title`,`auto_slug`)  values (22,"es","layvak","932176757","0","932176757","sin direccion","layvak","41.7268192","1.8164024","layvak","layvak");
insert into dynamic_agencia (`id`,`language`,`text_title`,`number_telf`,`number_mobile`,`number_fax`,`text_direccion`,`text_body_title`,`text_latitud`,`text_longitud`,`text_page_title`,`auto_slug`)  values (23,"es","besthouse","932176757","0","932176757","sin direccion","besthouse","41.7268192","1.8164024","besthouse","besthouse");
insert into dynamic_agencia (`id`,`language`,`text_title`,`number_telf`,`number_mobile`,`number_fax`,`text_direccion`,`text_body_title`,`text_latitud`,`text_longitud`,`text_page_title`,`auto_slug`)  values (24,"es","pisosafys","932176757","0","932176757","sin direccion","pisosafys","41.7268192","1.8164024","pisosafys","pisosafys");
insert into dynamic_agencia (`id`,`language`,`text_title`,`number_telf`,`number_mobile`,`number_fax`,`text_direccion`,`text_body_title`,`text_latitud`,`text_longitud`,`text_page_title`,`auto_slug`)  values (25,"es","vicmoba","932176757","0","932176757","sin direccion","vicmoba","41.7268192","1.8164024","vicmoba","vicmoba");
insert into dynamic_agencia (`id`,`language`,`text_title`,`number_telf`,`number_mobile`,`number_fax`,`text_direccion`,`text_body_title`,`text_latitud`,`text_longitud`,`text_page_title`,`auto_slug`)  values (26,"es","macrofinas","932176757","0","932176757","sin direccion","macrofinas","41.7268192","1.8164024","macrofinas","macrofinas");
insert into dynamic_agencia (`id`,`language`,`text_title`,`number_telf`,`number_mobile`,`number_fax`,`text_direccion`,`text_body_title`,`text_latitud`,`text_longitud`,`text_page_title`,`auto_slug`)  values (27,"es","bsimmobles","932176757","0","932176757","sin direccion","bsimmobles","41.7268192","1.8164024","bsimmobles","bsimmobles");


# cargamos usuarios
insert into users (`id`,`username`,`password`,`email`,`group`,`status`,`roleId`) values (22,"layvak","69b1f3b2706d3958ef6dbd456a9acf9737df5920","info@layvak.es","inmobiliaria","ACTIVED",3);
insert into users (`id`,`username`,`password`,`email`,`group`,`status`,`roleId`) values (23,"besthouse","69b1f3b2706d3958ef6dbd456a9acf9737df5920","info@besthouse.es","inmobiliaria","ACTIVED",3);
insert into users (`id`,`username`,`password`,`email`,`group`,`status`,`roleId`) values (24,"pisosafys","69b1f3b2706d3958ef6dbd456a9acf9737df5920","info@pisosafys.es","inmobiliaria","ACTIVED",3);
insert into users (`id`,`username`,`password`,`email`,`group`,`status`,`roleId`) values (25,"vicmoba","69b1f3b2706d3958ef6dbd456a9acf9737df5920","info@bvicmoba.es","inmobiliaria","ACTIVED",3);
insert into users (`id`,`username`,`password`,`email`,`group`,`status`,`roleId`) values (26,"macrofinas","69b1f3b2706d3958ef6dbd456a9acf9737df5920","info@macrofinas.es","inmobiliaria","ACTIVED",3);
insert into users (`id`,`username`,`password`,`email`,`group`,`status`,`roleId`) values (27,"bsimmobles","69b1f3b2706d3958ef6dbd456a9acf9737df5920","info@bsimmobles.es","inmobiliaria","ACTIVED",3);


layvak 	   = id = 22
besthouse  = id = 23
pisosafys  = id = 24
vicmoba    = id = 25
macrofinas = id = 26
bsimmobles = id = 27
*/