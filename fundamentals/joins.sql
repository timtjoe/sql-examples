CREATE TABLE authors (
  id      INTEGER PRIMARY KEY,
  name    TEXT NOT NULL    
)

CREATE TABLE books (
  id        INTEGER PRIMARY KEY,
  title     TEXT NOT NULL,
  author_id INTEGER
)

-- Inner Join: the workhorse
SELECT  books.title, authors.name
FROM    books
JOIN    authors ON books.author_id = authors.id;

-- Left Join: keep the unmatched
SELECT    a.name, b.title
FROM      authors a
LEFT JOIN books b ON b.author_id = a.id;

-- Counting per parent
SELECT    a.name, COUNT(b.id) AS book_count
FROM      authors a
LEFT JOIN books b ON b.author_id = a.id
GROUP BY  a.name

-- Exercise
SELECT    b.title, a.name
FROM      books b
JOIN      authors a ON b.author_id = a.id 
ORDER BY  b.title ASC;
