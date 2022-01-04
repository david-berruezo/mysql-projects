CREATE DEFINER=`root`@`localhost` FUNCTION `get_destacados`(taxonomy integer) RETURNS int(11)
BEGIN
  DECLARE id_room INT;
  DECLARE destacados CURSOR FOR
    select id from dynamic_rooms where dynamic_taxonomy_group = taxonomy and checkbox_destacado_home = 1;
  OPEN destacados;
  FETCH destacados INTO id_room;
  CLOSE destacados;
  return id_room;
END