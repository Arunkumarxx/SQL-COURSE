In SQL, the `DISTINCT` keyword is used to retrieve unique values from a column or combination of columns in a result set. Here's the syntax for using `DISTINCT`:

### Syntax:

```sql
SELECT DISTINCT column1, column2, ...
FROM table_name;
```

- `column1, column2, ...`: The columns for which you want to retrieve unique values.
- `table_name`: The name of the table from which you want to retrieve data.

### Example:

Consider a table named `employees` with columns `department_id` and `job_title`. If you want to retrieve unique combinations of `department_id` and `job_title`, you can use `DISTINCT` as follows:

```sql
SELECT DISTINCT department_id, job_title
FROM employees;
```

This query will return only unique combinations of `department_id` and `job_title` from the `employees` table.

### Note:

- `DISTINCT` applies to the entire row, not just one column. If you use `SELECT DISTINCT column1`, it will return unique values for `column1`, but it will still include duplicates if other columns in the row have different values.
- `DISTINCT` may impact performance as it requires sorting and comparing the result set to eliminate duplicates. Use it judiciously, especially with large datasets.
