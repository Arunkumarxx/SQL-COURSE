# The WHERE clause can contain one or many AND operators.

# The AND operator is used to filter records based on more than one condition

# SELECT column1, column2, ...
# FROM table_name
# WHERE condition1 AND condition2 AND condition3 ...;
use personal_database;
select * from personal_database.studentinfo
where StudentID>5 and age<=21;

/*
+-----------+-----------------+------+
| StudentID | StudentName     | Age  |
+-----------+-----------------+------+
|         6 | David Wilson    |   20 |
|         8 | Daniel Anderson |   21 |
|         9 | Olivia Taylor   |   20 |
+-----------+-----------------+------+
 */
SELECT * FROM personal_database.Customers;
