**SQL HAVING Syntax:**

The `HAVING` clause in SQL is used to filter groups of rows returned by a `GROUP BY` clause based on specified conditions. It is similar to the `WHERE` clause but operates on grouped rows rather than individual rows.

### Syntax:

```sql
SELECT column_name(s), aggregate_function(column_name)
FROM table_name
GROUP BY column_name(s)
HAVING condition;
```

- **column_name(s)**: The columns you want to retrieve or perform aggregate functions on.
- **aggregate_function**: The function used to perform calculations on the grouped data (e.g., `SUM`, `COUNT`, `AVG`, `MAX`, `MIN`).
- **table_name**: The name of the table from which you want to retrieve data.
- **condition**: The condition that determines which groups will be included in the result set.

### Example:

```sql
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
```

This query calculates the average salary for each department and filters out departments where the average salary is greater than $50,000. The result set includes the department name and the average salary for each qualifying department.

### Note:

- The `HAVING` clause is applied after the `GROUP BY` clause and is used to filter groups based on aggregate conditions.
- Unlike the `WHERE` clause, which filters individual rows before they are grouped, the `HAVING` clause filters groups of rows after they have been grouped.
- Columns listed in the `SELECT` clause must either appear in the `GROUP BY` clause or be used with an aggregate function.
- The `HAVING` clause can contain aggregate functions, column names, or expressions.
- You can combine the `HAVING` clause with the `GROUP BY` clause to perform complex filtering and aggregations on grouped data.
