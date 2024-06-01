In SQL, a `RIGHT JOIN` is a type of join operation that returns all rows from the right table (also known as the second table) and the matched rows from the left table (also known as the first table). If there are no matching rows in the left table, NULL values are included in the result set.

### `RIGHT JOIN Syntax`:

```sql
SELECT columns
FROM table1
RIGHT JOIN table2 ON table1.column_name = table2.column_name;
```

- `columns`: The columns you want to retrieve from the result set.
- `table1, table2`: The tables you want to join.
- `column_name`: The column(s) used to match rows between the tables.

### `Example`:

Consider two tables named `employees` and `departments`, where the `employees` table contains columns `employee_id`, `first_name`, and `department_id`, and the `departments` table contains columns `department_id` and `department_name`. If you want to retrieve all departments and the employees who belong to each department (including departments with no employees), you can use a `RIGHT JOIN` as follows:

```sql
SELECT departments.department_id, departments.department_name, employees.first_name
FROM departments
RIGHT JOIN employees ON departments.department_id = employees.department_id;
```

This query returns all departments, along with the first names of the employees who belong to each department. If a department has no matching employees, NULL values will be included in the `first_name` column.

### `Note`:

- `RIGHT JOIN` is less commonly used compared to `INNER JOIN` or `LEFT JOIN`, but it can be useful in scenarios where you want to ensure that all rows from the right table are included in the result set.
- In some database systems, such as MySQL, `RIGHT JOIN` is also known as `RIGHT OUTER JOIN`.
