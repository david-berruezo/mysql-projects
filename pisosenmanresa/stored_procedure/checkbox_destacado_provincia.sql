CREATE DEFINER=`root`@`localhost` PROCEDURE `checkbox_destacado_provincia`()
BEGIN

  # geolocality
  DECLARE id_geolocality integer;
  DECLARE id_taxonomy_group integer;
  # contador
  DECLARE l_last_row_fetched INT DEFAULT 0;

  # cursor
  DECLARE cursor_localidades CURSOR FOR select id from dynamic_geolocality;
  DECLARE cursor_taxonomy_group CURSOR FOR select id from dynamic_taxonomy_group;


  DECLARE CONTINUE HANDLER FOR NOT FOUND SET l_last_row_fetched = 1;


  SET l_last_row_fetched = 0;
  OPEN cursor_localidades;
  localidades_loop:LOOP
    # first fetch
    FETCH cursor_localidades INTO id_geolocality;
    IF l_last_row_fetched = 1 THEN
      LEAVE localidades_loop;
    END IF;
    # open new cursor and new select
    SET l_last_row_fetched = 0;
    OPEN cursor_taxonomy_group;
    taxonomy_group_loop:LOOP
      FETCH cursor_taxonomy_group INTO id_taxonomy_group;
      IF l_last_row_fetched = 1 THEN
        LEAVE taxonomy_group_loop;
      END IF;
      select id,RAND()  from dynamic_rooms where dynamic_geolocality = id_geolocality and dynamic_taxonomy_group = id_taxonomy_group limit 5;
    END LOOP taxonomy_group_loop;
    CLOSE cursor_taxonomy_group;
    # select id,RAND()  from dynamic_rooms where dynamic_geolocality = id_geolocality limit 5;
    # select text_title  from dynamic_rooms where dynamic_geolocality = id_geolocality;
    # update dynamic_rooms as dr set checkbox_destacado_home = 1 where dr.id = id_resultado;
  END LOOP localidades_loop;
  CLOSE cursor_localidades;
END