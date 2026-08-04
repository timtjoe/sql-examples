-- From nested to named
SELECT category, total FROM (
  SELECT category, sum(price) AS total FROM products GROUP BY category
) WHERE total > 100;

WITH totals AS (
  SELECT category, SUM(price) AS total
  FROM products 
  GROUP BY category
)
SELECT category, total
FROM totals
WHERE total > 100;

WITH 
  category_totals AS (
    SELECT category, SUM(price) AS total FROM products GROUP BY category
  ),
  big_categories AS (
    SELECT category FROM category_totals WHERE total > 100
  )
  SELECT * from big_categories ORDER BY category;

WITH RECURSIVE ancestors AS (
  SELECT id, parent_id, name FROM people WHERE id = 42
  UNION ALL
  SELECT p.id, p.parent_id, p.name 
  FROM people p JOIN ancestors a ON p.id = a.parent_id
)
SELECT * FROM ancestors;