use phpandfr_portvil_tres;

SELECT * FROM formulario_dudas;

SELECT * FROM dynamic_taxonomy where language = "es";
SELECT * FROM dynamic_taxonomy_geographic_language_fields_customitzation;

# alguna subconsulta
SELECT MAX(1) 
FROM dynamic_taxonomy_geographic_language_fields_customitzation
GROUP BY language , dynamic_geocountry;

SELECT id FROM 
(
	SELECT d.id 
    FROM dynamic_taxonomy_geographic_language_fields_customitzation as d
	WHERE dynamic_geocountry = 1
) as x
WHERE language = "es";

use phpandfr_portvil_tres

SELECT l.* 
FROM languages as l 
WHERE l.language IN (
	SELECT d.id 
    FROM dynamic_taxonomy_geographic_language_fields_customitzation as d
	WHERE dynamic_geocountry = 1
)

SELECT dt.* 
FROM dynamic_taxonomy_geographic_language_fields_customitzation as dt 
WHERE dt.id IN 
(
	SELECT d.id 
    FROM dynamic_taxonomy_geographic_language_fields_customitzation as d
	WHERE dynamic_geocountry = 1
)
limit 2;

SELECT * FROM dynamic_accion;
SELECT d.* FROM dynamic_taxonomy_geographic_language_fields_customitzation as d;

# get countries 
SELECT countries.* 
FROM
(
    SELECT d.* 
    FROM dynamic_taxonomy_geographic_language_fields_customitzation as d
	WHERE 
    d.dynamic_geocountry <> 0 OR 
    d.dynamic_georegion <> 0 OR
    d.dynamic_geocity <> 0 OR
    d.dynamic_geolocality <> 0 OR
    d.dynamic_georegion <> 0
    group by d.language , d.dynamic_geocountry , d.dynamic_georegion , d.dynamic_geocity , d.dynamic_geolocality , d.dynamic_georegion
) AS countries;


# get countries 
SELECT countries.* 
FROM
(
    SELECT d.* 
    FROM dynamic_taxonomy_geographic_language_fields_customitzation as d
	WHERE 
    d.dynamic_geocountry <> 0 
	group by d.language
) AS countries
UNION 
SELECT regions.* 
FROM
(
    SELECT d.* 
    FROM dynamic_taxonomy_geographic_language_fields_customitzation as d
	WHERE 
    d.dynamic_georegion <> 0 
	group by d.language
) AS regions
UNION
SELECT cities.* 
FROM
(
    SELECT d.* 
    FROM dynamic_taxonomy_geographic_language_fields_customitzation as d
	WHERE 
    d.dynamic_geocity <> 0 
	group by d.language
) AS cities
UNION
SELECT localities.* 
FROM
(
    SELECT d.* 
    FROM dynamic_taxonomy_geographic_language_fields_customitzation as d
	WHERE 
    d.dynamic_geolocality <> 0 
	group by d.language
) AS localities
UNION
SELECT districts.* 
FROM
(
    SELECT d.* 
    FROM dynamic_taxonomy_geographic_language_fields_customitzation as d
	WHERE 
    d.dynamic_geodistrict <> 0 
	group by d.language
) AS districts;


SELECT countries.* 
FROM
(	
	SELECT datos.* 
    FROM(
		SELECT d.id 
		FROM dynamic_taxonomy_geographic_language_fields_customitzation as d
		WHERE d.dynamic_geocountry = 1
    ) AS datos
) AS countries;
