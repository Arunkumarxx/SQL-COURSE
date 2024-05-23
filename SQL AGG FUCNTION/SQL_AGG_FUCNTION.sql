-- -- SQL Aggregate Functions
--
-- SQL Aggregate Functions
-- An aggregate function is a function that performs a calculation on a set of values, and returns a single value.
--
-- Aggregate functions are often used with the GROUP BY clause of the SELECT statement. The GROUP BY clause splits the result-set into groups of values and the aggregate function can be used to return a single value for each group.
--
-- The most commonly used SQL aggregate functions are:
--
-- MIN() - returns the smallest value within the selected column
-- MAX() - returns the largest value within the selected column
-- COUNT() - returns the number of rows in a set
-- SUM() - returns the total sum of a numerical column
-- AVG() - returns the average value of a numerical column
-- Aggregate functions ignore null values (except for COUNT()).
-- Creating the customer table
CREATE TABLE customer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    points INT
);

-- Inserting sample data into the customer table
INSERT INTO customer (name, age, points)
VALUES
    ('John Doe', 35, 100),
    ('Jane Smith', 28, 80),
    ('Alice Johnson', 42, 120),
    ('Bob Williams', 30, 90),
    ('Emma Brown', 45, 110);

-- Querying the customer table using aggregate functions
SELECT
    COUNT(*) AS total_customers,
    AVG(age) AS average_age,
    MAX(age) AS max_age,
    MIN(age) AS min_age,
    SUM(points) AS total_points
FROM customer;
