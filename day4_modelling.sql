-- UPDATE books
-- SET price=price + (price * 0.05)
-- WHERE genre='Programming';
-- SELECT * FROM BOOKS;//confirming whether it has modified the database.

-- UPDATE orders
-- SET status='PAID' WHERE id=4;

-- DELETE FROM order_items WHERE quantity=0;

-- ALTER TABLE customers ADD CONSTRAINT uq_email UNIQUE (email);

-- ALTER TABLE books ADD CONSTRAINT chk_price CHECK ( price>0 );

CREATE INDEX idx_items_book ON order_items(book_id);
