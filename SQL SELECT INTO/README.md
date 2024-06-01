In SQL, the `SELECT INTO` statement is used to create a new table and insert data from an existing table or query result into the new table. Here's the syntax for using `SELECT INTO`:

### Syntax:

```sql
SELECT column1, column2, ...
INTO new_table
FROM source_table
WHERE condition;
```

- `column1, column2, ...`: The columns you want to select data from in the source table.
- `new_table`: The name of the new table to create.
- `source_table`: The name of the existing table or the result of a query from which you want to select data.
- `condition`: (Optional) Specifies a condition to filter the rows selected from the source table.

### Example:

Suppose you have a table named `employees` with columns `employee_id`, `first_name`, `last_name`, and `salary`. If you want to create a new table named `employees_backup` and copy data from the `employees` table into it, you can use the `SELECT INTO` statement as follows:

```sql
SELECT employee_id, first_name, last_name, salary
INTO employees_backup
FROM employees;
```

This query will create a new table named `employees_backup` with the same columns as the `employees` table and copy all rows from the `employees` table into the new table.

### Note:

- The columns selected in the `SELECT` statement must match the columns in the `INTO` clause in terms of number and data types.
- If the `new_table` already exists, the `SELECT INTO` statement will raise an error. Ensure that the `new_table` does not exist before running the query or use a different table name.
- The `SELECT INTO` statement can also be used with subqueries to create a new table from the result of a query.
