CREATE VIEW active_users AS 
SELECT id, name, email 
FROM users 
WHERE deleted_at IS NULL;

-- Use it like a table:
SELECT * FROM active_users WHERE email like '%@example.com';