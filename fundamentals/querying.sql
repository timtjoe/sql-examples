-- Creating and querying tables

CREATE  TABLE cities (
  id          INTEGER PRIMARY KEY,
  name        TEXT NOT NULL,
  country     TEXT NOT NULL,
  population  INTEGER
);

-- Insert
INSERT INTO cities (name, country, population) VALUES
    ('Tokyo',   'JP',   13960000),
    ('Osaka',   'JP',   2691000),
    ('Berlin',  'DE',   3645000);

-- And back out again
