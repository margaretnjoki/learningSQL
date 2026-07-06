-- UPDATE books
-- SET price=price + (price * 0.05)
-- WHERE genre='Programming';
-- SELECT * FROM BOOKS;//confirming whether it has modified the database.

-- UPDATE orders
-- SET status='PAID' WHERE id=4;

-- DELETE FROM order_items WHERE quantity=0;

-- ALTER TABLE customers ADD CONSTRAINT uq_email UNIQUE (email);

-- ALTER TABLE books ADD CONSTRAINT chk_price CHECK ( price>0 );

-- CREATE INDEX idx_items_book ON order_items(book_id);

-- EXPLAIN SELECT * FROM orders WHERE customer_id=1;
-- CREATE INDEX idx_orders_customer ON orders(customer_id);
-- EXPLAIN SELECT * FROM orders WHERE customer_id=1;

-- BEGIN;
-- INSERT INTO orders(customer_id, order_date, status) VALUES
--           (3,'2024-02-12', 'PENDING');
-- INSERT INTO order_items(order_id, book_id, quantity) VALUES
--              (2,3,3);
-- COMMIT;

-- CREATE INDEX  idx_orders_customer ON orders(customer_id);
CREATE INDEX idx_books_author_id
    ON books(author_id);

CREATE INDEX idx_orders_customer_id
    ON orders(customer_id);

CREATE INDEX idx_order_items_order_id
    ON order_items(order_id);

CREATE INDEX idx_order_items_book_id
    ON order_items(book_id);