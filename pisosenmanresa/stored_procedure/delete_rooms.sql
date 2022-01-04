CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_rooms`()
    NO SQL
BEGIN
    # counters
    DECLARE contador_piso integer;
    DECLARE contador_casa integer;
    DECLARE contador_oficina integer;
    DECLARE contador_local integer;
    DECLARE contador_parking integer;
    DECLARE contador_terreno integer;
    DECLARE contador_nave integer;
    DECLARE contador_edificio integer;

    DECLARE id_resultado integer;
    DECLARE l_last_row_fetched INT DEFAULT 0;

    DECLARE cursor_piso CURSOR FOR
        SELECT dr.id
        FROM dynamic_rooms as dr
                 LEFT JOIN dynamic_gallery_inmo as dgi on dgi.id = dr.dynamic_gallery_inmo
        WHERE dr.dynamic_taxonomy_group = 1 and dr.checkbox_destacado_home = 0 and dgi.image_1 <> "https://www.pisosenmanresa.com/nofotos.gif"
        ORDER BY RAND()
        LIMIT 3;
    DECLARE cursor_casa CURSOR FOR
        SELECT dr.id
        FROM dynamic_rooms as dr
                 LEFT JOIN dynamic_gallery_inmo as dgi on dgi.id = dr.dynamic_gallery_inmo
        WHERE dr.dynamic_taxonomy_group = 2 and dr.checkbox_destacado_home = 0 and dgi.image_1 <> "https://www.pisosenmanresa.com/nofotos.gif"
        ORDER BY RAND()
        LIMIT 3;
    DECLARE cursor_oficina CURSOR FOR
        SELECT dr.id
        FROM dynamic_rooms as dr
                 LEFT JOIN dynamic_gallery_inmo as dgi on dgi.id = dr.dynamic_gallery_inmo
        WHERE dr.dynamic_taxonomy_group = 3 and dr.checkbox_destacado_home = 0 and dgi.image_1 <> "https://www.pisosenmanresa.com/nofotos.gif"
        ORDER BY RAND()
        LIMIT 3;
    DECLARE cursor_local CURSOR FOR
        SELECT dr.id
        FROM dynamic_rooms as dr
                 LEFT JOIN dynamic_gallery_inmo as dgi on dgi.id = dr.dynamic_gallery_inmo
        WHERE dr.dynamic_taxonomy_group = 4 and dr.checkbox_destacado_home = 0 and dgi.image_1 <> "https://www.pisosenmanresa.com/nofotos.gif"
        ORDER BY RAND()
        LIMIT 3;
    DECLARE cursor_parking CURSOR FOR
        SELECT dr.id
        FROM dynamic_rooms as dr
                 LEFT JOIN dynamic_gallery_inmo as dgi on dgi.id = dr.dynamic_gallery_inmo
        WHERE dr.dynamic_taxonomy_group = 5 and dr.checkbox_destacado_home = 0 and dgi.image_1 <> "https://www.pisosenmanresa.com/nofotos.gif"
        ORDER BY RAND()
        LIMIT 3;
    DECLARE cursor_terreno CURSOR FOR
        SELECT dr.id
        FROM dynamic_rooms as dr
                 LEFT JOIN dynamic_gallery_inmo as dgi on dgi.id = dr.dynamic_gallery_inmo
        WHERE dr.dynamic_taxonomy_group = 6 and dr.checkbox_destacado_home = 0 and dgi.image_1 <> "https://www.pisosenmanresa.com/nofotos.gif"
        ORDER BY RAND()
        LIMIT 3;
    DECLARE cursor_nave CURSOR FOR
        SELECT dr.id
        FROM dynamic_rooms as dr
                 LEFT JOIN dynamic_gallery_inmo as dgi on dgi.id = dr.dynamic_gallery_inmo
        WHERE dr.dynamic_taxonomy_group = 7 and dr.checkbox_destacado_home = 0 and dgi.image_1 <> "https://www.pisosenmanresa.com/nofotos.gif"
        ORDER BY RAND()
        LIMIT 3;
    DECLARE cursor_edificio CURSOR FOR
        SELECT dr.id
        FROM dynamic_rooms as dr
                 LEFT JOIN dynamic_gallery_inmo as dgi on dgi.id = dr.dynamic_gallery_inmo
        WHERE dr.dynamic_taxonomy_group = 8 and dr.checkbox_destacado_home = 0 and dgi.image_1 <> "https://www.pisosenmanresa.com/nofotos.gif"
        ORDER BY RAND()
        LIMIT 3;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET l_last_row_fetched = 1;

    set contador_piso = 0;
    set contador_casa = 0;
    set contador_oficina = 0;
    set contador_local = 0;
    set contador_parking = 0;
    set contador_terreno = 0;
    set contador_nave = 0;
    set contador_edificio = 0;

    select count(*) into contador_piso
    from dynamic_rooms as dr
             left join dynamic_gallery_inmo as dgi on dgi.id = dr.dynamic_gallery_inmo
    where dr.dynamic_taxonomy_group = 1 and dr.checkbox_destacado_home = 1 and dgi.image_1 <> "https://www.pisosenmanresa.com/nofotos.gif";


    select count(*) into contador_casa
    from dynamic_rooms as dr
             left join dynamic_gallery_inmo as dgi on dgi.id = dr.dynamic_gallery_inmo
    where dr.dynamic_taxonomy_group = 2 and dr.checkbox_destacado_home = 1 and dgi.image_1 <> "https://www.pisosenmanresa.com/nofotos.gif";


    select count(*) into contador_oficina
    from dynamic_rooms as dr
             left join dynamic_gallery_inmo as dgi on dgi.id = dr.dynamic_gallery_inmo
    where dr.dynamic_taxonomy_group = 3 and dr.checkbox_destacado_home = 1 and dgi.image_1 <> "https://www.pisosenmanresa.com/nofotos.gif";


    select count(*) into contador_local
    from dynamic_rooms as dr
             left join dynamic_gallery_inmo as dgi on dgi.id = dr.dynamic_gallery_inmo
    where dr.dynamic_taxonomy_group = 4 and dr.checkbox_destacado_home = 1 and dgi.image_1 <> "https://www.pisosenmanresa.com/nofotos.gif";


    select count(*) into contador_parking
    from dynamic_rooms as dr
             left join dynamic_gallery_inmo as dgi on dgi.id = dr.dynamic_gallery_inmo
    where dr.dynamic_taxonomy_group = 5 and dr.checkbox_destacado_home = 1 and dgi.image_1 <> "https://www.pisosenmanresa.com/nofotos.gif";


    select count(*) into contador_terreno
    from dynamic_rooms as dr
             left join dynamic_gallery_inmo as dgi on dgi.id = dr.dynamic_gallery_inmo
    where dr.dynamic_taxonomy_group = 6 and dr.checkbox_destacado_home = 1 and dgi.image_1 <> "https://www.pisosenmanresa.com/nofotos.gif";


    select count(*) into contador_nave
    from dynamic_rooms as dr
             left join dynamic_gallery_inmo as dgi on dgi.id = dr.dynamic_gallery_inmo
    where dr.dynamic_taxonomy_group = 7 and dr.checkbox_destacado_home = 1 and dgi.image_1 <> "https://www.pisosenmanresa.com/nofotos.gif";


    select count(*) into contador_edificio
    from dynamic_rooms as dr
             left join dynamic_gallery_inmo as dgi on dgi.id = dr.dynamic_gallery_inmo
    where dr.dynamic_taxonomy_group = 8 and dr.checkbox_destacado_home = 1 and dgi.image_1 <> "https://www.pisosenmanresa.com/nofotos.gif";

    IF (contador_piso < 8) THEN
        SET l_last_row_fetched = 0;
        OPEN cursor_piso;
        piso_loop:LOOP
            FETCH cursor_piso INTO id_resultado;
            IF l_last_row_fetched = 1 THEN
                LEAVE piso_loop;
            END IF;
            update dynamic_rooms as dr set checkbox_destacado_home = 1 where dr.id = id_resultado;
        END LOOP piso_loop;
        CLOSE cursor_piso;
    END IF;

    IF (contador_casa < 8) THEN
        SET l_last_row_fetched = 0;
        OPEN cursor_casa;
        casa_loop:LOOP
            FETCH cursor_casa INTO id_resultado;
            IF l_last_row_fetched = 1 THEN
                LEAVE casa_loop;
            END IF;
            update dynamic_rooms as dr set checkbox_destacado_home = 1 where dr.id = id_resultado;
        END LOOP casa_loop;
        CLOSE cursor_casa;
    END IF;

    IF (contador_oficina < 8) THEN
        SET l_last_row_fetched = 0;
        OPEN cursor_oficina;
        oficina_loop:LOOP
            FETCH cursor_oficina INTO id_resultado;
            IF l_last_row_fetched = 1 THEN
                LEAVE oficina_loop;
            END IF;
            update dynamic_rooms as dr set checkbox_destacado_home = 1 where dr.id = id_resultado;
        END LOOP oficina_loop;
        CLOSE cursor_oficina;
    END IF;

    IF (contador_local < 8) THEN
        SET l_last_row_fetched = 0;
        OPEN cursor_local;
        local_loop:LOOP
            FETCH cursor_local INTO id_resultado;
            IF l_last_row_fetched = 1 THEN
                LEAVE local_loop;
            END IF;
            update dynamic_rooms as dr set checkbox_destacado_home = 1 where dr.id = id_resultado;
        END LOOP local_loop;
        CLOSE cursor_local;
    END IF;

    IF (contador_parking < 8) THEN
        SET l_last_row_fetched = 0;
        OPEN cursor_parking;
        parking_loop:LOOP
            FETCH cursor_parking INTO id_resultado;
            IF l_last_row_fetched = 1 THEN
                LEAVE parking_loop;
            END IF;
            update dynamic_rooms as dr set checkbox_destacado_home = 1 where dr.id = id_resultado;
        END LOOP parking_loop;
        CLOSE cursor_parking;
    END IF;

    IF (contador_terreno < 8) THEN
        SET l_last_row_fetched = 0;
        OPEN cursor_terreno;
        terreno_loop:LOOP
            FETCH cursor_terreno INTO id_resultado;
            IF l_last_row_fetched = 1 THEN
                LEAVE terreno_loop;
            END IF;
            update dynamic_rooms as dr set checkbox_destacado_home = 1 where dr.id = id_resultado;
        END LOOP terreno_loop;
        CLOSE cursor_terreno;
    END IF;

    IF (contador_nave < 8) THEN
        SET l_last_row_fetched = 0;
        OPEN cursor_nave;
        nave_loop:LOOP
            FETCH cursor_nave INTO id_resultado;
            IF l_last_row_fetched = 1 THEN
                LEAVE nave_loop;
            END IF;
            update dynamic_rooms as dr set checkbox_destacado_home = 1 where dr.id = id_resultado;
        END LOOP nave_loop;
        CLOSE cursor_nave;
    END IF;

    IF (contador_edificio < 8) THEN
        SET l_last_row_fetched = 0;
        OPEN cursor_edificio;
        edificio_loop:LOOP
            FETCH cursor_edificio INTO id_resultado;
            IF l_last_row_fetched = 1 THEN
                LEAVE edificio_loop;
            END IF;
            update dynamic_rooms as dr set checkbox_destacado_home = 1 where dr.id = id_resultado;
        END LOOP edificio_loop;
        CLOSE cursor_edificio;
    END IF;
END