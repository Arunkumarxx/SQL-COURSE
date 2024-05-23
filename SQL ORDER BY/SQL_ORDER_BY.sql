-- The ORDER BY keyword is used to sort
-- the result-set in ascending or descending order.

select  * from personal_database.studentinfo
order by StudentID ;
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


select  * from personal_database.studentinfo
order by StudentID desc;
/* -- it prints descending order
 +-----------+------------------+------+
| StudentID | StudentName      | Age  |
+-----------+------------------+------+
|         9 | Olivia Taylor    |   20 |
|         8 | Daniel Anderson  |   21 |
|         7 | Jessica Martinez |   22 |
|         6 | David Wilson     |   20 |
|         5 | Sarah Brown      |   23 |
|         4 | Emily Davis      |   22 |
|         3 | Michael Johnson  |   19 |
|         2 | Jane Smith       |   21 |
|         1 | John Doe         |   20 |
+-----------+------------------+------+
 */


 select * from personal_database.studentinfo
 order by StudentID asc;
-- it prints ascending order
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

