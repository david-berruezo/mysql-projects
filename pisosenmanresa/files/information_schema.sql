# get all tables from information_schema.tables
SELECT table_name, table_type, engine
FROM information_schema.tables
WHERE table_schema = 'db5'
ORDER BY table_name DESC;

# get all tables from information_schema.tables
SELECT table_name
FROM information_schema.tables
WHERE table_schema = "pisosenm_inmobiliaria_seis";

# columns
show full columns from avantio_accomodations;
show columns from avantio_accomodations;

SELECT COLUMN_NAME
FROM information_schema.COLUMNS
WHERE TABLE_NAME = 'avantio_accomodations';

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = "transactions"
AND TABLE_SCHEMA = 'mydbname"