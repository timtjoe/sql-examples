CREATE TABLE users (id INTEGER PRIMARY KEY, email TEXT, age INTEGER);

EXPLAIN QUERY PLAN SELECT * FROM users WHERE email = 'a@x.io';

CREATE INDEX idx_users_email ON users(email);

EXPLAIN QUERY PLAN SELECT * FROM users WHERE email = 'a@x.io';

