In SQL, the `ORDER BY` clause is used to sort the result set returned by a query based on one or more columns. It sorts the rows in ascending or descending order, as specified.

### `ORDER BY Clause Syntax`:

```sql
SELECT columns
FROM table
ORDER BY column1 [ASC|DESC], column2 [ASC|DESC], ...;
```

- `columns`: The columns you want to retrieve from the result set.
- `table`: The table from which you want to retrieve data.
- `column1`, `column2`, etc.: The columns by which you want to sort the result set.
- `ASC`: (Optional) Sorts the result set in ascending order (default behavior).
- `DESC`: Sorts the result set in descending order.

### `Example`:

Consider a table named `employees` with columns `employee_id`, `first_name`, and `last_name`. If you want to retrieve employees sorted by their last names in ascending order, you can use the `ORDER BY` clause as follows:

```sql
SELECT *
FROM employees
ORDER BY last_name;
```

This query selects all columns from the `employees` table and sorts the result set based on the `last_name` column in ascending order.

### `Note`:

- You can sort by multiple columns by specifying additional columns separated by commas in the `ORDER BY` clause.
- By default, sorting is done in ascending order. To sort in descending order, you can explicitly specify `DESC` after the column name.
- The `ORDER BY` clause is typically the last clause in a SQL query, after the `WHERE` clause (if used) and before any `LIMIT` or `OFFSET` clauses.
