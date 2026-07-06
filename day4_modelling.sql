-- UPDATE books
-- SET price=price + (price * 0.05)
-- WHERE genre='Programming';
-- SELECT * FROM BOOKS;//confirming whether it has modified the database.
UPDATE orders
SET status='PAID' WHERE id=4;
