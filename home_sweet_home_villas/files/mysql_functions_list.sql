########################### Listado de funciones MySQL ################################
use pisosenm_inmobiliaria;
SET SQL_SAFE_UPDATES = 0;

SELECT 'Hola que tal' as mensaje;
SELECT username,f_age('23-11-1978') AS age FROM users LIMIT 5;
SELECT CONCAT('Hola ', 'que ','tal ') as mensaje_dos;
SELECT CONCAT_WS('-',' Hola ', ' que ',' tal ') as mensaje_dos;
SELECT ASCII(username) as ascii, username from users limit 1;  # printea el primer caracter ASCII
SELECT CHAR_LENGTH(username) as longitud, username from users limit 1;
SELECT CHARACTER_LENGTH(username) as longitud, username from users limit 1;
SELECT FIELD(5, 0, 1, 2, 3, 4, 5); # printea el indice del numero a buscar que es el 5 y printea el indice número 6 
SELECT FIELD("Q", "s", "q", "l");  # printea el indice de la letra a buscar que es la Q y printea el indice número 2
