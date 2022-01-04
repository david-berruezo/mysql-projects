CREATE DATABASE pisosenm_inmobiliaria_tres CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS `automatizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `automatizacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT 'es',
  `nombre` char(255) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Automatización fichero';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `avantio_inmovilla`
--

DROP TABLE IF EXISTS `avantio_inmovilla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `avantio_inmovilla` (
  `id` int(11) NOT NULL COMMENT 'Identificador único',
  `language` char(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguaje',
  `text_tipo_bano` char(100) DEFAULT 'es' COMMENT 'Tipo de  baño',
  `text_tipo_cocina` char(100) DEFAULT NULL COMMENT 'Tipo cocina',
  `text_tipo_fachada` char(100) DEFAULT NULL COMMENT 'Tipo de fachada',
  `text_carpinteria` char(100) DEFAULT NULL COMMENT 'Tipo de carpintería',
  `text_carpinteria_exterior` char(100) DEFAULT NULL COMMENT 'Tipo de caripintería exterior',
  `text_tipo_calefaccion` char(100) DEFAULT NULL COMMENT 'Tipo de calefacción',
  `text_tipo_exterior` char(100) DEFAULT NULL COMMENT 'Tipo exterior',
  `text_vistas` char(100) DEFAULT NULL COMMENT 'Tipo vistas',
  `text_aguacaliente` char(100) DEFAULT NULL COMMENT 'Tipo agua caliente',
  `text_tipo_suelo` char(100) DEFAULT NULL COMMENT 'Tipo de suelo',
  `text_superficie_terraza` char(100) DEFAULT NULL COMMENT 'Tipo superfície terraza',
  `text_tipo_postigo` char(100) DEFAULT NULL COMMENT 'Tipo de postigo',
  `number_superficie_util` mediumint(7) DEFAULT NULL COMMENT 'm² construidos',
  `number_superficie_parcela` mediumint(7) DEFAULT NULL COMMENT 'm² parcela',
  `number_superficie_construida` mediumint(7) DEFAULT NULL COMMENT 'm² útiles',
  `number_habdobles` tinyint(3) DEFAULT NULL COMMENT 'Num. hab. dobles',
  `number_habitaciones` tinyint(3) DEFAULT NULL COMMENT 'Núm habitaciones',
  `number_numero_plantas` tinyint(3) DEFAULT NULL COMMENT 'Total número plantas',
  `number_numero_planta` tinyint(3) DEFAULT NULL COMMENT 'Número planta',
  `number_banyos` tinyint(3) NOT NULL COMMENT 'Núm baños',
  `number_aseos` tinyint(3) DEFAULT NULL COMMENT 'Núm aseos',
  `number_gastos_comunidad` smallint(5) DEFAULT NULL COMMENT 'Gastos comunitarios',
  `number_metros_comedor` smallint(5) DEFAULT NULL COMMENT 'm² comedor',
  `number_metros_cocina` smallint(5) DEFAULT NULL COMMENT 'm² cocina',
  `number_distancia_del_mar` smallint(5) DEFAULT NULL COMMENT 'Distancia del mar',
  `number_metros_terraza` smallint(5) DEFAULT NULL COMMENT 'm² terraza',
  `checkbox_agua` tinyint(3) DEFAULT NULL COMMENT 'Agua',
  `checkbox_opcioncompra` tinyint(3) DEFAULT NULL COMMENT 'Opcion compra',
  `checkbox_salon` tinyint(3) DEFAULT NULL COMMENT 'Salón',
  `checkbox_airecentral` tinyint(3) DEFAULT NULL COMMENT 'Aire centralizado',
  `checkbox_aire_acondicionado` tinyint(3) DEFAULT NULL COMMENT 'Aire condicionado',
  `checkbox_alarma` tinyint(4) DEFAULT NULL COMMENT 'Alarma',
  `checkbox_alarma_incendio` tinyint(3) DEFAULT NULL COMMENT 'Alarma incendios',
  `checkbox_alarma_robo` tinyint(3) DEFAULT NULL COMMENT 'Alarma robo',
  `checkbox_adaptado_minusvalido` tinyint(3) DEFAULT NULL COMMENT 'Adaptado minusvalidos',
  `checkbox_armarios_empotrados` tinyint(3) DEFAULT NULL COMMENT 'Armario empotrado',
  `checkbox_caja_fuerte` tinyint(3) DEFAULT NULL COMMENT 'Caja fuerte',
  `checkbox_calefaccion_central` tinyint(3) DEFAULT NULL COMMENT 'Calefacción central',
  `checkbox_chimenea` tinyint(3) DEFAULT NULL COMMENT 'Chimenea',
  `checkbox_cocina_independiente` tinyint(3) DEFAULT NULL COMMENT 'Cocina independiente',
  `checkbox_gas_ciudad` tinyint(3) DEFAULT NULL COMMENT 'Gas',
  `checkbox_gimnasio` tinyint(3) DEFAULT NULL COMMENT 'Gimnasio',
  `checkbox_habitacion_juegos` tinyint(3) DEFAULT NULL COMMENT 'Habitación juegos',
  `checkbox_hidromasaje` tinyint(3) DEFAULT NULL COMMENT 'Hidromasaje',
  `checkbox_jacuzzi` tinyint(3) DEFAULT NULL COMMENT 'Jacuzzi',
  `checkbox_linea_teleronica` tinyint(3) DEFAULT NULL COMMENT 'Linea telf',
  `checkbox_muebles` tinyint(3) DEFAULT NULL COMMENT 'Muebles',
  `checkbox_ojo_de_buey` tinyint(3) DEFAULT NULL COMMENT 'Ojo de buey',
  `checkbox_tv` tinyint(3) DEFAULT NULL COMMENT 'Tv',
  `checkbox_balcon` tinyint(3) DEFAULT NULL COMMENT 'Balcon',
  `checkbox_barbacoa` tinyint(3) DEFAULT NULL COMMENT 'Barbacoa',
  `checkbox_terraza_acristalada` tinyint(3) DEFAULT NULL COMMENT 'Terraza de cristal',
  `checkbox_comunidad_incluida` tinyint(3) DEFAULT NULL COMMENT 'Comunidad incluida',
  `checkbox_ascensor` tinyint(3) DEFAULT NULL COMMENT 'Ascensor',
  `checkbox_bar` tinyint(3) DEFAULT NULL COMMENT 'Bar',
  `checkbox_deposito_agua` tinyint(3) DEFAULT NULL COMMENT 'Depósito agua',
  `checkbox_descalcificador` tinyint(4) DEFAULT NULL COMMENT 'Descalcificador',
  `checkbox_despensa` tinyint(3) DEFAULT NULL COMMENT 'Despensa',
  `checkbox_diafano` tinyint(3) DEFAULT NULL COMMENT 'Diáfano',
  `checkbox_esquina` tinyint(3) DEFAULT NULL COMMENT 'Esquina',
  `checkbox_galeria` tinyint(3) DEFAULT NULL COMMENT 'Galería',
  `checkbox_garaje_plazas` tinyint(3) DEFAULT NULL COMMENT 'Plaza de garaje',
  `checkbox_garaje_doble` tinyint(3) DEFAULT NULL COMMENT 'Tiene plaza de garaje doble',
  `checkbox_garaje_incluido` tinyint(3) DEFAULT NULL COMMENT 'Garaje incluido',
  `checkbox_lavanderia` tinyint(3) DEFAULT NULL COMMENT 'Lavandería',
  `checkbox_preinstalacion_aire_acondicionado` tinyint(3) DEFAULT NULL COMMENT 'Pre instalación a.c.c',
  `checkbox_luminoso` tinyint(3) DEFAULT NULL COMMENT 'Luminoso',
  `checkbox_luz` tinyint(3) DEFAULT NULL COMMENT 'Luz',
  `checkbox_piscina_comunitaria` tinyint(3) DEFAULT NULL COMMENT 'Piscina comunitaria',
  `checkbox_piscina_de_propiedad` tinyint(3) DEFAULT NULL COMMENT 'Piscina',
  `checkbox_primera_linea_de_mar` tinyint(3) DEFAULT NULL COMMENT 'Primera línia de mar',
  `checkbox_parking` tinyint(3) DEFAULT NULL COMMENT 'Parking',
  `checkbox_patio` tinyint(3) DEFAULT NULL COMMENT 'Patio',
  `checkbox_puerta_blindada` tinyint(3) DEFAULT NULL COMMENT 'Puerta blindada',
  `checkbox_sauna` tinyint(3) DEFAULT NULL COMMENT 'Sauna',
  `checkbox_solarium` tinyint(3) DEFAULT NULL COMMENT 'Solarium',
  `checkbox_sotano` tinyint(3) DEFAULT NULL COMMENT 'Sotano',
  `checkbox_trastero` tinyint(3) DEFAULT NULL COMMENT 'Trastero',
  `checkbox_satelite` tinyint(3) DEFAULT NULL COMMENT 'Satélite',
  `checkbox_urbanizacion` tinyint(3) DEFAULT NULL COMMENT 'Urbanización',
  `checkbox_vestuarios` tinyint(3) DEFAULT NULL COMMENT 'Vestuarios',
  `checkbox_videoportero` tinyint(3) DEFAULT NULL COMMENT 'Video portero',
  `checkbox_energialetra` tinyint(3) DEFAULT NULL COMMENT 'Energia alternativa',
  `checkbox_energiarecibido` tinyint(3) DEFAULT NULL COMMENT 'Energia recibidor',
  `checkbox_autobuses` tinyint(3) DEFAULT NULL COMMENT 'Autobuses',
  `checkbox_colegios` tinyint(3) DEFAULT NULL COMMENT 'Colegios',
  `checkbox_vistas` tinyint(3) DEFAULT NULL COMMENT 'Buenas vistas',
  `checkbox_zonas_infantiles` tinyint(3) DEFAULT NULL COMMENT 'Zonas infantiles',
  `checkbox_terraza` tinyint(3) DEFAULT NULL COMMENT 'Tiene terraza',
  `checkbox_calefaccion` tinyint(3) DEFAULT NULL COMMENT 'Tiene calefacción',
  `checkbox_puertas_automatico` tinyint(3) DEFAULT NULL COMMENT 'Tiene puertas automático',
  `checkbox_vistas_despejadas` tinyint(3) DEFAULT NULL COMMENT 'Tiene vistas despejadas',
  `checkbox_arboles` tinyint(3) DEFAULT NULL COMMENT 'Tiene arboles',
  `checkbox_centros_comerciales` tinyint(3) DEFAULT NULL COMMENT 'Tiene centros comerciales',
  `checkbox_vallado` tinyint(3) DEFAULT NULL COMMENT 'Tiene vallado',
  `checkbox_zona_montana` tinyint(3) DEFAULT NULL COMMENT 'Zona montaña',
  `checkbox_jardin` tinyint(3) DEFAULT NULL COMMENT 'Zona Jardin',
  `checkbox_zonas_verdes` tinyint(3) DEFAULT NULL COMMENT 'Zonas Verdes',
  `checkbox_bomba_frio_y_calor` tinyint(3) DEFAULT NULL COMMENT 'Bomba frío y calor',
  `checkbox_tren` tinyint(3) DEFAULT NULL COMMENT 'Tren cercano',
  `checkbox_aprt_separado` tinyint(3) DEFAULT NULL COMMENT 'Apart separado',
  `checkbox_buhardilla` tinyint(3) DEFAULT NULL COMMENT 'Buhardilla',
  `checkbox_hospitales` tinyint(3) DEFAULT NULL COMMENT 'Hospitales',
  `checkbox_acceso_pmr` tinyint(3) DEFAULT NULL COMMENT 'Acceso PMR',
  `checkbox_parking_opcional` tinyint(3) DEFAULT NULL COMMENT 'Parking Opcional',
  `checkbox_aire_acondicionado_centralizado` tinyint(3) DEFAULT NULL COMMENT 'Aire acondicionado centralizado',
  `checkbox_todo_exterior` tinyint(3) DEFAULT NULL COMMENT 'Todo exterior',
  `checkbox_garaje_opcional` tinyint(3) DEFAULT NULL COMMENT 'Garaje Opcional',
  `checkbox_mirador` tinyint(3) DEFAULT NULL COMMENT 'Mirador',
  `checkbox_montacargas` tinyint(3) DEFAULT NULL COMMENT 'Montacargas',
  `checkbox_parabolica` tinyint(3) DEFAULT NULL COMMENT 'Parabolica',
  `checkbox_pergola` tinyint(3) DEFAULT NULL COMMENT 'Pergola',
  `checkbox_linia_telefonica` tinyint(3) DEFAULT NULL COMMENT 'Linia Telefonica',
  `checkbox_electrodomesticos` tinyint(3) DEFAULT NULL COMMENT 'Electrodomesticos',
  `checkbox_zona_de_costa` tinyint(3) DEFAULT NULL COMMENT 'Zona de costa',
  `checkbox_golf` tinyint(3) DEFAULT NULL COMMENT 'Golf',
  `checkbox_trifasica` tinyint(3) DEFAULT NULL COMMENT 'Trifasica',
  `checkbox_riego_automatico` tinyint(3) DEFAULT NULL COMMENT 'Riego automático',
  `checkbox_tranvia` tinyint(3) DEFAULT NULL COMMENT 'Tranvia',
  `checkbox_hilo_musical` tinyint(3) DEFAULT NULL COMMENT 'Hilo Musical',
  `checkbox_altillo` tinyint(3) DEFAULT NULL COMMENT 'Altillo',
  `checkbox_puertas_automaticas` tinyint(3) DEFAULT NULL COMMENT 'Puertas automáticas',
  `checkbox_video_portero` tinyint(3) DEFAULT NULL COMMENT 'Video portero automático',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caracteristicas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) COLLATE utf8_general_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8_general_ci NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  `session_id` varchar(40) COLLATE utf8_general_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8_general_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contacto`
--

DROP TABLE IF EXISTS `contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8;
CREATE TABLE `contacto` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Información de contacto',
  `name` char(255) DEFAULT 'Nombre' COMMENT 'Nombre',
  `email` char(255) DEFAULT NULL COMMENT 'Email',
  `phone` char(255) DEFAULT NULL COMMENT 'Telf',
  `subject` char(255) DEFAULT NULL COMMENT 'Titulo',
  `form_message` char(255) DEFAULT NULL COMMENT 'Mensaje',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contacto';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `devices`
--

DROP TABLE IF EXISTS `devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `name` char(255) COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_accion`
--

DROP TABLE IF EXISTS `dynamic_accion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8 ;
CREATE TABLE `dynamic_accion` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT 'es',
  `text_title` char(255) DEFAULT NULL COMMENT 'Título Cabecera',
  `textarea_description` text COMMENT 'Contenido de la página',
  `text_body_title_no_res` char(255) DEFAULT NULL COMMENT 'Título de la página cuando NO se encuentran resultados',
  `textarea_description_no_res` text COMMENT 'Contenido de la página cuando NO se encuentran resultados',
  `text_page_title` char(255) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` char(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` char(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` char(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` char(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` char(255) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tipos Aciones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_advantages`
--

DROP TABLE IF EXISTS `dynamic_advantages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_advantages` (
  `id` int(11) NOT NULL,
  `language` char(3) NOT NULL DEFAULT 'es',
  `text_title` char(255) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `textarea_description` text COMMENT 'Descripción',
  `text_icon` char(255) DEFAULT NULL COMMENT 'Icon: ‘wifi’, ‘reloj’, ‘teleoperadora’, ‘dinero’, ‘bienvenido’, ‘llave’',
  `checkbox_destacada_home` tinyint(3) DEFAULT NULL COMMENT 'Destacar en la home (si/no)',
  `checkbox_destacada_alojamiento` tinyint(3) DEFAULT NULL COMMENT 'Destacar en la página de alojamiento',
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Ventajas';
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `dynamic_agencia`
--

DROP TABLE IF EXISTS `dynamic_agencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8;
CREATE TABLE `dynamic_agencia` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT 'es',
  `text_title` char(255) DEFAULT NULL COMMENT 'Título Cabecera',
  `number_telf` varchar(20) DEFAULT '0' COMMENT 'Número de teléfono',
  `number_mobile` varchar(20) DEFAULT '0' COMMENT 'Número de movil',
  `number_fax` varchar(20) DEFAULT '0' COMMENT 'Número de fax',
  `text_direccion` char(255) DEFAULT NULL COMMENT 'Dirección de la agencia',
  `text_email` char(255) DEFAULT NULL COMMENT 'Email',
  `text_website` char(255) DEFAULT NULL COMMENT 'Web',
  `text_facebook` char(255) DEFAULT NULL COMMENT 'Facebook',
  `text_twitter` char(255) DEFAULT NULL COMMENT 'Twitter',
  `text_instagram` char(255) DEFAULT NULL COMMENT 'Instagram',
  `text_pinterest` char(255) DEFAULT NULL COMMENT 'Pinterest',
  `text_google_plus` char(255) DEFAULT NULL COMMENT 'Google Plus',
  `text_body_title` char(255) DEFAULT NULL COMMENT 'Título de la página',
  `textarea_description` text COMMENT 'Contenido de la página',
  `text_latitud` char(255) DEFAULT '0' COMMENT 'Latitud google maps',
  `text_longitud` char(255) DEFAULT '0' COMMENT 'Longitud google maps',
  `text_page_title` char(255) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` char(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` char(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` char(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` char(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `text_meta_robots` char(255) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Agencias Inmobiliarias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_agente_inmobiliario`
--

DROP TABLE IF EXISTS `dynamic_agente_inmobiliario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_agente_inmobiliario` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador agente inmobiliario',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguaje aplicación',
  `dynamic_agencia` int(11) DEFAULT NULL COMMENT 'Identificador de agencia',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `text_email` char(255) DEFAULT NULL COMMENT 'Dirección de email',
  `text_website` varchar(255) DEFAULT NULL COMMENT 'Web',
  `text_facebook` varchar(255) DEFAULT NULL COMMENT 'Facebook',
  `text_twitter` varchar(255) DEFAULT NULL COMMENT 'Twitter',
  `text_instagram` varchar(255) DEFAULT NULL COMMENT 'Instagram',
  `text_pinterest` varchar(255) DEFAULT NULL COMMENT 'Pinterest',
  `text_google_plus` varchar(255) DEFAULT NULL COMMENT 'Google Plus',
  `number_telf` varchar(20) DEFAULT '0' COMMENT 'Telefono Agente inmobiliario',
  `number_mobile`  varchar(20) DEFAULT '0' COMMENT 'Telefono movil',
  `number_fax` varchar(20) DEFAULT '0' COMMENT 'Fax',
  `image_principal` varchar(255) DEFAULT NULL COMMENT 'Imagen principal',
  `textarea_description` text COMMENT 'Descripción',
  `text_latitud` varchar(20) DEFAULT '0' COMMENT 'Latitud google maps',
  `text_longitud` varchar(20) DEFAULT '0' COMMENT 'Longitud google maps',
  `text_page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Título sobre el alojamiento',
  `auto_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `text_meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Meta Keywords (máx 255 characters)',
  `text_meta_robots` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `text_meta_description` mediumtext CHARACTER SET utf8mb4 COMMENT 'Meta Description (max 255 characters)',
  `textarea_scripts_header` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Agentes Inmobiliarios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_cron`
--

DROP TABLE IF EXISTS `dynamic_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_cron` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador cron',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguaje cron',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `text_direccion` char(255) DEFAULT NULL COMMENT 'Dirección http cron ejemplo: http://mispisos.com/fichero.xml',
  `dynamic_agencia` int(11) DEFAULT NULL COMMENT 'Identificador de agencia',
  `dynamic_usuario` int(11) DEFAULT NULL COMMENT 'Identificador de usuario',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(75) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Short url (slug)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters) ',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters) ',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;) ',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;) ',
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Inmobiliarias y usuarios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_documents_inmo`
--

DROP TABLE IF EXISTS `dynamic_documents_inmo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_documents_inmo` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` text COMMENT 'Título Bloque',
  `dynamic_usuario` int(11) DEFAULT '0' COMMENT 'Identificador de usuario',
  `dynamic_agencia` int(11) DEFAULT '0' COMMENT 'Identificador de agencia',
  `document_documento1` varchar(255) DEFAULT NULL COMMENT 'Documento 1',
  `text_titulo1` varchar(75) DEFAULT NULL COMMENT 'Título 1',
  `document_documento2` varchar(255) DEFAULT NULL COMMENT 'Documento 2',
  `text_titulo2` varchar(75) DEFAULT NULL COMMENT 'Título 2',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8 COMMENT='Documentos inmobiliaria';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_documents_usuario`
--

DROP TABLE IF EXISTS `dynamic_documents_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_documents_usuario` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
  `document_documento1` varchar(255) DEFAULT NULL COMMENT 'Documento 1',
  `text_titulo1` varchar(75) DEFAULT NULL COMMENT 'Título 1',
  `document_documento2` varchar(255) DEFAULT NULL COMMENT 'Documento 2',
  `text_titulo2` varchar(75) DEFAULT NULL COMMENT 'Título 2',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Documentos usuario';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_empresa`
--

DROP TABLE IF EXISTS `dynamic_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_empresa` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador de la empresa',
  `language` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'es' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Titulo',
  `text_subtitle` varchar(255) DEFAULT NULL COMMENT 'Subtítulo',
  `number_telf` varchar(20) DEFAULT NULL COMMENT 'telf',
  `number_mobile` varchar(20) DEFAULT NULL COMMENT 'mobile',
  `number_fax` varchar(20) DEFAULT NULL COMMENT 'fax',
  `text_direccion` char(255) DEFAULT NULL COMMENT 'dirección',
  `text_email` char(255) DEFAULT NULL COMMENT 'email',
  `text_website` varchar(255) DEFAULT NULL COMMENT 'website',
  `dynamic_taxonomy_group` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Grupo tipo de inmueble piso, casa',
  `dynamic_geolocality` int(11) DEFAULT '0' COMMENT 'Población',
  `dynamic_accion` int(11) DEFAULT '0' COMMENT 'Comprar | Alquilar | Compartir',
  `dynamic_gallery_empresa` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Galería Fotos',
  `textarea_description` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Descripción principal',
  `textarea_description_2` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Descripción secundaria',
  `textarea_interior` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Descripción opcional (No visible)',
  `text_latitud` varchar(20) DEFAULT NULL COMMENT 'latitud',
  `text_longitud` varchar(20) DEFAULT NULL COMMENT 'longitud',
  `text_body_title` varchar(75) DEFAULT NULL COMMENT 'text_body_title',
  `text_facebook` varchar(255) DEFAULT NULL COMMENT 'facebook',
  `text_twitter` varchar(255) DEFAULT NULL COMMENT 'twitter',
  `text_instagram` varchar(255) DEFAULT NULL COMMENT 'instagram',
  `text_pinterest` varchar(255) DEFAULT NULL COMMENT 'pinterest',
  `text_google_plus` varchar(255) DEFAULT NULL COMMENT 'text_google_plus',
  `google_place_id` varchar(255) DEFAULT '' COMMENT 'id google places',
  `google_url` varchar(255) DEFAULT '' COMMENT 'url google maps',
  `checkbox_destacado_provincia` tinyint(4) DEFAULT '0' COMMENT 'Destacado página población',
  `checkbox_destacado_listado_inmobiliarias` tinyint(4) DEFAULT '0' COMMENT 'Destacado página listado inmobiliarias',
  `checkbox_destacado_detalle_inmobiliaria` tinyint(4) DEFAULT '0' COMMENT 'Destacado página detalle inmobiliaria',
  `checkbox_destacado_detalle_propiedad` tinyint(4) DEFAULT '0' COMMENT 'Destacado página detalle propiedad',
  `checkbox_destacado_buscador` int(11) DEFAULT NULL COMMENT 'checkbox destacado buscador',
  `text_page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Título sobre el alojamiento',
  `auto_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `text_meta_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Meta Keywords (máx 255 characters)',
  `text_meta_robots` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `text_meta_description` mediumtext CHARACTER SET utf8mb4 COMMENT 'Meta Description (max 255 characters)',
  `textarea_scripts_header` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Listado Empresas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_faqsagentes`
--

DROP TABLE IF EXISTS `dynamic_faqsagentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_faqsagentes` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'lenguage',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `dynamic_faqsagentes_type` int(11) DEFAULT NULL COMMENT 'faq propietarios',
  `textarea_description` text COMMENT 'Descripción',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywordds',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` char(6) DEFAULT NULL,
  `position` int(11) DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Faq Agentes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_faqsagentes_type`
--

DROP TABLE IF EXISTS `dynamic_faqsagentes_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_faqsagentes_type` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'lenguage',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywordds',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` char(6) DEFAULT NULL,
  `position` int(11) DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tipos Faq Agentes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_faqsinmobiliarias`
--

DROP TABLE IF EXISTS `dynamic_faqsinmobiliarias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_faqsinmobiliarias` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'lenguage',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `dynamic_faqsinmobiliarias_type` int(11) DEFAULT NULL COMMENT 'faq propietarios',
  `textarea_description` text COMMENT 'Descripción',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywordds',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` char(6) DEFAULT NULL,
  `position` int(11) DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Faq Inmobiliarias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_faqsinmobiliarias_type`
--

DROP TABLE IF EXISTS `dynamic_faqsinmobiliarias_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_faqsinmobiliarias_type` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'lenguage',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywordds',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` char(6) DEFAULT NULL,
  `position` int(11) DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tipos Faq Inmobiliarias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_faqspropietarios`
--

DROP TABLE IF EXISTS `dynamic_faqspropietarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_faqspropietarios` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'lenguage',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `dynamic_faqspropietarios_type` int(11) DEFAULT NULL COMMENT 'faq propietarios',
  `textarea_description` text COMMENT 'Descripción',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywordds',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` char(6) DEFAULT NULL,
  `position` int(11) DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Faq Propietarios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_faqspropietarios_type`
--

DROP TABLE IF EXISTS `dynamic_faqspropietarios_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_faqspropietarios_type` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'lenguage',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Titulo pagina',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Manual slug',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywordds',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Robots',
  `textarea_scripts_header` text COMMENT 'Scripts header',
  `textarea_scripts_body` text COMMENT 'Scripts body',
  `status` char(6) DEFAULT NULL,
  `position` int(11) DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tipos Faq Propietarios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_franquicia`
--

DROP TABLE IF EXISTS `dynamic_franquicia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_franquicia` (
  `id` int(11) NOT NULL COMMENT 'identificador',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguaje',
  `dynamic_gallery_franquicia_principal` varchar(45) DEFAULT '' COMMENT 'Galeria Franquicia',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Titulo',
  `text_firstname` varchar(75) DEFAULT NULL COMMENT 'Nombre',
  `text_lastname` varchar(75) DEFAULT NULL COMMENT 'Apellido',
  `number_telf` varchar(20) DEFAULT '0' COMMENT 'Telefono',
  `number_telf_mobil` varchar(20) DEFAULT '0' COMMENT 'Telefono mobil',
  `email` varchar(75) DEFAULT NULL COMMENT 'Email',
  `text_direccion` char(255) DEFAULT NULL COMMENT 'Dirección',
  `textarea_description` text COMMENT 'Descripción',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Page Title',
  `text_slug` varchar(255) DEFAULT NULL COMMENT 'Text slug',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Text Meta Keywords',
  `textarea_scripts_header` text COMMENT 'Text Meta Scripts header',
  `textarea_scripts_body` text COMMENT 'Text Meta Scripts body',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Text Meta Keywords',
  `auto_slug` varchar(255) DEFAULT NULL COMMENT 'Auto slug',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Text Meta Robots',
  `status` char(6) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Datos Franquicia';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_gallery_agente_inmobiliario_principal`
--

DROP TABLE IF EXISTS `dynamic_gallery_agente_inmobiliario_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_gallery_agente_inmobiliario_principal` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `dynamic_agente_inmobiliario` int(10) DEFAULT '0' COMMENT 'Agente Inmobiliario',
  `dynamic_agencia` int(10) DEFAULT '0' COMMENT 'Agencia Inmobiliario',
  `zipstatus` varchar(128) DEFAULT NULL,
  `image_principal` varchar(255) DEFAULT NULL,
  `text_title` varchar(75) DEFAULT NULL,
  `text_alt` varchar(75) DEFAULT NULL,
  `imagethn_principal` varchar(255) DEFAULT NULL,
  `text_importada` int(11) DEFAULT NULL,
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Agente Inmobiliario Principal';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_gallery_empresa`
--

DROP TABLE IF EXISTS `dynamic_gallery_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_gallery_empresa` (
  `id` int(11) NOT NULL COMMENT 'identificador de las imágenes',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguagje aplicación',
  `dynamic_empresa` int(11) DEFAULT '0' COMMENT 'Empresa',
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
  `status` char(6) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Galeria empresas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_gallery_empresa_banner`
--

DROP TABLE IF EXISTS `dynamic_gallery_empresa_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_gallery_empresa_banner` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador de la galeria',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguagje aplicación',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Titulo',
  `zipstatus` varchar(255) DEFAULT NULL COMMENT 'Zip Status',
  `text_alt` varchar(255) DEFAULT NULL COMMENT 'Text alt',
  `image_principal` varchar(255) DEFAULT NULL COMMENT 'Image principal',
  `text_importada` varchar(255) DEFAULT NULL COMMENT 'Text importada',
  `imagethn_principal` varchar(255) DEFAULT NULL COMMENT 'Imageth principal',
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Galería empresa baner';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_gallery_empresa_principal`
--

DROP TABLE IF EXISTS `dynamic_gallery_empresa_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_gallery_empresa_principal` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `zipstatus` varchar(128) DEFAULT NULL,
  `image_principal` varchar(255) DEFAULT NULL,
  `text_title` varchar(75) DEFAULT NULL,
  `text_alt` varchar(75) DEFAULT NULL,
  `imagethn_principal` varchar(255) DEFAULT NULL,
  `text_importada` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gallery Empresa Principal';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_gallery_franquicia_principal`
--

DROP TABLE IF EXISTS `dynamic_gallery_franquicia_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_gallery_franquicia_principal` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `zipstatus` varchar(128) DEFAULT NULL,
  `image_principal` varchar(255) DEFAULT NULL,
  `text_title` varchar(75) DEFAULT NULL,
  `text_alt` varchar(75) DEFAULT NULL,
  `imagethn_principal` varchar(255) DEFAULT NULL,
  `text_importada` int(11) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gallery Franquicia Principal';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_gallery_inmo`
--

DROP TABLE IF EXISTS `dynamic_gallery_inmo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_gallery_inmo` (
  `id` int(11) NOT NULL COMMENT 'identificador de las imágenes',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'Idioma',
  `zipstatus` varchar(128) DEFAULT NULL,
  `text_title` text COMMENT 'titulo de la galería del imueble',
  `dynamic_agencia` varchar(45) DEFAULT '' COMMENT 'Agencia',
  `dynamic_usuario` varchar(45) DEFAULT NULL COMMENT 'Usuario',
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
  `position` varchar(45) DEFAULT '' COMMENT 'Position',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8 COMMENT='Galeria inmuebles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_gallery_inmo_principal`
--

DROP TABLE IF EXISTS `dynamic_gallery_inmo_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_gallery_inmo_principal` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL,
  `zipstatus` varchar(128) DEFAULT NULL,
  `text_alt` varchar(75) DEFAULT NULL,
  `image_principal` varchar(255) DEFAULT NULL,
  `text_importada` int(11) DEFAULT NULL,
  `imagethn_principal` varchar(255) DEFAULT NULL,
  `dynamic_agencia` varchar(45) DEFAULT '' COMMENT 'Agencia',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Galeria Perfil';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_gallery_usuario`
--

DROP TABLE IF EXISTS `dynamic_gallery_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_gallery_usuario` (
  `id` int(11) NOT NULL COMMENT 'identificador de las imágenes',
  `language` varchar(3) DEFAULT 'es' COMMENT 'Idioma',
  `zipstatus` varchar(128) DEFAULT NULL,
  `text_title` varchar(75) DEFAULT NULL COMMENT 'titulo',
  `dynamic_usuario` varchar(45) DEFAULT '' COMMENT 'Usuario',
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
  `position` varchar(45) DEFAULT '' COMMENT 'Position',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Galerias Usuarios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_gallery_usuario_principal`
--

DROP TABLE IF EXISTS `dynamic_gallery_usuario_principal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_gallery_usuario_principal` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Bloque',
  `zip_status` varchar(128) DEFAULT NULL,
  `text_alt` varchar(75) DEFAULT NULL COMMENT 'Alt imagen',
  `image_principal` varchar(255) DEFAULT NULL COMMENT 'Imagen principal',
  `text_importada` int(11) DEFAULT NULL COMMENT 'Text Importada',
  `imagethn_principal` varchar(255) DEFAULT NULL COMMENT 'Imagen principal oculta',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Galeria usuario principal';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_geocity`
--

DROP TABLE IF EXISTS `dynamic_geocity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_geocity` (
  `id` int(11) NOT NULL COMMENT 'Título',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `dynamic_georegion` int(11) NOT NULL DEFAULT '0' COMMENT 'Región',
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Geografic - Ciudades';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_geocountry`
--

DROP TABLE IF EXISTS `dynamic_geocountry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_geocountry` (
  `id` int(11) NOT NULL COMMENT 'Título',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Geografic - Países';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_geodistrict`
--

DROP TABLE IF EXISTS `dynamic_geodistrict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_geodistrict` (
  `id` int(11) NOT NULL COMMENT 'Título',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` char(5) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `text_postalcode` char(5) DEFAULT NULL COMMENT 'Código Postal',
  `dynamic_geolocality` int(11) NOT NULL DEFAULT '0' COMMENT 'Localidad',
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Geografic - Distritos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_geolocality`
--

DROP TABLE IF EXISTS `dynamic_geolocality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_geolocality` (
  `id` int(11) NOT NULL COMMENT 'Título',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `dynamic_geocity` int(11) NOT NULL DEFAULT '0' COMMENT 'Ciudad',
  `number_release` int(11) DEFAULT '2' COMMENT 'Días de Release',
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `text_geo_latitud` varchar(45) NOT NULL DEFAULT '' COMMENT 'Latitud GPS',
  `text_geo_longitud` varchar(45) NOT NULL DEFAULT '' COMMENT 'Longitud GPS',
  `status_realstate` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Geografic - Localidades';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_georegion`
--

DROP TABLE IF EXISTS `dynamic_georegion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_georegion` (
  `id` int(11) NOT NULL COMMENT 'Título',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título (máximo 255 caracteres)',
  `dynamic_geocountry` int(11) NOT NULL DEFAULT '0' COMMENT 'País',
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Geografic - Regiones';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_mail_empresa`
--

DROP TABLE IF EXISTS `dynamic_mail_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_mail_empresa` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `dynamic_mail_tipo_portal` int(11) NOT NULL DEFAULT '0' COMMENT 'Dynamic tipo portal',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Empresa',
  `text_nombre_empresa` varchar(128) DEFAULT NULL COMMENT 'Nombre Empresa',
  `text_nombre_empresa_comercial` varchar(128) DEFAULT NULL COMMENT 'Nombre Empresa Comercial',
  `text_direccion` char(255) DEFAULT NULL COMMENT 'Nombre Dirección',
  `dynamic_geolocality` smallint(3) DEFAULT NULL COMMENT 'Nombre Localidad',
  `dynamic_geodistrict` smallint(3) DEFAULT NULL COMMENT 'Nombre código postal',
  `text_phone` varchar(75) DEFAULT NULL COMMENT 'Telf',
  `text_web` varchar(128) DEFAULT NULL COMMENT 'Web',
  `text_email` char(255) DEFAULT NULL COMMENT 'Email',
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
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mail empresa';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_mail_tipo_portal`
--

DROP TABLE IF EXISTS `dynamic_mail_tipo_portal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_mail_tipo_portal` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Tipo Empresa',
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
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tipo portal';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_offers`
--

DROP TABLE IF EXISTS `dynamic_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_offers` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Titulo Sobre Imagen',
  `dynamic_gallery` varchar(45) DEFAULT NULL COMMENT 'Imagen Principal',
  `text_body_title` varchar(75) DEFAULT NULL COMMENT 'Título de la oferta (en descripción)',
  `dynamic_offers_taxonomy` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Landing oferta',
  `textarea_summary` text COMMENT 'Resumen de la oferta para el home',
  `textarea_description` text COMMENT 'Contenido de la página',
  `status` char(6) DEFAULT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Promociones y Ofertas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_offers_taxonomy`
--

DROP TABLE IF EXISTS `dynamic_offers_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_offers_taxonomy` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Cabecera',
  `dynamic_accion` int(11) DEFAULT '0' COMMENT 'Identificador de accion | venta | alquiler | compra',
  `dynamic_taxonomy_group` int(11) DEFAULT '0' COMMENT 'Tipo propiedad | piso | casa | local',
  `dynamic_gallery` varchar(45) DEFAULT NULL COMMENT 'Imagen Principal',
  `dynamic_gallery_home` varchar(45) DEFAULT '0' COMMENT 'Galeria home',
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
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Landings ofertas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_pages`
--

DROP TABLE IF EXISTS `dynamic_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_pages` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_section` varchar(75) NOT NULL DEFAULT '' COMMENT 'Nombre página estática (sólo para tabla admin)',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Cabecera',
  `text_subtitle` varchar(100) DEFAULT NULL COMMENT 'Subtítulo Cabecera (máx 100 carácteres)',
  `dynamic_gallery_franquicia_principal` varchar(45) DEFAULT NULL COMMENT 'Imagen Principal',
  `text_body_title` varchar(120) DEFAULT NULL COMMENT 'Título de la página (H1)',
  `textarea_description` text COMMENT 'Contenido de la página',
  `text_dtitle_1` varchar(75) DEFAULT NULL COMMENT 'Título 1',
  `text_dsubtitle_1` varchar(75) DEFAULT NULL COMMENT 'Subtítulo 1',
  `dynamic_gallery_1` varchar(45) DEFAULT NULL COMMENT 'Imagen 1',
  `textarea_ddescription_1` text COMMENT 'Descripción 1',
  `text_dtitle_2` varchar(75) DEFAULT NULL COMMENT 'Título 2',
  `text_dsubtitle_2` varchar(75) DEFAULT NULL COMMENT 'Subtítulo 2',
  `dynamic_gallery_2` varchar(45) DEFAULT NULL COMMENT 'Imagen 2',
  `textarea_ddescription_2` text COMMENT 'Descripción 2',
  `text_dtitle_3` varchar(75) DEFAULT NULL COMMENT 'Título 3',
  `text_dsubtitle_3` varchar(75) DEFAULT NULL COMMENT 'Subtítulo 3',
  `dynamic_gallery_3` varchar(45) DEFAULT NULL COMMENT 'Imagen 3',
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
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Páginas estáticas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_rooms`
--

DROP TABLE IF EXISTS `dynamic_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_rooms` (
  `id` int(11) NOT NULL DEFAULT '0' COMMENT 'Identificador del inmueble',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguagje aplicación',
  `text_title` text COMMENT 'Titulo',
  `text_subtitle` text COMMENT 'Subtítulo',
  `text_ref` varchar(255) DEFAULT NULL COMMENT 'Referencia',
  `dynamic_agencia` int(11) NOT NULL DEFAULT '0' COMMENT 'Agéncia inmobiliaria',
  `dynamic_agente_inmobiliario` int(11) DEFAULT '0' COMMENT 'Agente inmobiliario',
  `dynamic_usuario` int(11) NOT NULL DEFAULT '0' COMMENT 'Usuario',
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
  `textarea_interior` mediumtext COMMENT 'Descripción opcional (No visible)',
  `checkbox_destacado` tinyint(45) DEFAULT '0' COMMENT 'Destacado',
  `checkbox_destacado_home` tinyint(4) DEFAULT '0' COMMENT 'Destacado página  home',
  `checkbox_destacado_provincia` tinyint(4) DEFAULT '0' COMMENT 'Destacado página población',
  `checkbox_destacado_taxonomia` tinyint(4) DEFAULT '0' COMMENT 'Destacado página población por tipo inmueble',
  `checkbox_destacado_listado_inmobiliarias` tinyint(4) DEFAULT '0' COMMENT 'Destacado página listado inmobiliarias',
  `checkbox_destacado_detalle_inmobiliaria` tinyint(4) DEFAULT '0' COMMENT 'Destacado página detalle inmobiliaria',
  `checkbox_destacado_listado_blog` tinyint(4) DEFAULT '0' COMMENT 'Destacado página listado notícias blog',
  `checkbox_destacado_detalle_blog` tinyint(4) DEFAULT '0' COMMENT 'Destacado página detalle notícia blog',
  `checkbox_destacado_detalle_propiedad` tinyint(4) DEFAULT '0' COMMENT 'Destacado página detalle propiedad',
  `checkbox_destacado_detalle_inmobiliaria_lateral` int(11) DEFAULT '0' COMMENT 'Agente inmobiliario',
  `checkbox_destacado_oferta` tinyint(4) DEFAULT '0' COMMENT 'Destacado en página de ofertas',
  `checkbox_oferta` tinyint(4) DEFAULT '0' COMMENT 'Página de Oferta en listados',
  `checkbox_destacado_newsletter` tinyint(4) DEFAULT '0' COMMENT 'Mostrar correo newsletter',
  `checkbox_destacado_agente` smallint(45) DEFAULT '0' COMMENT 'Destacado agente',
  `checkbox_destacado_home_agente` smallint(4) DEFAULT '0' COMMENT 'Destacado página  home agente',
  `checkbox_destacado_provincia_agente` smallint(4) DEFAULT '0' COMMENT 'Destacado página población agente',
  `checkbox_destacado_taxonomia_agente` smallint(4) DEFAULT '0' COMMENT 'Destacado página población por tipo inmueble agente',
  `checkbox_destacado_listado_inmobiliarias_agente` smallint(4) DEFAULT '0' COMMENT 'Destacado página listado inmobiliarias agente',
  `checkbox_destacado_detalle_inmobiliaria_agente` smallint(4) DEFAULT '0' COMMENT 'Destacado página detalle inmobiliaria agente',
  `checkbox_destacado_listado_blog_agente` smallint(4) DEFAULT '0' COMMENT 'Destacado página listado notícias blog agente',
  `checkbox_destacado_detalle_blog_agente` smallint(4) DEFAULT '0' COMMENT 'Destacado página detalle notícia blog agente',
  `checkbox_destacado_detalle_propiedad_agente` smallint(4) DEFAULT '0' COMMENT 'Destacado página detalle propiedad agente',
  `checkbox_destacado_oferta_agente` smallint(4) DEFAULT '0' COMMENT 'Destacado en página de ofertas agente',
  `checkbox_oferta_agente` smallint(4) DEFAULT '0' COMMENT 'Página de Oferta en listados agente',
  `checkbox_destacado_newsletter_agente` smallint(4) DEFAULT '0' COMMENT 'Mostrar correo newsletter agente',
  `checkbox_vistos_recientemente_provincia` tinyint(4) DEFAULT '0' COMMENT 'Vistos recientemente página provincia',
  `checkbox_vistos_recientemente_taxonomia` tinyint(4) DEFAULT '0' COMMENT 'Vistos recientemente página por tipo piso',
  `checkbox_vistos_recientemente_listado_inmobiliarias` tinyint(4) DEFAULT '0' COMMENT 'Vistos recientemente página listado inmobiliarias',
  `checkbox_vistos_recientemente_detalle_inmobiliarias` tinyint(4) DEFAULT '0' COMMENT 'Vistos recientemente página detalle inmobiliarias',
  `checkbox_vistos_recientemente_listado_blog` tinyint(4) DEFAULT '0' COMMENT 'Vistos recientemente página listado blog',
  `checkbox_vistos_recientemente_detalle_blog` tinyint(4) DEFAULT '0' COMMENT 'Vistos recientemente página detalle blog',
  `checkbox_vistos_recientemente_detalle_propiedad` tinyint(4) DEFAULT '0' COMMENT 'Vistos recientemente página detalle propiedad',
  `checkbox_vistos_recientemente_provincia_agente` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página provincia agente',
  `checkbox_vistos_recientemente_taxonomia_agente` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página por tipo piso agente',
  `checkbox_vistos_recientemente_listado_inmobiliarias_agente` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página listado inmobiliarias agente',
  `checkbox_vistos_recientemente_detalle_inmobiliarias_agente` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página detalle inmobiliarias agente',
  `checkbox_vistos_recientemente_listado_blog_agente` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página listado blog agente',
  `checkbox_vistos_recientemente_detalle_blog_agente` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página detalle blog agente',
  `checkbox_vistos_recientemente_detalle_propiedad_agente` smallint(4) DEFAULT '0' COMMENT 'Vistos recientemente página detalle propiedad agente',
  `text_page_title` text COMMENT 'Título sobre el alojamiento',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `text_meta_keywords` text COMMENT 'Meta Keywords (máx 255 characters)',
  `text_meta_robots` varchar(255) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `text_meta_description` text COMMENT 'Meta Description (max 255 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPRESSED KEY_BLOCK_SIZE=8 COMMENT='Listado Inmuebles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_taxonomy`
--

DROP TABLE IF EXISTS `dynamic_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_taxonomy` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título de la Taxonomía (en cabecera)',
  `text_title_plural` varchar(255) DEFAULT NULL COMMENT 'Título de la Taxonomía (plural, en cabecera)',
  `text_subtitle` varchar(255) NOT NULL DEFAULT '' COMMENT 'Subtítulo de la Cabecera',
  `dynamic_taxonomy_group` varchar(45) DEFAULT NULL COMMENT 'Grupos de taxonomias',
  `dynamic_gallery_inmo` varchar(45) DEFAULT NULL COMMENT 'Imagen Principal',
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
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  `status_realstate` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Taxonomías - Pisos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_taxonomy_city`
--

DROP TABLE IF EXISTS `dynamic_taxonomy_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_taxonomy_city` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título Cabecera',
  `dynamic_gallery` varchar(45) DEFAULT NULL COMMENT 'Imagen Principal',
  `dynamic_gallery_home` varchar(45) DEFAULT NULL COMMENT 'Miniatura landing home',
  `text_body_title` varchar(75) DEFAULT NULL COMMENT 'Título de la página',
  `dynamic_accion` int(11) DEFAULT '0' COMMENT 'Identificador de accion | venta | alquiler | compra',
  `dynamic_taxonomy_group` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Taxonomía Grupo',
  `dynamic_geolocality` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Avantio Localidad',
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
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Landings destino';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_taxonomy_group`
--

DROP TABLE IF EXISTS `dynamic_taxonomy_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_taxonomy_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `language` varchar(3) NOT NULL DEFAULT 'es' COMMENT 'Lenguage',
  `text_title` varchar(255) DEFAULT NULL COMMENT 'Título del grupo',
  `text_title_plural` varchar(255) DEFAULT NULL COMMENT 'Plurarl de la taxonomia',
  `text_subtitle` varchar(255) DEFAULT NULL COMMENT 'Título del grupo',
  `dynamic_gallery_inmo` varchar(45) DEFAULT NULL COMMENT 'Galeía de imágenes',
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
  `status` char(6) DEFAULT NULL,
  `position` int(11) DEFAULT NULL COMMENT 'Posición',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Tax- Grupos - Pisos';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_testimonials`
--

DROP TABLE IF EXISTS `dynamic_testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_testimonials` (
  `id` int(11) NOT NULL,
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `text_business` varchar(75) DEFAULT NULL COMMENT 'Título (75 carácteres)',
  `textarea_description` text COMMENT 'Descripción',
  `dynamic_gallery_franquicia_principal` varchar(45) DEFAULT NULL COMMENT 'Imagen Principal',
  `checkbox_destacada_home` varchar(45) DEFAULT NULL COMMENT 'Destacar en la home (si/no)',
  `checkbox_destacada_alojamiento` varchar(45) DEFAULT NULL COMMENT 'Destacar en la página de alojamiento',
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tesimonials';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dynamic_usuario`
--

DROP TABLE IF EXISTS `dynamic_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dynamic_usuario` (
  `id` int(11) NOT NULL DEFAULT '0',
  `language` varchar(3) NOT NULL DEFAULT 'es',
  `text_title` varchar(75) DEFAULT NULL COMMENT 'Titulo usuario',
  `text_firstname` varchar(75) DEFAULT NULL COMMENT 'Título Nombre',
  `text_lastname` varchar(20) DEFAULT '' COMMENT 'Apellido',
  `number_telf` varchar(20) DEFAULT '' COMMENT 'Telf',
  `number_telf_mobil` varchar(20) DEFAULT '' COMMENT 'Telf',
  `text_direccion` char(255) DEFAULT '' COMMENT 'Dirección',
  `textarea_description` text COMMENT 'Contenido de la página',
  `text_page_title` varchar(75) DEFAULT NULL COMMENT 'Título de la pestaña de la página',
  `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)',
  `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)',
  `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 carácteres)',
  `text_meta_description` varchar(255) DEFAULT NULL COMMENT 'Meta Description (max 255 characters)',
  `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)',
  `text_meta_robots` varchar(45) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)',
  `status` char(6) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Listado usuarios';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `languages` (
  `id` varchar(45) NOT NULL DEFAULT '',
  `name` varchar(45) DEFAULT NULL,
  `actived` tinyint(4) NOT NULL DEFAULT '0',
  `default` tinyint(4) NOT NULL DEFAULT '0',
  `locale` varchar(45) NOT NULL DEFAULT '',
  `text_lang` varchar(45) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `message` (
  `id_indice` int(10) NOT NULL COMMENT 'Clave primaria',
  `id` bigint(20) NOT NULL,
  `id2` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `user1` bigint(20) NOT NULL,
  `user2` bigint(20) NOT NULL,
  `message` text NOT NULL,
  `timestamp` int(10) NOT NULL,
  `user1read` varchar(3) NOT NULL,
  `user2read` varchar(3) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id_indice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `newsletter`
--

DROP TABLE IF EXISTS `newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador del registro usuario de la newsletter',
  `email` varchar(250) NOT NULL COMMENT 'email del usuario',
  `language` varchar(250) NOT NULL COMMENT 'lenguage',
  `status` char(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `password_reset`
--

DROP TABLE IF EXISTS `password_reset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_reset` (
  `email` varchar(250) NOT NULL,
  `key` varchar(250) NOT NULL,
  `expDate` datetime NOT NULL,
  `id` int(10) NOT NULL COMMENT 'Clave primaria',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `preferences`
--

DROP TABLE IF EXISTS `preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `preferences` (
  `id` int(11) NOT NULL DEFAULT '1',
  `scripts_body` text NOT NULL,
  `cache_time` int(11) NOT NULL DEFAULT '0',
  `with_thumbnail_high` int(11) NOT NULL DEFAULT '800',
  `with_thumbnail_low` int(11) DEFAULT '400',
  `with_thumbnail_mobile` int(11) DEFAULT '250',
  `text_mailform` varchar(255) DEFAULT NULL COMMENT 'Mail Formularios',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador rol',
  `role` varchar(50) DEFAULT NULL COMMENT 'rol usuariio',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Roles usuario';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'password',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'info@2automocion.com' COMMENT 'Email usuario',
  `grupo` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'usuario',
  `status` char(6) DEFAULT NULL,
  `roleId` int(11) DEFAULT '8' COMMENT 'Rol usuario',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1078 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='usuarios';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

