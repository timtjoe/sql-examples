-- PRIMARY KEY
CREATE TABLE users (
  id          INTEGER PRIMARY KEY,
  email       TEXT    NOT NULL,
  name        TEXT,
  create_at   TEXT    DEFAULT CURRENT_TIMESTAMP,
  role        TEXT    DEFAULT 'member'
);

-- composite primary key - multiple columns together:
CREATE TABLE order_items (
  order_id      INTEGER,
  product_id    INTEGER, 
  quantity      INTEGER,
  PRIMARY KEY (order_id, product_id)
);

-- Foreign Key
CREATE TABLE posts (
  id        INTEGER PRIMARY KEY,
  user_id   INTEGER,
  text      TEXT,
  FOREIGN KEY (user_id) REFERENCES users(id)   
);

-- CHECK
CREATE TABLE products (
  id      INTEGER PRIMARY KEY,
  name    TEXT,
  price   REAL    CHECK (price >= 0),
  stock   INTEGER CHECK (stock >= 0),
  CHECK   (length(name) > 0)     
);

CREATE TABLE orders (
  id          INTEGER PRIMARY KEY,
  user_id     INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  total       REAL NOT NULL CHECK (total >= 0),
  status      TEXT NOT NULL DEFAULT 'pending',
      CHECK (status IN ('pending', 'paid', 'shipped', 'cancelled')),
  created_at  TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE (user_id, created_at)  
);
