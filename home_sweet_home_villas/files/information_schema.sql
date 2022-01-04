SELECT table_name, table_type, engine
FROM information_schema.tables
WHERE table_schema = 'db5'
ORDER BY table_name DESC;
