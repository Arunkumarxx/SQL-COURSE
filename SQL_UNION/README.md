In SQL, the `UNION` operator is used to combine the results of two or more SELECT statements into a single result set. It is used to merge the rows returned by multiple queries into a single result set, removing duplicate rows by default.  the syntax for using the `UNION` operator:

### Syntax:

```sql
SELECT column1, column2, ...
FROM table1
UNION
SELECT column1, column2, ...
FROM table2;
```

- `column1, column2, ...`: The columns you want to retrieve from the tables.
- `table1, table2, ...`: The names of the tables from which you want to retrieve data.

### Example:

Suppose you have two tables named `employees` and `customers`, and you want to combine the names of employees and customers into a single result set:

```sql
SELECT first_name, last_name
FROM employees
UNION
SELECT first_name, last_name
FROM customers;
```

This query will return a result set containing the first name and last name of both employees and customers, removing duplicate rows by default.

### Note:

- The `UNION` operator only selects distinct values by default. To include duplicate rows, you can use the `UNION ALL` operator instead.
- The number of columns selected in each SELECT statement must be the same, and their data types must be compatible for the `UNION` operator to work.
- The columns are combined based on their positions in the SELECT lists, not based on their names.
