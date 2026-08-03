INSERT INTO users (name, age) VALUES ('Ada', 36);
INSERT INTO users VALUES (1, 'Linus', 53);
INSERT INTO users (name, age) VALUES 
      ('Grace',   85),
      ('Donald',  84),
      ('Edsger',  72);

-- INSERT from SELECT - copy or transform:
INSERT INTO archived_users (id, name)
SELECT id, name FROM users WHERE last_login < '2020-01-01';

-- UPDATE
UPDATE users SET age = age + 1;
UPDATE users SET age = age + 1 WHERE id = 1;
UPDATE users SET age = 30, name = 'Ada L.' WHERE id = 1;

-- DELETE
DELETE FROM users;
DELETE FROM users WHERE id = 1;
DELETE FROM users WHERE last_login < '2020-01-01';

-- Practice 
-- Update Bob's salary to 90000
UPDATE employees SET salary = 90000 WHERE name = 'Bob';

-- Delete Carol
DELETE FROM employees WHERE name = 'Carol';

-- Format row
SELECT name || '|' || salary AS result FROM employees ORDER BY name ASC;

