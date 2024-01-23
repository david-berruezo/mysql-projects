USE phpandfr_portvil_tres;

SELECT * FROM dynamic_roles;
SELECT * FROM users;

/*
ALTER TABLE users MODIFY COLUMN id INT(11) COMMENT "Identificador del usuario";
ALTER TABLE users MODIFY COLUMN text_username VARCHAR(255) COMMENT "Nombre del usuario";
ALTER TABLE users MODIFY COLUMN text_password VARCHAR(255) COMMENT "Password del usuario"; 
ALTER TABLE users MODIFY COLUMN text_email VARCHAR(255) COMMENT "Email del usuario"; 
ALTER TABLE users MODIFY COLUMN text_grupo VARCHAR(255) COMMENT "Grupo del usuario"; 
ALTER TABLE users MODIFY COLUMN status VARCHAR(255) DEFAULT "ACTIVED" COMMENT "Grupo del usuario"; 
ALTER TABLE users MODIFY COLUMN dynamic_roles INT(11) COMMENT "Roles del usaurio"; 
ALTER TABLE users MODIFY COLUMN created_at DATETIME COMMENT "Fecha de creación"; 
ALTER TABLE users MODIFY COLUMN updated_at DATETIME COMMENT "Fecha de actualización"; 
ALTER TABLE users MODIFY COLUMN deleted_at DATETIME COMMENT "Fecha de eliminación"; 

id int(11) AI PK 
text_username varchar(255) 
text_password varchar(255) 
text_email varchar(255) 
text_grupo varchar(255) 
status varchar(255) 
dynamic_roles int(11) 
created_at datetime 
updated_at datetime 
deleted_at datetime

SELECT * FROM users;

SELECT * FROM dynamic_contacto;

#ALTER TABLE formulario_dudas ADD COLUMN text_title VARCHAR(255) COMMENT "Text title";

# SELECT * FROM formulario_dudas;


#INSERT INTO `formulario_dudas` (`id`, `language`, `user_users`, `text_nombre`, `text_telefono`, `text_email`, `text_url`, `textarea_dudas`, `text_page_title`, `auto_slug`, `text_slug`, `text_meta_keywords`, `text_meta_robots`, `text_meta_description`, `textarea_scripts_header`, `textarea_scripts_body`, `status`, `position`) VALUES ('4', 'es', '1', 'David', '615231533', 'davidberruezos@davidberruezo.com', 'http://localhosth/portvil/public_html/dashboard', 'afadsfasdf', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 'ACTIVED', '0');

ALTER TABLE formulario_dudas ADD COLUMN text_url VARCHAR(255) COMMENT "url aplicación";
ALTER TABLE formulario_dudas ADD COLUMN text_nombre VARCHAR(255) COMMENT "Nombre usuario";
ALTER TABLE formulario_dudas ADD COLUMN text_telefono VARCHAR(255) COMMENT "Telefono usuario";
ALTER TABLE formulario_dudas ADD COLUMN text_email VARCHAR(255) COMMENT "Email usuario";

# ALTER TABLE formulario_dudas ADD COLUMN text_url VARCHAR(255) COMMENT "Url";
ALTER TABLE formulario_dudas DROP COLUMN text_duda;
ALTER TABLE formulario_dudas ADD COLUMN textarea_dudas text COMMENT "Textarea dudas";

ALTER TABLE formulario_dudas DROP COLUMN id_accommodation;
ALTER TABLE formulario_dudas DROP COLUMN text_nombre;
ALTER TABLE formulario_dudas DROP COLUMN text_telefono;
ALTER TABLE formulario_dudas DROP COLUMN text_email;

ALTER TABLE formulario_dudas ADD COLUMN language VARCHAR(3) COMMENT "Idioma";
ALTER TABLE formulario_dudas ADD COLUMN `text_page_title` varchar(255) DEFAULT NULL COMMENT 'Título sobre el alojamiento';
ALTER TABLE formulario_dudas ADD COLUMN `auto_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url corta (auto slug)';
ALTER TABLE formulario_dudas ADD COLUMN `text_slug` varchar(255) NOT NULL DEFAULT '' COMMENT 'Url manual (vacío usará auto slug)';
ALTER TABLE formulario_dudas ADD COLUMN `text_meta_keywords` varchar(255) DEFAULT NULL COMMENT 'Meta Keywords (máx 255 characters)';
ALTER TABLE formulario_dudas ADD COLUMN `text_meta_robots` varchar(255) DEFAULT NULL COMMENT 'Meta Robots (max 45 characters)';
ALTER TABLE formulario_dudas ADD COLUMN `text_meta_description` text COMMENT 'Meta Description (max 255 characters)';
ALTER TABLE formulario_dudas ADD COLUMN `textarea_scripts_header` text COMMENT 'Aditional header scripts (Add tags &lt;script&gt;&lt;/script&gt;)';
ALTER TABLE formulario_dudas ADD COLUMN `textarea_scripts_body` text COMMENT 'Aditional footer scripts (Add tags &lt;script&gt;&lt;/script&gt;)';
    
ALTER TABLE formulario_dudas ADD COLUMN text_nombre VARCHAR(255) COMMENT "Nombre usuario";
ALTER TABLE formulario_dudas ADD COLUMN text_telefono VARCHAR(255) COMMENT "Telefono usuario";
ALTER TABLE formulario_dudas ADD COLUMN text_email VARCHAR(255) COMMENT "Email usuario";
ALTER TABLE formulario_dudas ADD COLUMN id_accommodation INT(11) COMMENT "Propiedad usuario";

SELECT * FROM formulario_dudas;
SELECT * FROM dynamic_contacto;
*/