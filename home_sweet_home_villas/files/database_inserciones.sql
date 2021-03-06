use pisosenm_inmobiliaria_tres;

######################################## geolocations  ###################################################
INSERT INTO `dynamic_geocountry` (`id`, `language`, `text_title`, `status`, `position`) VALUES
(1, 'es', 'España', 'ACTIVED', 0);


INSERT INTO `dynamic_georegion` (`id`, `language`, `dynamic_geocountry`,`text_title`, `status`, `position`) VALUES
(1, 'es', 1,'Cataluña','ACTIVED', 0);


INSERT INTO `dynamic_geocity` (`id`, `language`, `dynamic_georegion`,`text_title`, `status`, `position`) VALUES
(1, 'es', 1,'Barcelona',  'ACTIVED', 0);


INSERT INTO `dynamic_geolocality` (`id`, `language`, `text_title`, `dynamic_geocity`, `number_release`, `status`, `position`, `text_geo_latitud`, `text_geo_longitud`, `status_realstate`) VALUES
(0, 'es', 'Otros', 1, 1, 'ACTIVED', 0, '', '', 'ACTIVED'),
(1, 'es', 'Aguilar de Segarra', 1, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(2, 'es', 'Artés', 1, 1, 'ACTIVED', 0, '41.7976049', '1.9476954', 'ACTIVED'),
(3, 'es', 'Avinyó', 1, 1, 'ACTIVED', 0, '41.8650212', '1.9044884', 'ACTIVED'),
(4, 'es', 'Balsareny', 1, 1, 'ACTIVED', 0, '41.8628238', '1.870784', 'ACTIVED'),
(5, 'es', 'Cabrianes', 1, 1, 'ACTIVED', 0, '41.7990477', '1.9076782', 'ACTIVED'),
(6, 'es', 'Calders', 1, 1, 'ACTIVED', 0, '41.6455529', '2.1148272', 'ACTIVED'),
(7, 'es', 'Callús', 1, 1, 'ACTIVED', 0, '41.8045376', '1.7593674', 'ACTIVED'),
(8, 'es', 'Cardona', 1, 1, 'ACTIVED', 0, '41.9138731', '1.6766443', 'ACTIVED'),
(9, 'es', 'Castellbell i el Vilar', 1, 1, 'ACTIVED', 0, '41.6306505', '1.8526665', 'ACTIVED'),
(10, 'es', 'Castellfollit del Boix', 1, 1, 'ACTIVED', 0, '41.6650293', '1.6829731', 'ACTIVED'),
(11, 'es', 'Castellgalí', 1, 1, 'ACTIVED', 0, '41.6723145', '1.8311751', 'ACTIVED'),
(12, 'es', 'Castellnou de Bages', 1, 1, 'ACTIVED', 0, '41.8344713', '1.83479', 'ACTIVED'),
(14, 'es', 'Fonollosa', 1, 1, 'ACTIVED', 0, '41.7688437', '1.6743963', 'ACTIVED'),
(15, 'es', 'Gaià', 1, 1, 'ACTIVED', 0, '41.9162122', '1.9233223', 'ACTIVED'),
(16, 'es', 'Estany', 1, 1, 'ACTIVED', 0, '41.8694123', '2.108911', 'ACTIVED'),
(17, 'es', 'Manresa', 1, 1, 'ACTIVED', 0, '41.7231675', '1.7866634', 'ACTIVED'),
(18, 'es', 'Marganell', 1, 1, 'ACTIVED', 0, '41.6427805', '1.787402', 'ACTIVED'),
(19, 'es', 'Moià', 1, 1, 'ACTIVED', 0, '41.8103146', '2.090821', 'ACTIVED'),
(20, 'es', 'Monistrol de Calders', 1, 1, 'ACTIVED', 0, '41.7603836', '2.0130806', 'ACTIVED'),
(21, 'es', 'Monistrol de Montserrat', 1, 1, 'ACTIVED', 0, '41.6241499', '1.8030565', 'ACTIVED'),
(22, 'es', 'Mura', 1, 1, 'ACTIVED', 0, '41.700304', '1.9760184', 'ACTIVED'),
(23, 'es', 'Navas', 1, 1, 'ACTIVED', 0, '41.9001345', '1.8719997', 'ACTIVED'),
(24, 'es', 'Navarcles', 1, 1, 'ACTIVED', 0, '41.7569307', '1.8928261', 'ACTIVED'),
(25, 'es', 'Pont de Vilomara i Rocafort', 1, 1, 'ACTIVED', 0, '41.700963', '1.8620742', 'ACTIVED'),
(26, 'es', 'Rajadell', 1, 1, 'ACTIVED', 0, '41.7210853', '1.6783144', 'ACTIVED'),
(27, 'es', 'Súria', 1, 1, 'ACTIVED', 0, '41.8327205', '1.750129', 'ACTIVED'),
(28, 'es', 'Sallent', 1, 1, 'ACTIVED', 0, '41.8271975', '1.8898205', 'ACTIVED'),
(29, 'es', 'Sant Feliu Sasserra', 1, 1, 'ACTIVED', 0, '41.9354507', '1.9740941', 'ACTIVED'),
(30, 'es', 'Sant Fruitós de Bages', 1, 1, 'ACTIVED', 0, '41.7507922', '1.8713748', 'ACTIVED'),
(31, 'es', 'Sant Joan de Vilatorrada', 1, 1, 'ACTIVED', 0, '41.7422952', '1.7949867', 'ACTIVED'),
(32, 'es', 'Sant Mateu de Bages', 1, 1, 'ACTIVED', 0, '41.8181888,', '1.6417228', 'ACTIVED'),
(33, 'es', 'Sant Salvador de Guardiola', 1, 1, 'ACTIVED', 0, '41.677607', '1.7242713', 'ACTIVED'),
(34, 'es', 'Sant Vicenç de Castellet', 1, 1, 'ACTIVED', 0, '41.6660999', '1.8503574', 'ACTIVED'),
(35, 'es', 'Santa Maria Oló', 1, 1, 'ACTIVED', 0, '41.8743913', '2.0305716', 'ACTIVED'),
(36, 'es', 'Santpedor', 1, 1, 'ACTIVED', 0, '41.7824056', '1.834751', 'ACTIVED'),
(37, 'es', 'Súria', 1, 1, 'ACTIVED', 0, '41.8327205', '1.750129', 'ACTIVED'),
(38, 'es', 'Talamanca', 1, 1, 'ACTIVED', 0, '41.7369123', '1.9750528', 'ACTIVED'),
(39, 'es', 'Fals', 1, 1, 'ACTIVED', 0, '41.7423376', '1.711967', 'ACTIVED'),
(40, 'es', 'Puig-Reig', 1, 1, 'ACTIVED', 0, '41.9666945', '1.7797215', 'ACTIVED'),
(41, 'es', 'Olesa de montserrat', 1, 1, 'ACTIVED', 0, '41.5439962', '1.8825061', 'ACTIVED'),
(42, 'es', 'Barcelona', 1, 1, 'ACTIVED', 0, '41.5439962', '1.8825061', 'ACTIVED');


INSERT INTO `dynamic_geozona` (`id`, `language`, `text_title`, `dynamic_geolocality`, `number_release`, `status`, `position`, `text_geo_latitud`, `text_geo_longitud`, `status_realstate`) VALUES
(1, 'es', 'Ajuntament', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(2, 'es', 'Bon pastor', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(3, 'es', 'Born', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(4, 'es', 'Can baro', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(5, 'es', 'Casc antic', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(6, 'es', 'Centre', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(7, 'es', 'Ciutat meridiana', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(8, 'es', 'Diagonal mar/front marítim del poblenou', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(9, 'es', 'Dreta de l´eixample', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(10, 'es', 'Eixample', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(11, 'es', 'El baix guinardo', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(12, 'es', 'El besos i el maresme', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(13, 'es', 'El carmel', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(14, 'es', 'El gòtic', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(15, 'es', 'El guinardo', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(16, 'es', 'El parc i la llacuna del poblenou', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(17, 'es', 'El poblenou', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(18, 'es', 'El putxet i farró', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(19, 'es', 'El raval', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(20, 'es', 'El turo de la peira', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(21, 'es', 'Horta', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(22, 'es', 'Hostafrancs', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(23, 'es', 'La barceloneta', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(24, 'es', 'La font de la guatlla', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(25, 'es', 'La guineueta', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(26, 'es', 'La marina de port', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(27, 'es', 'La nova esquerra de l´eixample', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(28, 'es', 'La prosperitat', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(29, 'es', 'La teixonera', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(30, 'es', 'La trinitat nova', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(31, 'es', 'La trinitat vella', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(32, 'es', 'La verneda i la pau', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(33, 'es', 'La vila olímpica del poblenou', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(34, 'es', 'L´antiga esquerra de l´eixample', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(35, 'es', 'Les corts', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(36, 'es', 'Les roquetes', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(37, 'es', 'Montbau', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(38, 'es', 'Pedralbes', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(39, 'es', 'Poble sec', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(40, 'es', 'Provençals del poblenou', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(41, 'es', 'Sagrada familia', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(42, 'es', 'Sant andreu de palomar', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(43, 'es', 'Sant antoni', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(44, 'es', 'Sant gervasi - galvany', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(45, 'es', 'Sant gervasi - la bonanova', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(46, 'es', 'Sant martí de provençals', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(47, 'es', 'Sant pere - santa caterina i la ribera', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(48, 'es', 'Sants', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(49, 'es', 'Sarrià', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(50, 'es', 'Vallcarca i els penitents', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(51, 'es', 'Verdun', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(52, 'es', 'Vila de gràcia', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(53, 'es', 'Vilapicina i la torre llobeta', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED'),
(54, 'es', 'Zona franca', 42, 1, 'ACTIVED', 0, '41.741433', '1.605900', 'ACTIVED');


/*
INSERT INTO `dynamic_geodistrict` (`id`, `language`, `text_title`, `text_postalcode`, `dynamic_geolocality`, `status`, `position`) VALUES
(0, 'es', '08243', '08243', 17, 'ACTIVED', 0),
(1, 'es', '08279', '08279', 3, 'ACTIVED', 1),
(2, 'es', '08253', '08253', 33, 'ACTIVED', 2),
(3, 'es', '08240', '08240', 17, 'ACTIVED', 3),
(4, 'es', '08297', '08297', 11, 'ACTIVED', 4),
(5, 'es', '08272', '08272', 30, 'ACTIVED', 5),
(6, 'es', '08256', '08256', 26, 'ACTIVED', 6),
(7, 'es', '08296', '08296', 9, 'ACTIVED', 7),
(8, 'es', '08271', '08271', 2, 'ACTIVED', 8),
(9, 'es', '08254', '08254', 13, 'ACTIVED', 9),
(10, 'es', '08650', '08650', 28, 'ACTIVED', 10),
(11, 'es', '08241', '08241', 17, 'ACTIVED', 11),
(12, 'es', '08242', '08242', 17, 'ACTIVED', 12),
(13, 'es', '08250', '08250', 31, 'ACTIVED', 13),
(14, 'es', '08275', '08275', 20, 'ACTIVED', 14),
(15, 'es', '08295', '08295', 34, 'ACTIVED', 15),
(16, 'es', '08270', '08270', 24, 'ACTIVED', 16),
(17, 'es', '08660', '08660', 4, 'ACTIVED', 17),
(18, 'es', '08670', '08670', 23, 'ACTIVED', 18),
(19, 'es', '08251', '08251', 12, 'ACTIVED', 19),
(20, 'es', '08224', '08224', 0, 'ACTIVED', 20),
(21, 'es', '08227', '08227', 0, 'ACTIVED', 21),
(22, 'es', '08221', '08221', 0, 'ACTIVED', 22),
(23, 'es', '08225', '08225', 0, 'ACTIVED', 23),
(24, 'es', '08211', '08211', 0, 'ACTIVED', 24),
(25, 'es', '08233', '08233', 0, 'ACTIVED', 25),
(26, 'es', '08260', '08260', 37, 'ACTIVED', 26),
(27, 'es', '08625', '08625', 0, 'ACTIVED', 27),
(28, 'es', '08298', '08298', 18, 'ACTIVED', 28),
(29, 'es', '08692', '08298', 0, 'ACTIVED', 29),
(30, 'es', '08259', '08259', 0, 'ACTIVED', 0),
(31, 'es', '08692', '08692', 0, 'ACTIVED', 0);
*/