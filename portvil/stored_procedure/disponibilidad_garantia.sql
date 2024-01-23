CREATE DEFINER=`root`@`localhost` PROCEDURE `disponibilidad_garantia`()
    NO SQL
BEGIN

    # variables
    # fechas
    DECLARE start_date_uno date;
    DECLARE end_date_uno date;
    # contadores
    DECLARE contador_date_uno integer;
    DECLARE i integer;

    # inicializamos valores
    SET start_date_uno = "2023-01-01";
	SET end_date_uno = "2023-12-31";

    set contador_date_uno = DATEDIFF(end_date_uno,start_date_uno);

    # tramo 1
    SET i = 0;
    WHILE (i <= contador_date_uno) DO
     SET @stat_date = start_date_uno;
     # Insert query;
     INSERT INTO hshv_avantio_availabilities_garantia (`accommodation_id`, `occupation_rule_id` , `fecha`, `status` , `update_at`) VALUES (192 , 192 , @stat_date , 0 , CURDATE());
     SET i = i + 1;
     SET start_date_uno = start_date_uno + INTERVAL 1 DAY;
    END WHILE;

END

