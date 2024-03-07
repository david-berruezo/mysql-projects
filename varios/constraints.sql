# para mostrar indices
show index from avantio_accomodations
show index from avantio_occupation_rules
show index from avantio_availabilities
show index from avantio_pricemodifiers
show index from avantio_accomodations_pictures
show index from dynamic_geocountry
show index from dynamic_georegion
show index from dynamic_geocity
show index from dynamic_geolocality
show index from dynamic_geodistrict
show index from dynamic_taxonomy

# para borrar tablas que están relacionadas
# primero desactivamops chequeo de claves foraneas (1)
SET FOREIGN_KEY_CHECKS = 0;

# con esta query devolvemos todas las tablas de la base de datos que pongamos (2)
SELECT GROUP_CONCAT('DROP TABLE IF EXISTS ', table_name, ';')
FROM information_schema.tables
WHERE table_schema = 'pisosenm_inmobiliaria_siete_pruebas';

# tercero volvemos a activar chequeo de claves foraneas (3)
SET FOREIGN_KEY_CHECKS = 1;


