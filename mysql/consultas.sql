# describe
describe information_schema.SCHEMATA;
describe information_schema.columns;
describe information_schema.tables;

# tablas mysql INFORMATION_SCHEMA
INFORMATION_SCHEMA SCHEMATA
INFORMATION_SCHEMA TABLES
INFORMATION_SCHEMA COLUMNS
INFORMATION_SCHEMA STATISTICS
INFORMATION_SCHEMA USER_PRIVILEGES
INFORMATION_SCHEMA SCHEMA_PRIVILEGES
INFORMATION_SCHEMA TABLE_PRIVILEGES
INFORMATION_SCHEMA COLUMN_PRIVILEGES
INFORMATION_SCHEMA CHARACTER_SETS
INFORMATION_SCHEMA COLLATIONS
INFORMATION_SCHEMA COLLATION_CHARACTER_SET_APPLICABILITY
INFORMATION_SCHEMA TABLE_CONSTRAINTS
INFORMATION_SCHEMA KEY_COLUMN_USAGE
INFORMATION_SCHEMA ROUTINES
INFORMATION_SCHEMA VIEWS
INFORMATION_SCHEMA TRIGGERS

# schemata
SELECT catalog_name , schema_name , default_character_set_name, default_collation_name , sql_path
FROM information_schema.SCHEMATA
WHERE schema_name = "phpandfr_portvil_dos";

# tables
# get table name , table type , engine
SELECT table_name, table_type, engine
FROM information_schema.tables
WHERE table_schema = 'pisosenm_inmobiliaria_cinco'
ORDER BY table_name DESC;

# tables content


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
AND TABLE_SCHEMA = "mydbname";

# compare two columns database
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = "dynamic_pages"
AND TABLE_SCHEMA = "test_doctrine_tres";

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = "dynamic_pages"
AND TABLE_SCHEMA = "phpandfr_portvil_dos";

# delete first and insert second
DELETE from test_doctrine_tres.dynamic_pages where id <> -1;

INSERT INTO test_doctrine_tres.dynamic_pages
SELECT dp.*
FROM phpandfr_portvil_dos.dynamic_pages as dp;
