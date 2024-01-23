CREATE DEFI	NER=`root`@`localhost` PROCEDURE `incrementar_imagenes`()
BEGIN
	DECLARE counter INT(10) DEFAULT 0;
	# cursor registros
	DECLARE cursor_registros CURSOR FOR
			SELECT COUNT(*) AS "Numero de fotos" , aa.id , aa.text_title
			FROM avantio_accomodations_pictures AS aap
			JOIN avantio_accomodations AS aa ON aa.id = aap.avantio_accomodations AND aa.`language` = "es"
			GROUP BY aap.avantio_accomodations;
	 my_simple_loop:LOOP
	 SET counter = counter + 1;
	 IF counter = 50 THEN 
	 	LEAVE my_simple_loop;
	 ELSE
	 	SELECT counter , 'I can count to 10';
	 END IF;
	 END LOOP my_simple_loop;
END