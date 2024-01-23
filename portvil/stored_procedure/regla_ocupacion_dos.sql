CREATE DEFINER=`root`@`localhost` PROCEDURE `regla_ocupacion`()
    NO SQL
BEGIN

    DECLARE start_date_uno date;
    DECLARE end_date_uno date;
    DECLARE start_date_dos date;
    DECLARE end_date_dos date;
    DECLARE start_date_tres date;
    DECLARE end_date_tres date;
    DECLARE start_date_cuatro date;
    DECLARE end_date_cuatro date;
    DECLARE start_date_cinco date;
    DECLARE end_date_cinco date;
    DECLARE start_date_seis date;
    DECLARE end_date_seis date;
    DECLARE start_date_siete date;
    DECLARE end_date_siete date;
    DECLARE start_date_ocho date;
    DECLARE end_date_ocho date;
    DECLARE start_date_nueve date;
    DECLARE end_date_nueve date;
    DECLARE start_date_diez date;
    DECLARE end_date_diez date;
    DECLARE start_date_once date;
    DECLARE end_date_once date;
    DECLARE start_date_doce date;
    DECLARE end_date_doce date;
    DECLARE start_date_trece date;
    DECLARE end_date_trece date;
    DECLARE start_date_catorze date;
    DECLARE end_date_catorze date;
    DECLARE start_date_quince date;
    DECLARE end_date_quince date;
    DECLARE start_date_dieciseis date;
    DECLARE end_date_dieciseis date;
    DECLARE start_date_diecisiete date;
    DECLARE end_date_diecisiete date;

    DECLARE contador_date_uno integer;
    DECLARE contador_date_dos integer;
    DECLARE contador_date_tres integer;
    DECLARE contador_date_cuatro integer;
    DECLARE contador_date_cinco integer;
    DECLARE contador_date_seis integer;
    DECLARE contador_date_siete integer;
    DECLARE contador_date_ocho integer;
    DECLARE contador_date_nueve integer;
    DECLARE contador_date_diez integer;
    DECLARE contador_date_once integer;
    DECLARE contador_date_doce integer;
    DECLARE contador_date_trece integer;
    DECLARE contador_date_catorze integer;
    DECLARE contador_date_quince integer;
    DECLARE contador_date_dieciseis integer;
    DECLARE contador_date_diecisiete integer;

    # variables
    DECLARE i integer;
    DECLARE season integer;

    SET start_date_uno = "2020-04-04";
	SET end_date_uno = "2020-06-26";
    SET start_date_dos = "2020-06-27";
    SET end_date_dos = "2020-08-28";
    SET start_date_tres = "2020-08-29";
    SET end_date_tres = "2020-10-30";
    SET start_date_cuatro = "2020-10-31";
    SET end_date_cuatro = "2021-03-19";
    SET start_date_cinco = "2021-03-20";
    SET end_date_cinco = "2021-06-25";
    SET start_date_seis = "2021-06-26";
    SET end_date_seis = "2021-08-27";
    SET start_date_siete = "2021-08-28";
    SET end_date_siete = "2021-10-29";
    SET start_date_nueve = "2021-10-30";
    SET end_date_nueve = "2022-04-15";
    SET start_date_diez = "2022-04-16";
    SET end_date_diez = "2022-07-01";
    SET start_date_once = "2022-07-02";
    SET end_date_once = "2022-08-26";
    SET start_date_doce = "2022-08-27";
    SET end_date_doce = "2022-10-28";
    SET start_date_trece = "2022-10-29";
    SET end_date_trece = "2023-03-31";
    SET start_date_catorze = "2023-04-01";
    SET end_date_catorze = "2023-06-30";
    SET start_date_quince = "2023-07-01";
    SET end_date_quince = "2023-09-01";
    SET start_date_dieciseis = "2023-09-02";
    SET end_date_dieciseis = "2023-11-01";
    SET start_date_diecisiete = "2023-11-02";
    SET end_date_diecisiete = "2024-03-31";

    set contador_date_uno = DATEDIFF(end_date_uno,start_date_uno);
    set contador_date_dos = DATEDIFF(end_date_dos,start_date_dos);
    set contador_date_tres = DATEDIFF(end_date_tres,start_date_tres);
    set contador_date_cuatro = DATEDIFF(end_date_cuatro,start_date_cuatro);
    set contador_date_cinco = DATEDIFF(end_date_cinco,start_date_cinco);
    set contador_date_seis = DATEDIFF(end_date_seis,start_date_seis);
    set contador_date_siete = DATEDIFF(end_date_siete,start_date_siete);
    set contador_date_nueve = DATEDIFF(end_date_nueve,start_date_nueve);
    set contador_date_diez = DATEDIFF(end_date_diez,start_date_diez);
    set contador_date_once = DATEDIFF(end_date_once,start_date_once);
    set contador_date_doce = DATEDIFF(end_date_doce,start_date_doce);
    set contador_date_trece = DATEDIFF(end_date_trece,start_date_trece);
    set contador_date_catorze = DATEDIFF(end_date_catorze,start_date_catorze);
    set contador_date_quince = DATEDIFF(end_date_quince,start_date_quince);
    set contador_date_dieciseis = DATEDIFF(end_date_dieciseis,start_date_dieciseis);
    set contador_date_diecisiete = DATEDIFF(end_date_diecisiete,start_date_diecisiete);

    SELECT contador_date_uno;

# tramo 1
SET i = 0;
SET season = 1;
WHILE (i <= contador_date_uno) DO
 SET @stat_date = start_date_uno;
 # Insert query;
 INSERT INTO avantio_occupation_rules_tmp (`id`,`fecha`,`season` , `min_nights`,`min_nights_online` , `checkin` , `checkout` , `opcion_dias_meses_todos_dias_checkin` , `opcion_dias_meses_todos_dias_checkout` , `update_at`) VALUES (1255891,@stat_date,season,7,7,1,1,"todosPermitidos","todosPermitidos" , CURDATE());
 SET i = i + 1;
 SET start_date_uno = start_date_uno + INTERVAL 1 DAY;
END WHILE;

END

