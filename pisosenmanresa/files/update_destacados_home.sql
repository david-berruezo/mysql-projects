CREATE DEFINER=`root`@`localhost` PROCEDURE `update_destacados_home`(id_property int(10),accion varchar(255))
BEGIN

  IF(accion = "activate" ) THEN

    UPDATE dynamic_rooms set checkbox_destacado_home = 1
    WHERE id = id_property;

  ELSEIF (accion = "desactivate" ) THEN

    UPDATE dynamic_rooms set checkbox_destacado_home = 0
    WHERE id = id_property;

  END IF;


END