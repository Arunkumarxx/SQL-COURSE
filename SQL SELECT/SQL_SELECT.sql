# The SELECT statement is used to select data from a database.
# SELECT column1, column2, ...
# FROM table_name;

USE personal_database;

select * from personal_database.studentinfo;
/*

 +-----------+------------------+------+
| StudentID | StudentName      | Age  |
+-----------+------------------+------+
|         1 | John Doe         |   20 |
|         2 | Jane Smith       |   21 |
|         3 | Michael Johnson  |   19 |
|         4 | Emily Davis      |   22 |
|         5 | Sarah Brown      |   23 |
|         6 | David Wilson     |   20 |
|         7 | Jessica Martinez |   22 |
|         8 | Daniel Anderson  |   21 |
|         9 | Olivia Taylor    |   20 |
+-----------+------------------+------+

 */