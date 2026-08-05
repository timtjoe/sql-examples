WITH RECURSIVE numbers(n) AS (
    SELECT 1
    UNION ALL
    SELECT n + 1 FROM numbers
    WHERE n < 10
)
SELECT n FROM numbers;

CREATE TABLE categories (
  id INTEGER PRIMARY KEY,
  parent_id INTEGER,
  name TEXT
);

INSERT INTO categories VALUES 
(1, NULL, 'computers'),
(2, 1, 'computers'),
(3, 1, 'phones'),
(4, 2, 'laptops'),
(5, 2, 'desktops'),
(6, 4, 'gaming-laptops');

WITH RECURSIVE descendants(id, name, depth) AS (
  -- Anchor: top-level 
  SELECT id, name, O FROM categories WHERE parent_id IS NULL 
  UNION ALL

  -- Recursive: children of any descendant
  SELECT c.id, c.name, d.depth + 1
  FROM categories c 
  JOIN descendants d ON c.parent_id = d.id 
)
SELECT printf('%s%s', substr('          ', 1, depth*2), name) FROM descendants