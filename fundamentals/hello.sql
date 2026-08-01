SELECT name, population
FROM cities
WHERE country = 'JP'
ORDER BY population DESC
LIMIT 3;