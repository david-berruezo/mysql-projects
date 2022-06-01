
# user
CREATE TABLE `user` (
`id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del usuario',
`username` varchar(255) NOT NULL DEFAULT '' COMMENT 'Nombre usuario',
`rol` int(11) NOT NULL DEFAULT '0' COMMENT 'Rol dynamic',
`user_detail` int(11) NOT NULL DEFAULT '0' COMMENT 'User detail dynamic',
`password` varchar(255) NOT NULL DEFAULT '' COMMENT 'Password',
`status` tinyint(3) DEFAULT '0' COMMENT 'Status dynamic',
`created` datetime NOT NULL DEFAULT NOW() COMMENT 'Create user',
`upated` datetime NOT NULL DEFAULT  '0000-00-00'  COMMENT 'Update user',
`delete` datetime NOT NULL DEFAULT  '0000-00-00'  COMMENT 'Delete user',
PRIMARY KEY (`id`,`username`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT 'Usuario';


# superadmin | franquiciado | inmobiliaria | usuario | no-usuario | agente | empresa
CREATE TABLE `rol` (
`id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador rol',
`rol` varchar(50) NULL DEFAULT '' COMMENT 'rol usuariio',
`status` tinyint(3) DEFAULT '0' COMMENT 'Status dynamic',
`created` datetime NOT NULL DEFAULT NOW() COMMENT 'Create rol',
`upated` datetime NOT NULL DEFAULT  '0000-00-00'  COMMENT 'Update rol',
`delete` datetime NOT NULL DEFAULT  '0000-00-00'  COMMENT 'Delete rol',
PRIMARY KEY (`id`,`rol`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT='Rol';

# user detail
CREATE TABLE `user_detail` (
`id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del usuario',
`name` varchar(255) NOT NULL DEFAULT '' COMMENT 'Nombre usuario',
`surname` varchar(255) NOT NULL DEFAULT '' COMMENT 'Apellido usuario',
`email` varchar(255) NOT NULL DEFAULT '' COMMENT 'Email usuario',
`telf` int(10) NOT NULL DEFAULT '0' COMMENT 'Telf usuario',
`created` datetime NOT NULL DEFAULT NOW() COMMENT 'Identificador dynamic rol',
`upated` datetime NOT NULL DEFAULT  '0000-00-00'  COMMENT 'Identificador dynamic rol',
`delete` datetime NOT NULL DEFAULT  '0000-00-00' COMMENT 'Identificador dynamic rol',
PRIMARY KEY (`id`,`name`,`surname`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT 'Usuario';

# status
CREATE TABLE `status` (
`id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador del status',
`status` varchar(255) NOT NULL DEFAULT 'ACTIVED' COMMENT 'Status',
`created` datetime NOT NULL DEFAULT NOW() COMMENT 'Create status',
`upated` datetime NOT NULL DEFAULT '0000-00-00' COMMENT 'Update status',
`delete` datetime NOT NULL DEFAULT '0000-00-00' COMMENT 'Delete status',
PRIMARY KEY (`id`,`status`)
) ENGINE=InnoDB CHARACTER SET Utf8 COLLATE utf8_general_ci COMMENT 'Status';
