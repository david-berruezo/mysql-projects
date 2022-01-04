# CREATE DATABASE pisosenm_inmobiliaria_dos CHARACTER SET utf8 COLLATE utf8_general_ci;
# CREATE DATABASE pisosenm_inmobiliaria_tres CHARACTER SET utf8 COLLATE utf8_general_ci;
# CREATE DATABASE pisosenm_inmobiliaria_tres CHARACTER SET utf8 COLLATE utf8_general_ci;
# CREATE DATABASE plottadm_blog CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
# CREATE DATABASE plottadm_blog_mio CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

CREATE DATABASE tiendapi_inmobiliaria_dos CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;


use pisosenm_inmobiliaria_tres;

############################################################ rooms and characteristics ############################################################################

CREATE TABLE `dynamic_room` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador del inmueble',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `dynamic_inmovilla` int(11) UNIQUE NOT NULL DEFAULT '0' COMMENT 'Identificador inmovilla characteristics',
  `dynamic_user` int(11) DEFAULT '0' COMMENT 'Usuario',
  `dynamic_taxonomy` int(11) DEFAULT '0' COMMENT 'Tipo de inmueble piso, casa',
  `dynamic_taxonomy_group` int(11) NOT NULL DEFAULT '0' COMMENT 'Grupo tipo de inmueble piso, casa',
  `dynamic_geocountry` int(11) DEFAULT '0' COMMENT 'Pais',
  `dynamic_georegion` int(11) DEFAULT '0' COMMENT 'Región (Comunidad autonoma)',
  `dynamic_geocity` int(11) DEFAULT '0' COMMENT 'Ciudad',
  `dynamic_geolocality` int(11) DEFAULT '0' COMMENT 'Población',
  `dynamic_geodistrict` int(11) DEFAULT '0' COMMENT 'Distrito (código postal)',
  `dynamic_accion` int(11) DEFAULT '0' COMMENT 'Comprar | Alquilar | Compartir',
  `dynamic_documents` int(11) unique  DEFAULT '0' COMMENT 'Documentos Inmobiliaria',
  `dynamic_gallery`  int(11) unique DEFAULT '0' COMMENT 'Galería Habitaciones',
  `dynamic_gallery_principal`  int(11) unique DEFAULT '0' COMMENT 'Galería Usuario',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Titulo',
  `text_subtitle` varchar(255) DEFAULT NULL COMMENT 'Subtítulo',
  `text_ref` varchar(255) DEFAULT NULL COMMENT 'Referencia',
  `text_zona` varchar(255) DEFAULT NULL COMMENT 'Zona ej:Carretera de sants',
  `text_antiguedad` varchar(255) DEFAULT NULL COMMENT 'Antiguedad  (1992, 2004)',
  `text_keypromo` varchar(20) DEFAULT NULL COMMENT 'Promocion clave',
  `text_latitud` varchar(20) DEFAULT NULL COMMENT 'Google Maps Latitud',
  `text_altitud` varchar(20) DEFAULT NULL COMMENT 'Google Maps Longitud',
  `text_conservacion` varchar(255) DEFAULT NULL COMMENT 'Nuevo, Semi-nuevo ... )',
  `text_orientacion` varchar(20) DEFAULT NULL COMMENT 'Orientación',
  `number_precioinmo` decimal(9,2) DEFAULT NULL COMMENT 'Precio de venta ( Formato: 1000,00 )',
  `number_precioalq` decimal(9,2) DEFAULT '0.00' COMMENT 'Precio de alquiler  ( Formato: 1000,00 )',
  `textarea_description` text COMMENT 'Descripción principal',
  `textarea_description_2` text COMMENT 'Descripción secundaria',
  `textarea_interior` text COMMENT 'Descripción opcional (No visible)',
  `is_new` smallint(3) DEFAULT '0' COMMENT 'Propiedad nueva por usuario o por agencia en la  intranet',
  `is_update` smallint(3) DEFAULT '0' COMMENT 'Propiedad actualizada por usuario o por agencia en intranet',
  `checkbox_destacado` smallint(45) DEFAULT '0' COMMENT 'Destacado',
  `checkbox_destacado_home` smallint(4) DEFAULT '0' COMMENT 'Destacado página  home',
  `checkbox_destacado_provincia` smallint(4) DEFAULT '0' COMMENT 'Destacado página población',
  `checkbox_destacado_taxonomia` smallint(4) DEFAULT '0' COMMENT 'Destacado página población por tipo inmueble',
  `checkbox_destacado_listado_inmobiliarias` smallint(4) DEFAULT '0' COMMENT 'Destacado página listado inmobiliarias',
  `checkbox_destacado_detalle_inmobiliaria` smallint(4) DEFAULT '0' COMMENT 'Destacado página detalle inmobiliaria',
  `checkbox_destacado_listado_blog` smallint(4) DEFAULT '0' COMMENT 'Destacado página listado notícias blog',
  `checkbox_destacado_detalle_blog` smallint(4) DEFAULT '0' COMMENT 'Destacado página detalle notícia blog',
  `checkbox_destacado_detalle_propiedad` smallint(4) DEFAULT '0' COMMENT 'Destacado página detalle propiedad',
  `checkbox_vistos_recientemente_provincia` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página provincia',
  `checkbox_vistos_recientemente_taxonomia` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página por tipo piso',
  `checkbox_vistos_recientemente_listado_inmobiliarias` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página listado inmobiliarias',
  `checkbox_vistos_recientemente_detalle_inmobiliarias` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página detalle inmobiliarias',
  `checkbox_vistos_recientemente_listado_blog` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página listado blog',
  `checkbox_vistos_recientemente_detalle_blog` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página detalle blog',
  `checkbox_vistos_recientemente_detalle_propiedad` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página detalle propiedad',
  `checkbox_destacado_oferta` smallint(4) DEFAULT '0' COMMENT 'Destacado en página de ofertas',
  `checkbox_oferta` smallint(4) DEFAULT '0' COMMENT 'Página de Oferta en listados',
  `checkbox_destacado_newsletter` smallint(4) DEFAULT '0' COMMENT 'Mostrar correo newsletter',
  `checkbox_destacado_agente` smallint(45) DEFAULT '0' COMMENT 'Destacado agente',
  `checkbox_destacado_home_agente` smallint(4) DEFAULT '0' COMMENT 'Destacado página  home agente',
  `checkbox_destacado_provincia_agente` smallint(4) DEFAULT '0' COMMENT 'Destacado página población agente',
  `checkbox_destacado_taxonomia_agente` smallint(4) DEFAULT '0' COMMENT 'Destacado página población por tipo inmueble agente',
  `checkbox_destacado_listado_inmobiliarias_agente` smallint(4) DEFAULT '0' COMMENT 'Destacado página listado inmobiliarias agente',
  `checkbox_destacado_detalle_inmobiliaria_agente` smallint(4) DEFAULT '0' COMMENT 'Destacado página detalle inmobiliaria agente',
  `checkbox_destacado_listado_blog_agente` smallint(4) DEFAULT '0' COMMENT 'Destacado página listado notícias blog agente',
  `checkbox_destacado_detalle_blog_agente` smallint(4) DEFAULT '0' COMMENT 'Destacado página detalle notícia blog agente',
  `checkbox_destacado_detalle_propiedad_agente` smallint(4) DEFAULT '0' COMMENT 'Destacado página detalle propiedad agente',
  `checkbox_vistos_recientemente_provincia_agente` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página provincia agente',
  `checkbox_vistos_recientemente_taxonomia_agente` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página por tipo piso agente',
  `checkbox_vistos_recientemente_listado_inmobiliarias_agente` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página listado inmobiliarias agente',
  `checkbox_vistos_recientemente_detalle_inmobiliarias_agente` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página detalle inmobiliarias agente',
  `checkbox_vistos_recientemente_listado_blog_agente` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página listado blog agente',
  `checkbox_vistos_recientemente_detalle_blog_agente` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página detalle blog agente',
  `checkbox_vistos_recientemente_detalle_propiedad_agente` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página detalle propiedad agente',
  `checkbox_destacado_oferta_agente` smallint(4) DEFAULT '0' COMMENT 'Destacado en página de ofertas agente',
  `checkbox_oferta_agente` smallint(4) DEFAULT '0' COMMENT 'Página de Oferta en listados agente',
  `checkbox_destacado_newsletter_agente` smallint(4) DEFAULT '0' COMMENT 'Mostrar correo newsletter agente',
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
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Listado Inmuebles';


CREATE TABLE `dynamic_inmovilla` (
  `id` int(11) NOT NULL COMMENT 'Identificador único',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_tipo_bano` varchar(255) DEFAULT 'es' COMMENT 'Tamaño baño',
  `text_tipo_cocina` varchar(255) DEFAULT NULL COMMENT 'Tipo cocina',
  `text_tipo_fachada` varchar(255) DEFAULT NULL COMMENT 'm² fachada',
  `text_carpinteria` varchar(255) DEFAULT NULL COMMENT 'Carpintería',
  `text_carpinteria_exterior` varchar(255) DEFAULT NULL COMMENT 'Caripintería exterior',
  `text_tipo_calefaccion` varchar(255) DEFAULT NULL COMMENT 'Calefacción',
  `text_tipo_exterior` varchar(255) DEFAULT NULL COMMENT 'Todo exterior',
  `text_vistas` varchar(255) DEFAULT NULL COMMENT 'Vistas',
  `text_aguacaliente` varchar(255) DEFAULT NULL COMMENT 'Agua Caliente',
  `text_tipo_suelo` varchar(255) DEFAULT NULL COMMENT 'Tipo suelo',
  `text_superficie_terraza` varchar(255) DEFAULT NULL COMMENT 'Terraza',
  `text_tipo_postigo` varchar(255) DEFAULT NULL COMMENT 'm² postigo',
  `number_superficie_util` int(11) DEFAULT NULL COMMENT 'm² construidos',
  `number_superficie_parcela` int(11) DEFAULT NULL COMMENT 'm² parcela',
  `number_superficie_construida` int(11) DEFAULT NULL COMMENT 'm² útiles',
  `number_habdobles` int(11) DEFAULT NULL COMMENT 'Num. hab. dobles',
  `number_habitaciones` int(11) DEFAULT NULL COMMENT 'Núm indiv hab',
  `number_numero_plantas` int(11) DEFAULT NULL COMMENT 'Núm plantas',
  `number_numero_planta` smallint(3) DEFAULT NULL COMMENT 'Total plantas',
  `number_banyos` smallint(3) NOT NULL COMMENT 'Núm baños',
  `number_aseos` int(11) DEFAULT NULL COMMENT 'Núm aseos',
  `number_gastos_comunidad` int(11) DEFAULT NULL COMMENT 'Gastos comunitarios',
  `number_metros_comedor` int(11) DEFAULT NULL COMMENT 'm² comedor',
  `number_metros_cocina` int(11) DEFAULT NULL COMMENT 'm² cocina',
  `number_distancia_del_mar` int(11) DEFAULT NULL COMMENT 'Distancia del mar',
  `number_metros_terraza` int(11) DEFAULT NULL COMMENT 'm² terraza',
  `checkbox_agua` smallint(3) DEFAULT NULL COMMENT 'Agua',
  `checkbox_opcioncompra` smallint(4) DEFAULT NULL COMMENT 'Opcion compra',
  `checkbox_salon` smallint(4) DEFAULT NULL COMMENT 'Salón',
  `checkbox_airecentral` smallint(4) DEFAULT NULL COMMENT 'Aire centralizado',
  `checkbox_aire_acondicionado` smallint(4) DEFAULT NULL COMMENT 'Aire condicionado',
  `checkbox_alarma` smallint(4) DEFAULT NULL COMMENT 'Alarma',
  `checkbox_alarma_incendio` smallint(4) DEFAULT NULL COMMENT 'Alarma incendios',
  `checkbox_alarma_robo` smallint(4) DEFAULT NULL COMMENT 'Alarma robo',
  `checkbox_adaptado_minusvalido` smallint(4) DEFAULT NULL COMMENT 'Adaptado minusvalidos',
  `checkbox_armarios_empotrados` smallint(4) DEFAULT NULL COMMENT 'Armario empotrado',
  `checkbox_caja_fuerte` smallint(4) DEFAULT NULL COMMENT 'Caja fuerte',
  `checkbox_calefaccion_central` smallint(4) DEFAULT NULL COMMENT 'Calefacción central',
  `checkbox_chimenea` smallint(4) DEFAULT NULL COMMENT 'Chimenea',
  `checkbox_cocina_independiente` smallint(4) DEFAULT NULL COMMENT 'Cocina independiente',
  `checkbox_gas_ciudad` smallint(4) DEFAULT NULL COMMENT 'Gas',
  `checkbox_gimnasio` smallint(4) DEFAULT NULL COMMENT 'Gimnasio',
  `checkbox_habitacion_juegos` smallint(4) DEFAULT NULL COMMENT 'Habitación juegos',
  `checkbox_hidromasaje` smallint(4) DEFAULT NULL COMMENT 'Hidromasaje',
  `checkbox_jacuzzi` smallint(4) DEFAULT NULL COMMENT 'Jacuzzi',
  `checkbox_linea_teleronica` smallint(4) DEFAULT NULL COMMENT 'Linea telf',
  `checkbox_muebles` smallint(4) DEFAULT NULL COMMENT 'Muebles',
  `checkbox_ojo_de_buey` smallint(4) DEFAULT NULL COMMENT 'Ojo de buey',
  `checkbox_tv` smallint(4) DEFAULT NULL COMMENT 'Tv',
  `checkbox_balcon` smallint(4) DEFAULT NULL COMMENT 'Balcon',
  `checkbox_barbacoa` smallint(4) DEFAULT NULL COMMENT 'Barbacoa',
  `checkbox_terraza_acristalada` smallint(4) DEFAULT NULL COMMENT 'Terraza de cristal',
  `checkbox_comunidad_incluida` smallint(4) DEFAULT NULL COMMENT 'Comunidad incluida',
  `checkbox_ascensor` smallint(4) DEFAULT NULL COMMENT 'Ascensor',
  `checkbox_bar` smallint(4) DEFAULT NULL COMMENT 'Bar',
  `checkbox_deposito_agua` smallint(4) DEFAULT NULL COMMENT 'Depósito agua',
  `checkbox_descalcificador` smallint(4) DEFAULT NULL COMMENT 'Descalcificador',
  `checkbox_despensa` smallint(4) DEFAULT NULL COMMENT 'Despensa',
  `checkbox_diafano` smallint(4) DEFAULT NULL COMMENT 'Diáfano',
  `checkbox_esquina` smallint(4) DEFAULT NULL COMMENT 'Esquina',
  `checkbox_galeria` smallint(4) DEFAULT NULL COMMENT 'Galería',
  `checkbox_garaje_plazas` smallint(4) DEFAULT NULL COMMENT 'Plaza de garaje',
  `checkbox_garaje_doble` smallint(4) DEFAULT NULL COMMENT 'Tiene plaza de garaje doble',
  `checkbox_garaje_incluido` smallint(3) DEFAULT NULL COMMENT 'Garaje incluido',
  `checkbox_lavanderia` smallint(4) DEFAULT NULL COMMENT 'Lavandería',
  `checkbox_preinstalacion_aire_acondicionado` smallint(4) DEFAULT NULL COMMENT 'Pre instalación a.c.c',
  `checkbox_luminoso` smallint(4) DEFAULT NULL COMMENT 'Luminoso',
  `checkbox_luz` smallint(4) DEFAULT NULL COMMENT 'Luz',
  `checkbox_piscina_comunitaria` smallint(4) DEFAULT NULL COMMENT 'Piscina comunitaria',
  `checkbox_piscina_de_propiedad` smallint(4) DEFAULT NULL COMMENT 'Piscina',
  `checkbox_primera_linea_de_mar` smallint(4) DEFAULT NULL COMMENT 'Primera línia de mar',
  `checkbox_parking` smallint(4) DEFAULT NULL COMMENT 'Parking',
  `checkbox_patio` smallint(4) DEFAULT NULL COMMENT 'Patio',
  `checkbox_puerta_blindada` smallint(4) DEFAULT NULL COMMENT 'Puerta blindada',
  `checkbox_sauna` smallint(4) DEFAULT NULL COMMENT 'Sauna',
  `checkbox_solarium` smallint(4) DEFAULT NULL COMMENT 'Solarium',
  `checkbox_sotano` smallint(4) DEFAULT NULL COMMENT 'Sotano',
  `checkbox_trastero` smallint(4) DEFAULT NULL COMMENT 'Trastero',
  `checkbox_satelite` smallint(4) DEFAULT NULL COMMENT 'Satélite',
  `checkbox_urbanizacion` smallint(4) DEFAULT NULL COMMENT 'Urbanización',
  `checkbox_vestuarios` smallint(4) DEFAULT NULL COMMENT 'Vestuarios',
  `checkbox_videoportero` smallint(4) DEFAULT NULL COMMENT 'Video portero',
  `checkbox_energialetra` smallint(4) DEFAULT NULL COMMENT 'Energia alternativa',
  `checkbox_energiarecibido` smallint(4) DEFAULT NULL COMMENT 'Energia recibidor',
  `checkbox_autobuses` smallint(3) DEFAULT NULL COMMENT 'Autobuses',
  `checkbox_colegios` smallint(3) DEFAULT NULL COMMENT 'Colegios',
  `checkbox_vistas` smallint(3) DEFAULT NULL COMMENT 'Buenas vistas',
  `checkbox_zonas_infantiles` smallint(3) DEFAULT NULL COMMENT 'Zonas infantiles',
  `checkbox_terraza` smallint(3) DEFAULT NULL COMMENT 'Tiene terraza',
  `checkbox_calefaccion` smallint(3) DEFAULT NULL COMMENT 'Tiene calefacción',
  `checkbox_puertas_automatico` smallint(3) DEFAULT NULL COMMENT 'Tiene puertas automático',
  `checkbox_vistas_despejadas` smallint(3) DEFAULT NULL COMMENT 'Tiene vistas despejadas',
  `checkbox_arboles` smallint(3) DEFAULT NULL COMMENT 'Tiene arboles',
  `checkbox_centros_comerciales` smallint(3) DEFAULT NULL COMMENT 'Tiene centros comerciales',
  `checkbox_vallado` smallint(3) DEFAULT NULL COMMENT 'Tiene vallado',
  `checkbox_zona_montana` smallint(3) DEFAULT NULL COMMENT 'Zona montaña',
  `checkbox_jardin` smallint(3) DEFAULT NULL COMMENT 'Zona Jardin',
  `checkbox_zonas_verdes` smallint(3) DEFAULT NULL COMMENT 'Zonas Verdes',
  `checkbox_bomba_frio_y_calor` smallint(3) DEFAULT NULL COMMENT 'Bomba frío y calor',
  `checkbox_tren` smallint(3) DEFAULT NULL COMMENT 'Tren cercano',
  `checkbox_aprt_separado` smallint(3) DEFAULT NULL COMMENT 'Apart separado',
  `checkbox_buhardilla` smallint(3) DEFAULT NULL COMMENT 'Buhardilla',
  `checkbox_hospitales` smallint(3) DEFAULT NULL COMMENT 'Hospitales',
  `checkbox_acceso_pmr` smallint(3) DEFAULT NULL COMMENT 'Acceso PMR',
  `checkbox_parking_opcional` smallint(3) DEFAULT NULL COMMENT 'Parking Opcional',
  `checkbox_aire_acondicionado_centralizado` smallint(3) DEFAULT NULL COMMENT 'Aire acondicionado centralizado',
  `checkbox_todo_exterior` smallint(3) DEFAULT NULL COMMENT 'Todo exterior',
  `checkbox_garaje_opcional` smallint(3) DEFAULT NULL COMMENT 'Garaje Opcional',
  `checkbox_mirador` smallint(3) DEFAULT NULL COMMENT 'Mirador',
  `checkbox_montacargas` smallint(3) DEFAULT NULL COMMENT 'Montacargas',
  `checkbox_parabolica` smallint(3) DEFAULT NULL COMMENT 'Parabolica',
  `checkbox_pergola` smallint(3) DEFAULT NULL COMMENT 'Pergola',
  `checkbox_linia_telefonica` smallint(3) DEFAULT NULL COMMENT 'Linia Telefonica',
  `checkbox_electrodomesticos` smallint(3) DEFAULT NULL COMMENT 'Electrodomesticos',
  `checkbox_zona_de_costa` smallint(3) DEFAULT NULL COMMENT 'Zona de costa',
  `checkbox_golf` smallint(3) DEFAULT NULL COMMENT 'Golf',
  `checkbox_trifasica` smallint(3) DEFAULT NULL COMMENT 'Trifasica',
  `checkbox_riego_automatico` smallint(3) DEFAULT NULL COMMENT 'Riego automático',
  `checkbox_tranvia` smallint(3) DEFAULT NULL COMMENT 'Tranvia',
  `checkbox_hilo_musical` smallint(3) DEFAULT NULL COMMENT 'Hilo Musical',
  `checkbox_altillo` smallint(3) DEFAULT NULL COMMENT 'Altillo',
  `checkbox_puertas_automaticas` smallint(3) DEFAULT NULL COMMENT 'Puertas automáticas',
  `checkbox_video_portero` smallint(4) DEFAULT NULL COMMENT 'Video portero automático',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Caracteristicas';


CREATE TABLE `dynamic_gallery` (
  `id` int(11) NOT NULL COMMENT 'identificador de las imágenes',
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Galeria inmuebles';


CREATE TABLE `dynamic_gallery_principal` (
  `id` int(11) NOT NULL DEFAULT '0',
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Galeria Perfil';


CREATE TABLE `dynamic_document` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
  `document_documento1` varchar(255) DEFAULT NULL COMMENT 'Documento 1',
  `text_titulo1` varchar(75) DEFAULT NULL COMMENT 'Título 1',
  `document_documento2` varchar(255) DEFAULT NULL COMMENT 'Documento 2',
  `text_titulo2` varchar(75) DEFAULT NULL COMMENT 'Título 2',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Documentos usuario';


############################################################ users , agencies, business , agents , franquiciado  ############################################################################

# superadmin | franquiciado | inmobiliaria | usuario | no-usuario | agente | empresa
CREATE TABLE `users` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador del usuario',
  `dynamic_rol` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador dynamic rol',
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) COMMENT 'Email usuario',
  `status` varchar(128) DEFAULT 'ACTIVED',
  PRIMARY KEY (`id`,`username`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT 'Detalle de Usuarios';

/*
  `dynamic_usuario` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador dynamic usuario para el detalle',
  `dynamic_agencia` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador dynamic agencia para la agencia',
  `dynamic_agente` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador dynamic agente para el agente',
  `dynamic_empresa` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador dynamic empresa para la empresa',
  `dynamic_no_usuario` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador dynamic nousuario para los nousuario',
*/

CREATE TABLE `dynamic_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador rol',
  `role` varchar(50) DEFAULT NULL COMMENT 'rol usuariio',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Roles usuario';


CREATE TABLE `dynamic_franquicia` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `dynamic_user` int(11) unique NOT NULL DEFAULT '0' COMMENT 'User',
  `dynamic_gallery_franquicia_principal` int(45) unique  DEFAULT '0' COMMENT 'Galeria Franquicia',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Titulo',
  `text_firstname` varchar(75) DEFAULT NULL COMMENT 'Nombre',
  `text_lastname` varchar(75) DEFAULT NULL COMMENT 'Apellido',
  `number_telf` int(10) DEFAULT '0' COMMENT 'Telefono',
  `number_telf_mobil` int(10) DEFAULT '0' COMMENT 'Telefono mobil',
  `email` varchar(75) DEFAULT NULL COMMENT 'Email',
  `text_direccion` varchar(20) DEFAULT NULL COMMENT 'Dirección',
  `textarea_description` text COMMENT 'Descripción',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Page Title',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Text slug',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Text Meta Keywords',
  `textarea_scripts_header` text COMMENT 'Text Meta Scripts header',
  `textarea_scripts_body` text COMMENT 'Text Meta Scripts body',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Text Meta Keywords',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Text Meta Robots',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Datos Franquicia';


CREATE TABLE `dynamic_gallery_franquicia_principal` (
  `id` int(11) NOT NULL DEFAULT '0',
  `zipstatus` varchar(128) DEFAULT NULL,
  `image_principal` varchar(255) DEFAULT NULL,
  `text_title` varchar(75) DEFAULT NULL,
  `text_alt` varchar(75) DEFAULT NULL,
  `imagethn_principal` varchar(255) DEFAULT NULL,
  `text_importada` int(11) DEFAULT NULL,
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Gallery Franquicia Principal';


CREATE TABLE `dynamic_usuario` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `dynamic_user` int(11) unique NOT NULL DEFAULT '0' COMMENT 'User',
  `dynamic_gallery_usuario_principal` int(11) unique  DEFAULT '0' COMMENT 'Galeria Franquicia',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Titulo usuario',
  `text_firstname` varchar(75) DEFAULT NULL COMMENT 'Título Nombre',
  `text_lastname` varchar(20) DEFAULT '' COMMENT 'Apellido',
  `number_telf` varchar(20) DEFAULT '' COMMENT 'Telf',
  `number_telf_mobil` varchar(20) DEFAULT '' COMMENT 'Telf',
  `text_direccion` varchar(20) DEFAULT '' COMMENT 'Dirección',
  `textarea_description` text COMMENT 'Contenido de la página',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Listado usuarios';



CREATE TABLE `dynamic_gallery_usuario_principal` (
  `id` int(11) NOT NULL DEFAULT '0',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
  `zip_status` varchar(128) DEFAULT NULL,
  `text_alt` varchar(75) DEFAULT NULL COMMENT 'Alt imagen',
  `image_principal` varchar(255) DEFAULT NULL COMMENT 'Imagen principal',
  `text_importada` int(11) DEFAULT NULL COMMENT 'Text Importada',
  `imagethn_principal` varchar(255) DEFAULT NULL COMMENT 'Imagen principal oculta',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Galeria usuario principal';


CREATE TABLE `dynamic_agencia` (
  `id` int(11) NOT NULL DEFAULT '0',
  `dynamic_user` int(11) unique NOT NULL DEFAULT '0' COMMENT 'User',
  `dynamic_gallery_agencia_principal` int(11) unique  DEFAULT '0' COMMENT 'Galeria Franquicia',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Cabecera',
  `number_telf` int(11) DEFAULT '0' COMMENT 'Número de teléfono',
  `number_mobile` int(11) DEFAULT '0' COMMENT 'Número de movil',
  `number_fax` int(11) DEFAULT '0' COMMENT 'Número de fax',
  `text_direccion` varchar(255) DEFAULT NULL COMMENT 'Dirección de la agencia',
  `text_email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `text_website` varchar(255) DEFAULT NULL COMMENT 'Web',
  `text_facebook` varchar(255) DEFAULT NULL COMMENT 'Facebook',
  `text_twitter` varchar(255) DEFAULT NULL COMMENT 'Twitter',
  `text_instagram` varchar(255) DEFAULT NULL COMMENT 'Instagram',
  `text_pinterest` varchar(255) DEFAULT NULL COMMENT 'Pinterest',
  `text_google_plus` varchar(255) DEFAULT NULL COMMENT 'Google Plus',
  `text_body_title` varchar(75) DEFAULT NULL COMMENT 'Título de la página',
  `textarea_description` text COMMENT 'Contenido de la página',
  `text_latitud` varchar(20) DEFAULT '0' COMMENT 'Latitud google maps',
  `text_longitud` varchar(20) DEFAULT '0' COMMENT 'Longitud google maps',
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
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Agencias Inmobiliarias';


CREATE TABLE `dynamic_gallery_agencia_principal` (
  `id` int(11) NOT NULL DEFAULT '0',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
  `zip_status` varchar(128) DEFAULT NULL,
  `text_alt` varchar(75) DEFAULT NULL COMMENT 'Alt imagen',
  `image_principal` varchar(255) DEFAULT NULL COMMENT 'Imagen principal',
  `text_importada` int(11) DEFAULT NULL COMMENT 'Text Importada',
  `imagethn_principal` varchar(255) DEFAULT NULL COMMENT 'Imagen principal oculta',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Galeria agencia principal';



CREATE TABLE `dynamic_agente_inmobiliario` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador agente inmobiliario',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `dynamic_user` int(11) unique DEFAULT '0' COMMENT 'Identificador de usuario',
  `dynamic_agencia` int(11) DEFAULT NULL COMMENT 'Identificador de agencia',
  `dynamic_gallery_agente_inmobiliario_principal` int(11) unique  DEFAULT '0' COMMENT 'Galeria Franquicia',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `text_email` varchar(20) DEFAULT NULL COMMENT 'Dirección de email',
  `text_website` varchar(255) DEFAULT NULL COMMENT 'Web',
  `text_facebook` varchar(255) DEFAULT NULL COMMENT 'Facebook',
  `text_twitter` varchar(255) DEFAULT NULL COMMENT 'Twitter',
  `text_instagram` varchar(255) DEFAULT NULL COMMENT 'Instagram',
  `text_pinterest` varchar(255) DEFAULT NULL COMMENT 'Pinterest',
  `text_google_plus` varchar(255) DEFAULT NULL COMMENT 'Google Plus',
  `number_telf` int(10) DEFAULT '0' COMMENT 'Telefono Agente inmobiliario',
  `number_mobile` int(10) DEFAULT '0' COMMENT 'Telefono movil',
  `number_fax` int(10) DEFAULT '0' COMMENT 'Fax',
  `image_principal` varchar(255) DEFAULT NULL COMMENT 'Imagen principal',
  `textarea_description` text COMMENT 'Descripción',
  `text_latitud` varchar(20) DEFAULT '0' COMMENT 'Latitud google maps',
  `text_longitud` varchar(20) DEFAULT '0' COMMENT 'Longitud google maps',
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
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Agentes Inmobiliarios';


CREATE TABLE `dynamic_gallery_agente_inmobiliario_principal` (
  `id` int(11) NOT NULL DEFAULT '0',
  `id_dynamic_agente_inmobiliario` int(11) UNIQUE NOT NULL DEFAULT '0' COMMENT 'Identificador agente inmobiliario',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `zipstatus` varchar(128) DEFAULT NULL,
  `image_principal` varchar(255) DEFAULT NULL,
  `text_title` varchar(75) DEFAULT NULL,
  `text_alt` varchar(75) DEFAULT NULL,
  `imagethn_principal` varchar(255) DEFAULT NULL,
  `text_importada` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Agente Inmobiliario Principal';



CREATE TABLE `dynamic_empresa` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador del inmueble',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `dynamic_user` int(11) unique DEFAULT '0' COMMENT 'Identificador de usuario',
  `dynamic_gallery_empresa_principal` int(11) unique  DEFAULT '0' COMMENT 'Galeria Empresa Principal',
  `dynamic_gallery_empresa` int(11) unique  DEFAULT '0' COMMENT 'Galeria Empresa',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Titulo',
  `text_subtitle` varchar(255) DEFAULT NULL COMMENT 'Subtítulo',
  `text_ref` varchar(255) DEFAULT NULL COMMENT 'Referencia',
  `dynamic_taxonomy` int(11) DEFAULT '0' COMMENT 'Tipo de inmueble piso, casa',
  `dynamic_taxonomy_group` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Grupo tipo de inmueble piso, casa',
  `dynamic_geocountry` int(11) DEFAULT '0' COMMENT 'Pais',
  `dynamic_georegion` int(11) DEFAULT '0' COMMENT 'Región (Comunidad autonoma)',
  `dynamic_geocity` int(11) DEFAULT '0' COMMENT 'Ciudad',
  `dynamic_geolocality` int(11) DEFAULT '0' COMMENT 'Población',
  `dynamic_geodistrict` int(11) DEFAULT '0' COMMENT 'Distrito (código postal)',
  `dynamic_accion` int(11) DEFAULT '0' COMMENT 'Comprar | Alquilar | Compartir',
  `dynamic_documents_inmo` int(11) DEFAULT '0' COMMENT 'Documentos Inmobiliaria',
  `dynamic_documents_usuario` int(11) DEFAULT '0' COMMENT 'Documentos Usuario',
  `dynamic_gallery_usuario` varchar(45) DEFAULT NULL COMMENT 'Galería Usuario',
  `dynamic_gallery_inmo` varchar(45) DEFAULT NULL COMMENT 'Galería Fotos',
  `text_zona` varchar(255) 	DEFAULT NULL COMMENT 'Zona ej:Carretera de sants',
  `text_antiguedad` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Antiguedad  (1992, 2004)',
  `text_keypromo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Promocion clave',
  `text_latitud` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Google Maps Latitud',
  `text_altitud` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Google Maps Longitud',
  `text_conservacion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nuevo, Semi-nuevo ... )',
  `text_orientacion` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Orientación',
  `number_precioinmo` decimal(9,2) DEFAULT NULL COMMENT 'Precio de venta ( Formato: 1000,00 )',
  `number_precioalq` decimal(9,2) DEFAULT '0.00' COMMENT 'Precio de alquiler  ( Formato: 1000,00 )',
  `textarea_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Descripción principal',
  `textarea_description_2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Descripción secundaria',
  `textarea_interior` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Descripción opcional (No visible)',
  `checkbox_destacado` smallint(45) DEFAULT '0' COMMENT 'Destacado',
  `checkbox_destacado_home` smallint(4) DEFAULT '0' COMMENT 'Destacado página  home',
  `checkbox_destacado_provincia` smallint(4) DEFAULT '0' COMMENT 'Destacado página población',
  `checkbox_destacado_taxonomia` smallint(4) DEFAULT '0' COMMENT 'Destacado página población por tipo inmueble',
  `checkbox_destacado_listado_inmobiliarias` smallint(4) DEFAULT '0' COMMENT 'Destacado página listado inmobiliarias',
  `checkbox_destacado_detalle_inmobiliaria` smallint(4) DEFAULT '0' COMMENT 'Destacado página detalle inmobiliaria',
  `checkbox_destacado_listado_blog` smallint(4) DEFAULT '0' COMMENT 'Destacado página listado notícias blog',
  `checkbox_destacado_detalle_blog` smallint(4) DEFAULT '0' COMMENT 'Destacado página detalle notícia blog',
  `checkbox_destacado_detalle_propiedad` smallint(4) DEFAULT '0' COMMENT 'Destacado página detalle propiedad',
  `checkbox_vistos_recientemente_provincia` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página provincia',
  `checkbox_vistos_recientemente_taxonomia` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página por tipo piso',
  `checkbox_vistos_recientemente_listado_inmobiliarias` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página listado inmobiliarias',
  `checkbox_vistos_recientemente_detalle_inmobiliarias` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página detalle inmobiliarias',
  `checkbox_vistos_recientemente_listado_blog` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página listado blog',
  `checkbox_vistos_recientemente_detalle_blog` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página detalle blog',
  `checkbox_vistos_recientemente_detalle_propiedad` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página detalle propiedad',
  `checkbox_destacado_oferta` smallint(4) DEFAULT '0' COMMENT 'Destacado en página de ofertas',
  `checkbox_oferta` smallint(4) DEFAULT '0' COMMENT 'Página de Oferta en listados',
  `checkbox_destacado_newsletter` smallint(4) DEFAULT '0' COMMENT 'Mostrar correo newsletter',
  `text_page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Título sobre el alojamiento',
  `auto_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `text_meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Meta Keywords (máx 255 characters)',
  `text_meta_robots` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `text_meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT 'Meta Description (max 255 characters)',
  `textarea_scripts_header` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Listado Inmuebles';


CREATE TABLE `dynamic_gallery_empresa_principal` (
  `id` int(11) NOT NULL DEFAULT '0',
  `id_dynamic_agente_inmobiliario` int(11) UNIQUE NOT NULL DEFAULT '0' COMMENT 'Identificador empresa',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `zipstatus` varchar(128) DEFAULT NULL,
  `image_principal` varchar(255) DEFAULT NULL,
  `text_title` varchar(75) DEFAULT NULL,
  `text_alt` varchar(75) DEFAULT NULL,
  `imagethn_principal` varchar(255) DEFAULT NULL,
  `text_importada` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Agente Inmobiliario Principal';


CREATE TABLE `dynamic_gallery_empresa` (
  `id` int(11) NOT NULL COMMENT 'identificador de las imágenes',
  `zipstatus` varchar(128) DEFAULT NULL,
  `text_title` varchar(75) DEFAULT NULL COMMENT 'titulo',
  `text_title_image_1` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_1` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_1` varchar(255) DEFAULT NULL,
  `text_title_image_2` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_2` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_2` varchar(255) DEFAULT NULL,
  `text_alt_image_3` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `text_title_image_3` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `image_3` varchar(255) DEFAULT NULL,
  `text_title_image_4` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_4` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_4` varchar(255) DEFAULT NULL,
  `text_title_image_5` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_5` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_5` varchar(255) DEFAULT NULL,
  `text_title_image_6` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_6` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_6` varchar(255) DEFAULT NULL,
  `text_title_image_7` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_7` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_7` varchar(255) DEFAULT NULL,
  `text_title_image_8` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_8` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_8` varchar(255) DEFAULT NULL,
  `text_title_image_9` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_9` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_9` varchar(255) DEFAULT NULL,
  `text_title_image_10` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_10` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_10` varchar(255) DEFAULT NULL,
  `text_title_image_11` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_11` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_11` varchar(255) DEFAULT NULL,
  `text_title_image_12` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_12` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_12` varchar(255) DEFAULT NULL,
  `text_title_image_13` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_13` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_13` varchar(255) DEFAULT NULL,
  `text_title_image_14` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_14` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_14` varchar(255) DEFAULT NULL,
  `text_title_image_15` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_15` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_15` varchar(255) DEFAULT NULL,
  `text_alt_image_16` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `text_title_image_16` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `image_16` varchar(255) DEFAULT NULL,
  `text_title_image_17` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_17` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_17` varchar(255) DEFAULT NULL,
  `text_title_image_18` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_18` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_18` varchar(255) DEFAULT NULL,
  `text_title_image_19` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_19` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_19` varchar(255) DEFAULT NULL,
  `text_title_image_20` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_20` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_20` varchar(255) DEFAULT NULL,
  `text_title_image_21` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_21` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_21` varchar(255) DEFAULT NULL,
  `text_title_image_22` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_22` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_22` varchar(255) DEFAULT NULL,
  `text_title_image_23` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_23` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_23` varchar(255) DEFAULT NULL,
  `text_title_image_24` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_24` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_24` varchar(255) DEFAULT NULL,
  `text_title_image_25` varchar(75) DEFAULT NULL COMMENT 'titulo imagen',
  `text_alt_image_25` varchar(75) DEFAULT NULL COMMENT 'alt imagen',
  `image_25` varchar(255) DEFAULT NULL,
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Galerias Empresas';



############################################################ faqs propietarios, faqs agentes, faqs inmobiliarias  ############################################################################

CREATE TABLE `dynamic_faqsagentes_type` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `dynamic_faqsagentes` int(11) NOT NULL COMMENT 'dynamic_faqsagentes',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywordds',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Tipos Faq Agentes';


CREATE TABLE `dynamic_faqsagentes` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `textarea_description` text COMMENT 'Descripción',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywordds',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Faq Agentes';


CREATE TABLE `dynamic_faqsinmobiliarias_type` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `dynamic_faqsinmobiliarias` int(11) NOT NULL COMMENT 'dynamic_faqsainmobiliarias',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywordds',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Tipos Faq Inmobiliarias';


CREATE TABLE `dynamic_faqsinmobiliarias` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `textarea_description` text COMMENT 'Descripción',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywordds',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Faq Inmobiliarias';


CREATE TABLE `dynamic_faqspropietarios_type` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `dynamic_faqspropietarios` int(11) NOT NULL COMMENT 'dynamic_faqspropietarios',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywordds',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Tipos Faq Propietarios';


CREATE TABLE `dynamic_faqspropietarios` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `textarea_description` text COMMENT 'Descripción',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywordds',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Faq Propietarios';


########################################################### emailing business ####################################################################

# Tipo poligonos en manresa, otros portales
CREATE TABLE `dynamic_mail_tipo_portal` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Empresa',
  `textarea_description` text COMMENT 'Contenido de la página',
  `text_body_title_no_res` varchar(75) DEFAULT NULL COMMENT 'Título de la página cuando NO se encuentran resultados',
  `textarea_description_no_res` text COMMENT 'Contenido de la página cuando NO se encuentran resultados',
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
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Mail tipo portal';


CREATE TABLE `dynamic_mail_empresa` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `dynamic_mail_tipo_portal` int(11) NOT NULL DEFAULT '0' COMMENT 'Dynamic tipo portal',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Empresa',
  `text_nombre_empresa` varchar(128) DEFAULT NULL COMMENT 'Nombre Empresa',
  `text_nombre_empresa_comercial` varchar(128) DEFAULT NULL COMMENT 'Nombre Empresa Comercial',
  `text_direccion` varchar(128) DEFAULT NULL COMMENT 'Nombre Dirección',
  `dynamic_geolocality` smallint(3) DEFAULT NULL COMMENT 'Nombre Localidad',
  `dynamic_geodistrict` smallint(3) DEFAULT NULL COMMENT 'Nombre código postal',
  `text_phone` varchar(75) DEFAULT NULL COMMENT 'Telf',
  `text_web` varchar(128) DEFAULT NULL COMMENT 'Web',
  `text_email` varchar(128) DEFAULT NULL COMMENT 'Email',	
  `text_actividad` varchar(128) DEFAULT NULL COMMENT 'Nombre Actividad',
  `text_producto` varchar(128) DEFAULT NULL COMMENT 'Nombre Producto',
  `textarea_description` text COMMENT 'Contenido de la página',
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
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Mail empresa';


# relación uno a varios
alter table `dynamic_mail_empresa` add constraint `fk_dynamic_mail_empresa_dynamic_mail_tipo_portal_constraint` foreign key (`dynamic_mail_tipo_portal`) references dynamic_mail_tipo_portal(`id`) 
on update cascade
on delete cascade;  

############################################################ taxonomies, geolocations, actions  ############################################################################

# geocountry
CREATE TABLE `dynamic_geocountry` (
  `id` int(11) NOT NULL COMMENT 'Título',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Geografic - Países';


# Serian como Comunidades Autónomas
CREATE TABLE `dynamic_georegion` (
  `id` int(11) NOT NULL COMMENT 'Título',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `dynamic_geocountry` int(11) NOT NULL DEFAULT '0' COMMENT 'País',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Geografic - Regiones';


CREATE TABLE `dynamic_geocity` (
  `id` int(11) NOT NULL COMMENT 'Título',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `dynamic_georegion` int(11) NOT NULL DEFAULT '0' COMMENT 'Localities',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Geografic - Ciudades';


CREATE TABLE `dynamic_geolocality` (
  `id` int(11) NOT NULL COMMENT 'Título',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `dynamic_geocity` int(11) NOT NULL DEFAULT '0' COMMENT 'Distrito',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `number_release` int(11) DEFAULT '2' COMMENT 'Días de Release',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `text_geo_latitud` varchar(45) NOT NULL DEFAULT '' COMMENT 'Latitud GPS',
  `text_geo_longitud` varchar(45) NOT NULL DEFAULT '' COMMENT 'Longitud GPS',
  `status_realstate` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Geografic - Localidades';


CREATE TABLE `dynamic_geozona` (
  `id` int(11) NOT NULL COMMENT 'Título',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `dynamic_geolocality` int(11) NOT NULL DEFAULT '0' COMMENT 'Distrito',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `number_release` int(11) DEFAULT '2' COMMENT 'Días de Release',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `text_geo_latitud` varchar(45) NOT NULL DEFAULT '' COMMENT 'Latitud GPS',
  `text_geo_longitud` varchar(45) NOT NULL DEFAULT '' COMMENT 'Longitud GPS',
  `status_realstate` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Geografic - Localidades';


CREATE TABLE `dynamic_geodistrict` (
  `id` int(11) NOT NULL COMMENT 'Título',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `dynamic_geolocality` int(11) NOT NULL DEFAULT '0' COMMENT 'Distrito',
  `text_title` varchar(128) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `text_postalcode` varchar(5) DEFAULT NULL COMMENT 'Código Postal',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Geografic - Distritos';


# dynamic_geocountry
# uno a varios con dynamic_georegion
alter table `dynamic_georegion` add constraint `fk_dynamic_geocountry_dynamic_georegion_constraint` foreign key (`dynamic_geocountry`) references dynamic_geocountry(`id`) 
on update cascade
on delete cascade; 

# dynamic_geocity
# uno a varios con dynamic_georegion
alter table `dynamic_geocity` add constraint `fk_dynamic_geocity_dynamic_georegion_constraint` foreign key (`dynamic_georegion`) references dynamic_georegion(`id`) 
on update cascade
on delete cascade; 

# dynamic_geolocality
# uno a varios con dynamic_geocity
alter table `dynamic_geolocality` add constraint `fk_dynamic_geolocality_dynamic_geocity_constraint` foreign key (`dynamic_geocity`) references dynamic_geocity(`id`) 
on update cascade
on delete cascade; 

# dynamic_geozona
# uno a varios con dynamic_geolocality
alter table `dynamic_geozona` add constraint `fk_dynamic_geozona_dynamic_geolocality_constraint` foreign key (`dynamic_geolocality`) references dynamic_geolocality(`id`) 
on update cascade
on delete cascade;

# dynamic_geodistrict
# uno a varios con dynamic_geolocality
alter table `dynamic_geodistrict` add constraint `fk_dynamic_geodistrict_dynamic_geolocality_constraint` foreign key (`dynamic_geolocality`) references dynamic_geolocality(`id`) 
on update cascade
on delete cascade;


CREATE TABLE `dynamic_taxonomy` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `dynamic_taxonomy_group` int(11) DEFAULT NULL COMMENT 'Grupos de taxonomias',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título de la Taxonomía (en cabecera)',
  `text_title_plural` varchar(255) DEFAULT NULL COMMENT 'Título de la Taxonomía (plural, en cabecera)',
  `text_subtitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Subtítulo de la Cabecera',
  `text_body_title` varchar(75) DEFAULT NULL COMMENT 'Título de la página',
  `textarea_description` text COMMENT 'Descripción principal',
  `text_page_title` varchar(45) DEFAULT NULL,
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `status_realstate` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Taxonomías - Pisos';


CREATE TABLE `dynamic_taxonomy_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título del grupo',
  `text_title_plural` varchar(255) DEFAULT NULL COMMENT 'Plurarl de la taxonomia',
  `text_subtitle` varchar(255) DEFAULT NULL COMMENT 'Título del grupo',
  `text_body_title` varchar(75) DEFAULT NULL COMMENT 'Título del cuerpo',
  `textarea_description` text COMMENT 'Descripción',
  `text_page_title` varchar(45) DEFAULT NULL COMMENT 'Título de página',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto Slug',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Text Slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `textarea_scripts_header` text COMMENT 'Scripts Header',
  `textarea_scripts_body` text COMMENT 'Scripts Body',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) DEFAULT NULL COMMENT 'Posición',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Tax- Grupos - Pisos';


CREATE TABLE `dynamic_taxonomy_city` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Cabecera',
  `dynamic_accion` int(11) DEFAULT '0' COMMENT 'Identificador de accion | venta | alquiler | compra',
  `dynamic_taxonomy_group` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Taxonomía Grupo',
  `dynamic_geolocality` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Avantio Localidad',
  `text_body_title` varchar(75) DEFAULT NULL COMMENT 'Título de la página',
  `textarea_description` text COMMENT 'Contenido de la página',
  `text_body_title_no_res` varchar(75) DEFAULT NULL COMMENT 'Título de la página cuando NO se encuentran resultados',
  `textarea_description_no_res` text COMMENT 'Contenido de la página cuando NO se encuentran resultados',
  `text_page_title` varchar(255) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` text COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Landings destino';


CREATE TABLE `dynamic_accion` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Cabecera',
  `textarea_description` text COMMENT 'Contenido de la página',
  `text_body_title_no_res` varchar(75) DEFAULT NULL COMMENT 'Título de la página cuando NO se encuentran resultados',
  `textarea_description_no_res` text COMMENT 'Contenido de la página cuando NO se encuentran resultados',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Tipos Aciones';


############################################################ dynamic_pages  ############################################################################


CREATE TABLE `dynamic_pages` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `dynamic_gallery_franquicia_principal` varchar(45) DEFAULT NULL COMMENT 'Imagen Principal',
  `text_section` varchar(75) NOT NULL DEFAULT '' COMMENT 'Nombre página estática (sólo para tabla admin)',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Cabecera',
  `text_subtitle` varchar(100) DEFAULT NULL COMMENT 'Subtítulo Cabecera (máx 100 carácteres)',
  `text_body_title` varchar(120) DEFAULT NULL COMMENT 'Título de la página (H1)',
  `textarea_description` text COMMENT 'Contenido de la página',
  `text_dtitle_1` varchar(75) DEFAULT NULL COMMENT 'Título 1',
  `text_dsubtitle_1` varchar(75) DEFAULT NULL COMMENT 'Subtítulo 1',
  `textarea_ddescription_1` text COMMENT 'Descripción 1',
  `text_dtitle_2` varchar(75) DEFAULT NULL COMMENT 'Título 2',
  `text_dsubtitle_2` varchar(75) DEFAULT NULL COMMENT 'Subtítulo 2',
  `textarea_ddescription_2` text COMMENT 'Descripción 2',
  `text_dtitle_3` varchar(75) DEFAULT NULL COMMENT 'Título 3',
  `text_dsubtitle_3` varchar(75) DEFAULT NULL COMMENT 'Subtítulo 3',
  `textarea_ddescription_3` text COMMENT 'Descripción 3',
  `textarea_description_inferior` text COMMENT 'Contenido de la página Inferior',
  `textarea_description_home` text COMMENT 'Descripción 2',
  `text_page_title` varchar(120) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
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
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Páginas estáticas';

# pueden ser un montón de ventajas repartidas por la website
CREATE TABLE `dynamic_advantages` (
  `id` int(11) NOT NULL,
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `textarea_description` text COMMENT 'Descripción',
  `text_icon` varchar(45) DEFAULT NULL COMMENT 'Icon: ‘wifi’, ‘reloj’, ‘teleoperadora’, ‘dinero’, ‘bienvenido’, ‘llave’',
  `checkbox_destacada_home` varchar(45) DEFAULT NULL COMMENT 'Destacar en la home (si/no)',
  `checkbox_destacada_alojamiento` varchar(45) DEFAULT NULL COMMENT 'Destacar en la página de alojamiento',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Ventajas';


CREATE TABLE `dynamic_contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Información de contacto',
  `name` varchar(75) DEFAULT 'Nombre' COMMENT 'Nombre',
  `email` varchar(75) DEFAULT NULL COMMENT 'Email',
  `phone` varchar(75) DEFAULT NULL COMMENT 'Telf',
  `subject` varchar(75) DEFAULT NULL COMMENT 'Titulo',
  `form_message` varchar(255) DEFAULT NULL COMMENT 'Mensaje',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Contacto';


CREATE TABLE `dynamic_testimonials` (
  `id` int(11) NOT NULL,
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `text_business` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `textarea_description` text COMMENT 'Descripción',
  `dynamic_gallery_franquicia_principal` varchar(45) DEFAULT NULL COMMENT 'Imagen Principal',
  `checkbox_destacada_home` varchar(45) DEFAULT NULL COMMENT 'Destacar en la home (si/no)',
  `checkbox_destacada_alojamiento` varchar(45) DEFAULT NULL COMMENT 'Destacar en la página de alojamiento',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Tesimonials';



############################################################ offers  ############################################################################

CREATE TABLE `dynamic_offers` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `dynamic_offers_taxonomy` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Landing oferta',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Titulo Sobre Imagen',
  `text_body_title` varchar(75) DEFAULT NULL COMMENT 'Título de la oferta (en descripción)',
  `textarea_summary` text COMMENT 'Resumen de la oferta para el home',
  `textarea_description` text COMMENT 'Contenido de la página',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `text_mensaje_home` varchar(45) DEFAULT NULL COMMENT 'Info a destacar en el menú actividades',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 characters)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `position_copy1` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Promociones y Ofertas';


CREATE TABLE `dynamic_offers_taxonomy` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `dynamic_accion` int(11) DEFAULT '0' COMMENT 'Identificador de accion | venta | alquiler | compra',
  `dynamic_taxonomy_group` int(11) DEFAULT '0' COMMENT 'Tipo propiedad | piso | casa | local',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Cabecera',
  `text_body_title` varchar(75) DEFAULT NULL COMMENT 'Título de la página',
  `textarea_description` text COMMENT 'Contenido de la página',
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
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Landings ofertas';


############################################################## cron and automatitzation #####################################################################

CREATE TABLE `dynamic_cron` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador cron',
  `dynamic_user` int(11) UNIQUE NOT NULL DEFAULT '0' COMMENT 'Identificador usuario',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `text_direccion` varchar(255) DEFAULT NULL COMMENT 'Dirección http cron ejemplo: http://mispisos.com/fichero.xml',
  `status` varchar(128) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Cron Inmobiliarias y usuarios';

 
CREATE TABLE `dynamic_automatizacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador único automatización',
  `dynamic_user` int(11) DEFAULT '0' COMMENT 'Identificador tabla user',
  `language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `nombre` varchar(255) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Automatización fichero';

############################################################ system  ############################################################################

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL DEFAULT '0' COMMENT 'identificador de la session',
  `ip_address` varchar(45) NOT NULL DEFAULT '0' COMMENT 'dirección ip del cliente',
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL DEFAULT '0',
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci;
*/

# OJO HAY QUE REVISAR EL ID QUE ESTA COMO VARCHAR
CREATE TABLE `languages` (
  `id` int(11) NOT NULL  DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `name` varchar(45) DEFAULT NULL,
  `actived` smallint(4) NOT NULL DEFAULT '0',
  `default` smallint(4) NOT NULL DEFAULT '0',
  `locale` varchar(45) NOT NULL DEFAULT '',
  `text_lang` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci;


CREATE TABLE `message` (
  `id_indice` int(11) NOT NULL COMMENT 'Clave primaria',
  `id` bigint(20) NOT NULL,
  `id2` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `user1` bigint(20) NOT NULL,
  `user2` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `timestamp` int(10) NOT NULL,
  `user1read` varchar(3) NOT NULL,
  `user2read` varchar(3) NOT NULL,
  PRIMARY KEY (`id_indice`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci;


CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del registro usuario de la newsletter',
  `email` varchar(250) NOT NULL COMMENT 'email del usuario',
  `language` int(11) NOT NULL  DEFAULT '1' COMMENT 'Lenguagje aplicación',
  `status` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci;


CREATE TABLE `password_reset` (
  `id` int(11) NOT NULL COMMENT 'Clave primaria',
  `email` varchar(250) NOT NULL,
  `key` varchar(250) NOT NULL,
  `expDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci;


CREATE TABLE `preferences` (
  `id` int(11) NOT NULL DEFAULT '1',
  `scripts_body` text NOT NULL,
  `cache_time` int(11) NOT NULL DEFAULT '0',
  `with_thumbnail_high` int(11) NOT NULL DEFAULT '800',
  `with_thumbnail_low` int(11) DEFAULT '400',
  `with_thumbnail_mobile` int(11) DEFAULT '250',
  `text_mailform` varchar(255) DEFAULT NULL COMMENT 'Mail Formularios',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci;

# add constraints

############################################################## cron and automatitzation #####################################################################
# relación uno a varios
alter table `dynamic_automatizacion` add constraint `fk_automatizacion_constraint` foreign key (`dynamic_user`) references dynamic_user(`id`) 
on update cascade
on delete cascade;  

# relación uno a uno
alter table `dynamic_cron` add constraint `fk_dynamic_cron_constraint` foreign key (`dynamic_user`) references dynamic_user(`id`) 
on update cascade
on delete cascade;  


############################################################ rooms and characteristics ############################################################################
/*
# dynamic_inmovilla

# dynamic_rooms

# uno a uno
alter table `dynamic_room` add constraint `fk_dynamic_inmovilla_constraint` foreign key (`dynamic_inmovilla`) references dynamic_inmovilla(`id`) 
on update cascade
on delete cascade; 

# uno a varios
alter table `dynamic_room` add constraint `fk_dynamic_rooms_dynamic_user_constraint` foreign key (`dynamic_user`) references dynamic_user(`id`) 
on update cascade
on delete cascade; 

# uno a varios
alter table `dynamic_room` add constraint `fk_dynamic_rooms_dynamic_agente_inmobiliario_constraint` foreign key (`dynamic_agente_inmobiliario`) references dynamic_agente_inmobiliario(`id`) 
on update cascade
on delete cascade; 

# uno a varios
alter table `dynamic_room` add constraint `fk_dynamic_rooms_dynamic_taxonomy_constraint` foreign key (`dynamic_taxonomy`) references dynamic_taxonomy(`id`) 
on update cascade
on delete cascade; 

# uno a varios
alter table `dynamic_room` add constraint `fk_dynamic_rooms_dynamic_taxonomy_group_constraint` foreign key (`dynamic_taxonomy_group`) references dynamic_taxonomy_group(`id`) 
on update cascade
on delete cascade; 

# uno a varios
alter table `dynamic_room` add constraint `fk_dynamic_rooms_dynamic_geocountry_constraint` foreign key (`dynamic_geocountry`) references dynamic_geocountry(`id`) 
on update cascade
on delete cascade; 

# uno a varios
alter table `dynamic_room` add constraint `fk_dynamic_rooms_dynamic_georegion_constraint` foreign key (`dynamic_georegion`) references dynamic_georegion(`id`) 
on update cascade
on delete cascade; 

# uno a varios
alter table `dynamic_room` add constraint `fk_dynamic_rooms_dynamic_geocity_constraint` foreign key (`dynamic_geocity`) references dynamic_geocity(`id`) 
on update cascade
on delete cascade; 

# uno a varios
alter table `dynamic_room` add constraint `fk_dynamic_rooms_dynamic_geolocality_constraint` foreign key (`dynamic_geolocality`) references dynamic_geolocality(`id`) 
on update cascade
on delete cascade; 

# uno a varios
alter table `dynamic_room` add constraint `fk_dynamic_rooms_dynamic_geodistrict_constraint` foreign key (`dynamic_geodistrict`) references dynamic_geodistrict(`id`) 
on update cascade
on delete cascade; 

# uno a varios
alter table `dynamic_room` add constraint `fk_dynamic_rooms_dynamic_accion_constraint` foreign key (`dynamic_accion`) references dynamic_accion(`id`) 
on update cascade
on delete cascade; 

# uno a varios
alter table `dynamic_room` add constraint `fk_dynamic_rooms_dynamic_documents_inmo_constraint` foreign key (`dynamic_documents_inmo`) references dynamic_documents_inmo(`id`) 
on update cascade
on delete cascade; 

# uno a varios
alter table `dynamic_room` add constraint `fk_dynamic_rooms_dynamic_documents_usuario_constraint` foreign key (`dynamic_documents_usuario`) references dynamic_documents_usuario(`id`) 
on update cascade
on delete cascade; 

# uno a varios
alter table `dynamic_room` add constraint `fk_dynamic_rooms_dynamic_gallery_usuario_constraint` foreign key (`dynamic_gallery_usuario`) references dynamic_gallery_usuario(`id`) 
on update cascade
on delete cascade; 

# uno a varios
alter table `dynamic_room` add constraint `fk_dynamic_rooms_dynamic_gallery_inmo_constraint` foreign key (`dynamic_gallery_inmo`) references dynamic_gallery_inmo(`id`) 
on update cascade
on delete cascade; 


############################################################ users , agencies, business , agents , franquiciado  ############################################################################

# dynamic agencia
# uno a uno
alter table `dynamic_cron` add constraint `fk_dynamic_cron_constraint` foreign key (`dynamic_user`) references users(`id`) 
on update cascade
on delete cascade;   

# agente inmobiliario
# uno a uno
alter table `dynamic_agente_inmobiliario` add constraint `fk_dynamic_agente_inmobiliario_user_constraint` foreign key (`dynamic_user`) references users(`id`) 
on update cascade
on delete cascade;

# uno a varios
alter table `dynamic_agente_inmobiliario` add constraint `fk_dynamic_agente_inmobiliario_agencia_constraint` foreign key (`dynamic_agencia`) references dynamic_aagencia(`id`) 
on update cascade
on delete cascade;

# dynamic_gallery_agente_inmobiliario_principal
# uno a uno
alter table `dynamic_gallery_agente_inmobiliario_principal` add constraint `fk_dynamic_gallery_agente_inmobiliario_constraint` foreign key (`id_dynamic_agente_inmobiliario`) references dynamic_agente_inmobiliario(`id`) 
on update cascade
on delete cascade;

# dynamic_cron
# uno a uno
alter table `dynamic_cron` add constraint `fk_dynamic_gallery_agente_inmobiliario_constraint` foreign key (`id_dynamic_agente_inmobiliario`) references dynamic_agente_inmobiliario(`id`) 
on update cascade
on delete cascade;
*/

############################################################ users , agencies, business , agents , franquiciado  ############################################################################