CREATE DEFINER=`root`@`localhost` FUNCTION `get_count_destacados_home`(taxonomia int) RETURNS int(10)
begin
  declare total int(10);
  select count(*) into total from dynamic_rooms where dynamic_taxonomy_group = taxonomia and checkbox_destacado_home = 1;
  return total;
end
