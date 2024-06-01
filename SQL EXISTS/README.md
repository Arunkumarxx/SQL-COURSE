**SQL EXISTS Syntax:**

The `EXISTS` operator in SQL is used to check for the existence of rows returned by a subquery. It returns `TRUE` if the subquery returns one or more rows; otherwise, it returns `FALSE`.

### Syntax:

```sql
SELECT column_name(s)
FROM table_name
WHERE EXISTS (subquery);
```

- **column_name(s)**: The columns you want to retrieve.
- **table_name**: The table from which you want to retrieve data.
- **subquery**: A SELECT statement that returns data. The `EXISTS` operator checks whether this subquery returns any rows.

### Example:

```sql
SELECT employee_id, employee_name
FROM employees
WHERE EXISTS (
    SELECT 1
    FROM orders
    WHERE orders.employee_id = employees.employee_id
);
```

This query selects the `employee_id` and `employee_name` from the `employees` table where there exists at least one order for each employee in the `orders` table.

The subquery `(SELECT 1 FROM orders WHERE orders.employee_id = employees.employee_id)` returns `1` if there is at least one order for the corresponding employee in the outer query's `employees` table. If such a row exists, the `EXISTS` operator returns `TRUE`, and the outer query selects the employee details.

### Note:

- The subquery can be any valid SQL query that returns data.
- The result of the subquery is not important; the `EXISTS` operator only checks for the existence of rows returned by the subquery.
- `EXISTS` is typically used with correlated subqueries, where the inner query refers to columns from the outer query.
