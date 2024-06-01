# SQL Aggregate Functions

SQL Aggregate Functions are functions that perform calculations on a set of values and return a single value. They are often used with the GROUP BY clause of the SELECT statement to split the result-set into groups of values.

The most commonly used SQL aggregate functions are:

- `MIN()`: Returns the smallest value within the selected column
- `MAX()`: Returns the largest value within the selected column
- `COUNT()`: Returns the number of rows in a set
- `SUM()`: Returns the total sum of a numerical column
- `AVG()`: Returns the average value of a numerical column

Aggregate functions ignore null values (except for COUNT()).

## Example: Customer Table

To illustrate the usage of SQL aggregate functions, let's consider a sample `customer` table:

| id  | name          | age | points |
| --- | ------------- | --- | ------ |
| 1   | John Doe      | 35  | 100    |
| 2   | Jane Smith    | 28  | 80     |
| 3   | Alice Johnson | 42  | 120    |
| 4   | Bob Williams  | 30  | 90     |
| 5   | Emma Brown    | 45  | 110    |

### SQL Query:

```sql
SELECT
    COUNT(*) AS total_customers,
    AVG(age) AS average_age,
    MAX(age) AS max_age,
    MIN(age) AS min_age,
    SUM(points) AS total_points
FROM customer;
