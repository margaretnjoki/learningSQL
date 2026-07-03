-- SELECT title,price, price * 0.15 As price_with_tax FROM books;
-- SELECT UPPER(title),LENGTH(title)FROM books;
-- SELECT title, COALESCE (genre, 'unknown') As genre FROM books;
-- SELECT COUNT(*) FROM books;
-- SELECT max(price), MIN(price), AVG(price) FROM books;
-- SELECT genre, COUNT(*) FROM books GROUP BY genre;
-- SELECT genre, ROUND(AVG(price), 2) As average_price FROM books GROUP BY genre ORDER BY average_price DESC;
-- SELECT author_id, COUNT(*) AS books_written
-- FROM books GROUP BY author_id HAVING COUNT(*) >= 2;
-- SELECT published_year, COUNT(*) As published_books FROM books GROUP BY published_year ORDER BY published_year ASC;
-- SELECT title,EXTRACT(YEAR FROM CURRENT_DATE) - published_year As age_years FROM books;


--ASSIGNMENT

--SELECT COUNT(*), SUM(price) As catalogue_value, AVG(price) As average_price FROM books;
-- SELECT genre, COUNT(*) As book_count, AVG(price) As average_price FROM books GROUP BY genre ORDER BY book_count DESC;
-- SELECT COUNT(*) AS total_books,(published_year / 10) * 10 AS decade FROM books GROUP BY (published_year / 10) * 10 ORDER BY decade;
