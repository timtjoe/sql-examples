SELECT 'Ada', 1815, 2 * 5;
SELECT name, population FROM cities;

-- Expressions on columns
SELECT  name, 
        population / 1000000,
        UPPER(country)
FROM cities;

-- Aliases: AS
SELECT  name, 
        population / 1000000.0 AS millions,
        'City: ' || name AS label 
FROM  cities;