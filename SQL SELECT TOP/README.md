In SQL, the `TOP` (used in Microsoft SQL Server) or `LIMIT` (used in MySQL, PostgreSQL, SQLite) clauses are used to restrict the number of rows returned by a query. Here's how you can use them:

### `TOP Syntax` (Microsoft SQL Server):

```sql
SELECT TOP number_of_rows columns
FROM table_name
WHERE condition;
```

- `number_of_rows`: The number of rows you want to retrieve from the result set.
- `columns`: The columns you want to retrieve from the result set.
- `table_name`: The name of the table from which you want to retrieve data.
- `condition`: (Optional) Specifies a condition to filter the rows selected from the table.

### `LIMIT Syntax` (MySQL, PostgreSQL, SQLite):

```sql
SELECT columns
FROM table_name
WHERE condition
LIMIT number_of_rows;
```

- `columns`: The columns you want to retrieve from the result set.
- `table_name`: The name of the table from which you want to retrieve data.
- `condition`: (Optional) Specifies a condition to filter the rows selected from the table.
- `number_of_rows`: The maximum number of rows to be returned by the query.

### Example:

Suppose you have a table named `employees` with columns `employee_id`, `first_name`, `last_name`, and `salary`. If you want to retrieve the top 10 highest paid employees from the `employees` table:

#### Microsoft SQL Server (Using `TOP`):

```sql
SELECT TOP 10 employee_id, first_name, last_name, salary
FROM employees
ORDER BY salary DESC;
```

#### MySQL, PostgreSQL, SQLite (Using `LIMIT`):

```sql
SELECT employee_id, first_name, last_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 10;
```

These queries will return the top 10 highest paid employees from the `employees` table, sorted by salary in descending order.

### Note:

- The `TOP` clause is specific to Microsoft SQL Server, while `LIMIT` is more commonly used in other database systems like MySQL, PostgreSQL, and SQLite.
- If you're using Microsoft SQL Server, you can also use `TOP` with a percentage (`TOP 10 PERCENT`) to retrieve a specific percentage of rows. This functionality is not available in MySQL, PostgreSQL, or SQLite.
