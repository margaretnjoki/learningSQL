-- SELECT books.title,authors.name
-- FROM books
-- JOIN authors ON books.author_id=authors.id;


-- SELECT books.title,authors.name,authors.country
-- FROM books
-- JOIN authors ON books.author_id=authors.id
--   ORDER BY country;
SELECT customers.id,
       customers.name,
       orders.id AS order_id,
       orders.status
FROM customers
LEFT JOIN orders
ON customers.id = orders.customer_id;





