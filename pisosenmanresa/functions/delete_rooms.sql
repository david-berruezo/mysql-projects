CREATE DEFINER=`root`@`localhost` FUNCTION `delete_rooms`() RETURNS int(10)
begin
    # vars
    DECLARE id_users_ivan_pozo integer;
    DECLARE id_dynamic_usuario_ivan_pozo integer;
    # select
    select id into id_users_ivan_pozo from users where username like 'ivanpozo%';
    select id into id_dynamic_usuario_ivan_pozo from dynamic_usuario where auto_slug like 'ivanpozo%';

    # delete
    IF id_users_ivan_pozo <> NULL THEN
        delete from users where id >= id_users_ivan_pozo;
    END IF;
    IF id_dynamic_usuario_ivan_pozo <> NULL THEN
        delete from dynamic_usuario where id >= id_dynamic_usuario_ivan_pozo;
    END IF;
    delete from dynamic_rooms where id <> -1;
    delete from avantio_inmovilla where id <> -1;
    delete from dynamic_gallery_inmo where id <> -1;
    # alter not permitido
    # ALTER TABLE users AUTO_INCREMENT = 1;
    # ALTER TABLE dynamic_usuario AUTO_INCREMENT = 1;
    # ALTER TABLE dynamic_rooms AUTO_INCREMENT = 1;
    # ALTER TABLE dynamic_gallery_inmo AUTO_INCREMENT = 1;
    # ALTER TABLE avantio_inmovilla AUTO_INCREMENT = 1;
    # return id_users_ivan_pozo;
    return id_dynamic_usuario_ivan_pozo;
end