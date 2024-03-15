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

-- LIKE
-- return rows where name start with B
-- @block
SELECT * FROM customers
WHERE name LIKE 'B%'

-- Using AND in WHERE clause to filter records with more than 1 condition
-- @block
SELECT * FROM customers
WHERE name LIKE 'B%' AND country = 'US'

-- Using OR to filter records where one condition must be true
-- @block
SELECT * FROM customers
WHERE country = 'US' OR country = 'TZ'

-- Combining both OR and AND
-- return rows where country is 'US' AND name starts with B or L
-- @block
SELECT * FROM customers
WHERE country = 'US' AND (name LIKE 'B%' OR name LIKE 'L%')

-- NOT used in combination with other other operators
-- does the opposite also known as negative operator
-- will return rows where country is not US
-- @block
SELECT * FROM customers
WHERE NOT country = 'US'

-- NOT LIKE
-- return rows where name does not start with 'B%'
-- @block
SELECT * FROM customers
WHERE name NOT LIKE 'B%'

-- NOT BETWEEN
-- return rows where id is not between 3 and 5
-- @block
SELECT * FROM customers
WHERE id NOT BETWEEN 3 AND 5

-- NOT IN
-- return customers not in US and KE
-- @block
SELECT * FROM customers
WHERE country NOT IN ('US', 'KE')

-- NOT GREATER THAN
-- return customers where id is not greater than 3
-- @block
SELECT * FROM customers
WHERE NOT id > 3

-- NOT LESS THAN
-- return customers where id is not less than 3
-- @block
SELECT * FROM customers
WHERE NOT id < 3