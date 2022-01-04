CREATE DEFINER=`root`@`localhost` PROCEDURE `print_destacados_home`(taxonomy int(11))
BEGIN

  SELECT * FROM dynamic_rooms
  WHERE
      dynamic_taxonomy_group = taxonomy
    AND
      checkbox_destacado_home = 1;


END