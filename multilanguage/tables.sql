CREATE DATABASE multilanguage_tables CHARACTER SET UTF8 COLLATE UTF8_GENERAL_CI;
USE multilanguage_tables;

# 1. Column Approach
CREATE TABLE app_product (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date_created` datetime NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `title_en` varchar(255) NOT NULL,
  `title_es` varchar(255) NOT NULL,
  `title_fr` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

# Retrieve titles for all languages
SELECT * FROM `app_product` WHERE 1

# Retrieve appropriate title according to the chosen language in the system
SELECT `title_".$_SESSION['current_language']."` as `title` FROM app_product

# 2. Multirow Approach
CREATE TABLE app_product (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `date_created` datetime NOT NULL,
  `price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `language_id` varchar(2) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
);

# Retrieve titles for all languages
SELECT * FROM `app_product` WHERE `id` = 1;

# Retrieve appropriate title according to the chosen language in the system
SELECT `title` FROM `app_product` WHERE `language_id` = "es";

# 3. Single Translation Table Approach
CREATE TABLE IF NOT EXISTS `app_language` (
  `code` char(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `app_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `title` int(11) NOT NULL DEFAULT '0',
  `description` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `title` (`title`),
  KEY `description` (`description`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `app_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `app_translation_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `translation_id` int(11) NOT NULL,
  `language_code` char(2) NOT NULL,
  `field_text` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `translation_id` (`translation_id`),
  KEY `language_code` (`language_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;

# Retrieve titles for all languages
SELECT p.*, l.name as language_name, te.field_text as title
FROM `app_product` p
INNER JOIN `app_translation_entry` te ON p.title = te.translation_id
INNER JOIN `app_language` l ON te.language_code = l.code
WHERE p.id = 1

// Retrieve appropriate title according to the chosen language in the system
SELECT p.*, l.name as language_name, te.field_text as title
FROM `app_product` p
INNER JOIN `app_translation_entry` te ON p.title = te.translation_id
INNER JOIN `app_language` l ON te.language_code = l.code
WHERE p.id = 1 AND te.language_code = "es";

4. Additional Translation Table Approach
CREATE TABLE IF NOT EXISTS `app_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `app_product_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `language_code` char(2) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `translation_id` (`product_id`),
  KEY `language_code` (`language_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `app_language` (
  `code` char(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Retrieve titles for all languages
SELECT p.*, pt.title, pt.description, l.name as language_name
FROM `app_product` p
INNER JOIN `app_product_translation` pt ON p.id = pt.product_id
INNER JOIN `app_language` l ON pt.language_code = l.code
WHERE p.id = 1

// Retrieve appropriate title according to the chosen language in the system
SELECT p.*, pt.title, pt.description
FROM `app_product` p
INNER JOIN `app_product_translation` pt ON p.id = pt.product_id
WHERE p.id = 1 AND pt.language_code = '".$_SESSION['current_language']."'";