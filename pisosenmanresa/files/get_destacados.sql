CREATE DEFINER=`root`@`localhost` PROCEDURE `get_destacados`(taxonomy int(10))
BEGIN

  # vars
  DECLARE id int(11);
  DECLARE dynamic_taxonomy_group int(10);
  DECLARE text_title text;
  # cursor
  DECLARE done int default 0;
  DECLARE destacados CURSOR FOR

    SELECT id , dynamic_taxonomy_group , text_title
    FROM dynamic_rooms
    WHERE dynamic_taxonomy_group = taxonomy
    AND checkbox_destacado_home = 1;

  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

  CREATE TEMPORARY TABLE IF NOT EXISTS checkbox_destacados_home
  (id int(11) ,dynamic_taxonomy_group int(11) , text_title text);

  OPEN destacados;
  destacados_loop:LOOP
    FETCH destacados INTO id , dynamic_taxonomy_group , text_title;

    IF done=1 THEN
      LEAVE destacados_loop;
    END IF;

    INSERT INTO checkbox_destacados_home(id , dynamic_taxonomy_group , text_title)
    VALUES (id , dynamic_taxonomy_group , text_title);

  END LOOP destacados_loop;

  CLOSE destacados;

END