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


INSERT INTO authors(name, country) VALUES
    ('maggie', 'Kenya'),
    ('kanyi', 'Australia'),
    ('joel', 'Kenya');

INSERT INTO books(title, genre,price)VALUES
       ('The Goons', 'Programming', 30.44),
       ('the saying', 'programming', 40.12);




