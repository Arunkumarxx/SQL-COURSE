**SQL GROUP BY Syntax:**

The `GROUP BY` clause in SQL is used to group rows that have the same values into summary rows. It is often used in conjunction with aggregate functions like `SUM`, `COUNT`, `AVG`, etc., to perform calculations on grouped data.

### Syntax:

```sql
SELECT column_name(s), aggregate_function(column_name)
FROM table_name
GROUP BY column_name(s);
```

- **column_name(s)**: The columns you want to group by or perform aggregate functions on.
- **aggregate_function**: The function used to perform calculations on the grouped data (e.g., `SUM`, `COUNT`, `AVG`, `MAX`, `MIN`).
- **table_name**: The name of the table from which you want to retrieve data.

### Example:

```sql
SELECT department, COUNT(*) AS employee_count
FROM employees
GROUP BY department;
```

This query groups the employees by department and counts the number of employees in each department. The result set includes the department name and the count of employees for each department.

### Note:

- The `GROUP BY` clause divides the rows returned by the `SELECT` statement into groups. Each group represents a set of rows with the same values for the grouped columns.
- Aggregate functions are applied to each group separately, producing a single result value for each group.
- Columns listed in the `SELECT` clause must either appear in the `GROUP BY` clause or be used with an aggregate function.
- The order of the columns in the `GROUP BY` clause determines the grouping hierarchy. Rows are first grouped by the first column, then by the second column, and so on.
- You can use expressions or functions in the `GROUP BY` clause, not just column names.
- The `GROUP BY` clause is often used with the `HAVING` clause to filter groups based on aggregate conditions.
