CREATE DEFINER=`root`@`localhost` PROCEDURE `print_propiedades_taxonomias`(taxonomy int(11))
BEGIN
  SELECT * FROM dynamic_rooms
  WHERE
      dynamic_taxonomy_group = taxonomy;
END