
USE phpandfr_portvil_dos;


SELECT count(*) as total
FROM avantio_availabilities
WHERE accommodation_id = 326472
  AND fecha BETWEEN "2022-05-17" AND "2022-05-24"
  AND status = 1
ORDER BY fecha ASC;


SELECT *
FROM avantio_occupation_rules AS aor
WHERE id = 1282168
AND fecha BETWEEN "2022-05-17" AND "2022-05-18";

SELECT *
FROM avantio_occupation_rules AS aor
WHERE id = "null"
AND fecha BETWEEN "2022-05-17" AND "2022-05-18";

SELECT *
FROM avantio_occupation_rules AS aor
WHERE fecha BETWEEN "2022-05-17" AND "2022-05-18";


SELECT count(*) as total
FROM avantio_accomodations AS aacc
WHERE aacc.id IN
(
    SELECT aav.accommodation_id
    FROM avantio_availabilities AS aav
    JOIN avantio_occupation_rules AS aor ON aor.id = aav.occupation_rule_id AND aor.fecha = aav.fecha
    WHERE (aav.fecha BETWEEN "2022-05-17" AND "2022-05-18") AND aav.status = 1
)
AND aacc.id = 326472 AND aacc.language="es";


SELECT aav.* , aor.id
FROM avantio_availabilities AS aav
JOIN avantio_occupation_rules AS aor ON aor.id = aav.occupation_rule_id AND aor.fecha = aav.fecha
WHERE (aav.fecha BETWEEN "2022-05-17" AND "2022-05-18") AND aav.status = 1 AND aaV.accommodation_id = 326472;


SELECT aav.* , aor.id
FROM avantio_occupation_rules AS aor
JOIN avantio_availabilities AS aav ON aor.id = aav.occupation_rule_id
WHERE aav.fecha BETWEEN "2022-05-17" AND "2022-05-18"
AND  aor.fecha BETWEEN "2022-05-17" AND "2022-05-18"
AND aor.id = aav.occupation_rule_id
AND aav.status = 1
AND aaV.accommodation_id = 326472;


SELECT count(*) as total
FROM avantio_availabilities AS aav
#JOIN avantio_accomodations AS aacc ON
WHERE aav.occupation_rule_id IN
      (
          SELECT aor.id
          FROM avantio_occupation_rules AS aor
                   JOIN avantio_accomodations AS aac ON aac.avantio_occupation_rules = aor.id
          WHERE fecha BETWEEN "2022-05-17" AND "2022-05-18"
            AND aac.language = "es" AND aac.id = 326472
      )
  AND (aav.fecha BETWEEN "2022-05-17" AND "2022-05-18" AND aav.status = 1);


SELECT aor.*
FROM avantio_occupation_rules AS aor
JOIN avantio_accomodations AS aac ON aac.avantio_occupation_rules = aor.id
WHERE fecha BETWEEN "2022-05-17" AND "2022-05-18"
AND aac.language = "es" AND aac.id = 326472;


/*
SELECT *
FROM avantio_availabilities
JOIN avantio_availabilities

SELECT DISTINCT(aor.id) AS  avantio_occupation_rules_id
FROM avantio_accomodations AS aa
JOIN avantio_occupation_rules AS aor ON aor.id = aa.avantio_occupation_rules
WHERE fecha BETWEEN "2022-05-17" AND "2022-05-18"
AND aa.`language` = "es" AND aa.id = 326472;
*/

# si tiene regla mostrar productos