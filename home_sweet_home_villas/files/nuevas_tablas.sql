use pisosenm_inmobiliaria_dos;



/*
drop table `avantio_accomodations_fields_bullets`;
drop table `avantio_accomodations_fields`;
drop table `hshv_avantio_accomodations_fields_bullets`;
drop table `hshv_avantio_accomodations_fields`;


CREATE TABLE `avantio_accomodations_fields_bullets` (
  `avantio_accomodations` int(11) NOT NULL COMMENT 'Identificador avantio',
  `language` varchar(3) NOT NULL COMMENT 'lenguage',
  `textarea_bullet` text NOT NULL COMMENT 'bullet',
  PRIMARY KEY (`avantio_accomodations`,`language`)
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT='Bullets';


CREATE TABLE `avantio_accomodations_fields` (
  `avantio_accomodations` int(11) NOT NULL COMMENT 'Identificador avantio',
  `textarea_informacion_adicional` text NOT NULL COMMENT 'bullet',
  `textarea_notas_internas` text NOT NULL COMMENT 'bullet',
  PRIMARY KEY (`avantio_accomodations`)
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT='Acommodations tags';



CREATE TABLE `hshv_avantio_accomodations_fields_bullets` (
  `avantio_accomodations` int(11) NOT NULL COMMENT 'Identificador acommdation',
  `language` varchar(3) NOT NULL COMMENT 'lenguage',
  `textarea_bullet` text NOT NULL COMMENT 'bullet',
  PRIMARY KEY (`avantio_accomodations`,`language`)
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT='Bullets';


CREATE TABLE `hshv_avantio_accomodations_fields` (
  `avantio_accomodations` int(11) NOT NULL COMMENT 'Identificador avantio',
  `textarea_informacion_adicional` text NOT NULL COMMENT 'bullet',
  `textarea_notas_internas` text NOT NULL COMMENT 'bullet',
  PRIMARY KEY (`avantio_accomodations`)
) ENGINE=InnoDB CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT='Acommodations tags';

*/