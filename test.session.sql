-- CREATE a table called customers with id, name, email, country
-- @block
CREATE TABLE customers(
    id  INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    country VARCHAR(2)
);

-- INSERT customer info into the table 
-- @block
INSERT INTO customers(name, email, country)
    VALUES
        ('Slade Wilson', 'slade@wilson.com', 'US'),
        ('Roman Sionis', 'roman@sionis.com', 'EN'),
        ('Bane', 'bane@hello.com', 'RU'),
        ('louis gituhi', 'luis@hola.com', 'KE'),
        ('Bruce Wayne', 'bat@wing.com', 'US');

-- using SELECT to retrieve data 
-- @block
SELECT * FROM customers;

-- say we want to display only two columns by passing column name
-- @block
SELECT name, email FROM customers; 

-- using LIMIT to limit number of rows(3) returned
-- @block
SELECT * FROM customers
LIMIT 3;

-- using ORDER BY to order returned columns(name) in descending order
-- @block
SELECT * FROM customers
ORDER BY name DESC;

-- using ORDER BY to order returned columns(name) in ascending order
-- @block
SELECT * FROM customers
ORDER BY name ASC;

-- using WHERE clause to perform conditional logic on Query
-- return rows where country is US 
-- @block
SELECT * FROM customers
WHERE country = 'US';