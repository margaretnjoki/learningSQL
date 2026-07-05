-- SELECT books.title,authors.name
-- FROM books
-- JOIN authors ON books.author_id=authors.id;


-- SELECT books.title,authors.name,authors.country
-- FROM books
-- JOIN authors ON books.author_id=authors.id
--   ORDER BY country;
-- SELECT customers.id,
--        customers.name,
--        orders.id AS order_id,
--        orders.status
-- FROM customers
-- LEFT JOIN orders
-- ON customers.id = orders.customer_id;

-- Customers who have never placed an order (name only).
-- SELECT c.name
-- FROM customers c
-- JOIN orders ON c.id = orders.customer_id
--  WHERE NOT EXISTS (SELECT 1 from orders WHERE orders.id = customer_id )
--
-- SELECT c.name
-- FROM customers c
-- WHERE NOT EXISTS (
--     SELECT 1
--     FROM orders o
--     WHERE o.customer_id = c.id
-- );
--
-- SELECT c.name, b.title, oi.quantity
-- FROM customers c
-- JOIN orders o       ON o.customer_id = c.id
-- JOIN order_items oi ON oi.order_id = o.id
--  JOIN books b        ON b.id = oi.book_id;
SELECT b.title, SUM(b.price * oi.quantity) AS revenue
FROM books b
JOIN order_items oi ON oi.book_id = b.id
GROUP BY b.title ORDER BY revenue DESC;






2q






