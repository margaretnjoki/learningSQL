CREATE TABLE authors(
    id SERIAL PRIMARY KEY ,
    name VARCHAR(100) NOT NULL ,
    country VARCHAR(50)
);

CREATE TABLE books(
    id SERIAL PRIMARY KEY ,
    title VARCHAR(200) NOT NULL ,
    author_id  INTEGER REFERENCES authors(id),
    price NUMERIC (6,2)NOT NULL ,
    published_year INTEGER,
    genre VARCHAR(50)
);

INSERT INTO authors(name, country) VALUES
     ('Robert Martin', 'USA'),
     ('Andrew Hunt', 'USA'),
     ('Joshua Bloch', 'USA'),
    ('Martin Fowler','UK' ),
    ('Kent Beck', 'USA');

INSERT INTO books(title, author_id, price, published_year, genre) VALUES
       ('Clean Code', 1, 30.00,2008, 'Programming'),
       ('Clean Architecture', 1, 32.50, 2017,'Programming'),
       ('The Pragmatic Programmer', 2,42.00,1999,'Programming'),
       ('Effective Java', 3,45.00,2018, 'Programming'),
       ('Refactoring', 4,47.99, 1999, 'Programming'),
       ('Pattern of Enterprice App Arch', 4,54.00, 2002,'Architecture'),
       ('Test Driven Development',5, 39.99, 2002, 'Programming'),
       ('Domain-Driven', 4,55.00, 2003, 'Architecture');
--         ('Clean test', 1, -10.00,2008, 'Programming');



INSERT INTO authors(name, country) VALUES
    ('maggie', 'Kenya'),
    ('kanyi', 'Australia'),
    ('joel', 'Kenya');

INSERT INTO books(title, genre,price)VALUES
       ('The Goons', 'Programming', 30.44),
       ('the saying', 'programming', 40.12);

CREATE TABLE customers(
    id SERIAL PRIMARY KEY ,
    name VARCHAR (100) NOT NULL ,
    email VARCHAR(120),
    city VARCHAR(60)
);

CREATE TABLE  orders(
    id SERIAL PRIMARY KEY ,
    customer_id INTEGER REFERENCES customers(id),
    order_date DATE NOT NULL ,
    status VARCHAR(20)
);

CREATE TABLE order_items(
    id SERIAL PRIMARY KEY ,
    order_id INTEGER REFERENCES orders(id),
    book_id INTEGER REFERENCES books(id),
    quantity INTEGER NOT NULL
);

INSERT INTO customers(name, email, city) VALUES
    ('Amina Yusuf', 'amina@mail.com', 'Nairobi'),
    ('Brian otieno', 'brian@mail.com','Kisumu'),
    ('Chen Wei', 'chen@mail.com','Nairobi'),
    ('Dorothy Kim', NULL,'Mombasa');

INSERT INTO orders(customer_id, order_date, status) VALUES
         (1,'2024-01-10', 'PAID'),
         (1,'2024-02-15','SHIPPED'),
         (2,'2024-02-20','PAID'),
         (3,'2024-03-01','PENDING');

INSERT INTO order_items(order_id, book_id, quantity) VALUES
        (1,1,1),
        (1,4,2),
        (2,5,1),
        (3,3,1),
        (3,8,1),
        (4,1,3);


