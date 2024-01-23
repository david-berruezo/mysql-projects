# geo
CREATE TABLE `dynamic_geocountry` (
`id` int(11) NOT NULL COMMENT 'Título',
`language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
`text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
`status` varchar(128) DEFAULT NULL,
`position` int(11) NOT NULL DEFAULT '0',
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Geografic - Países';

CREATE TABLE `dynamic_georegion` (
`id` int(11) NOT NULL COMMENT 'Título',
`language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
`dynamic_geocountry` int(11) NOT NULL DEFAULT '0' COMMENT 'País',
`text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
`status` varchar(128) DEFAULT NULL,
`position` int(11) NOT NULL DEFAULT '0',
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Geografic - Regiones';


CREATE TABLE `dynamic_geocity` (
`id` int(11) NOT NULL COMMENT 'Título',
`language` int(11) NOT NULL DEFAULT '1' COMMENT 'Lenguagje aplicación',
`dynamic_georegion` int(11) NOT NULL DEFAULT '0' COMMENT 'Localities',
`text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
`status` varchar(128) DEFAULT NULL,
`position` int(11) NOT NULL DEFAULT '0',
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