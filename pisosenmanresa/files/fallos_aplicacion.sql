# fallos precios
# select * from dynamic_rooms where number_precioinmo = 0 and dynamic_accion = 1;
# select * from dynamic_rooms where number_precioalq = 0 and dynamic_accion = 2;
# update dynamic_rooms set dynamic_accion = 3 where number_precioalq = 0 and dynamic_accion = 2;

# fallos olesa
# select * from dynamic_rooms where text_title like '%olesa de montserrat%';
# update dynamic_rooms set dynamic_geolocality = 41 where text_title like '%olesa de montserrat%';

#delete from dynamic_rooms where id <> -1;
#delete from dynamic_gallery_inmo where id <> -1;
#delete from avantio_inmovilla where id <> -1;

#select * from dynamic_rooms where dynamic_geolocality = 0;
#select * from dynamic_gallery_inmo;
#select * from avantio_inmovilla;