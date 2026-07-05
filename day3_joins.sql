--
-- SELECT books.title,authors.name
-- FROM books
-- JOIN authors ON books.author_id=authors.id;


SELECT books.title,authors.name,authors.country
FROM books
JOIN authors ON books.author_id=authors.id
  ORDER BY country;