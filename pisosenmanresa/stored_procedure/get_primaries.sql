CREATE DEFINER=`root`@`localhost` PROCEDURE `get_destacados`(database_name varchar(128) , table_name varchar(128))
begin
    SHOW INDEX FROM pisosenm_inmobiliaria_dos.avantio_accomodations WHERE Key_name = 'PRIMARY';
    return id_dynamic_usuario_ivan_pozo;
end