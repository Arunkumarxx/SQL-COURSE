In SQL, the `UPDATE` statement is used to modify existing records in a table. It allows you to change the values of one or more columns in one or more rows based on a specified condition.  the syntax for the `UPDATE` statement:

### Syntax:

```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

- `table_name`: The name of the table containing the records you want to update.
- `column1 = value1, column2 = value2, ...`: The column-value pairs that you want to update. Each column is set to the specified value.
- `condition`: (Optional) Specifies which rows to update based on a condition. If omitted, all rows in the table will be updated.

### Example:

Suppose you have a table named `employees` with columns `employee_id`, `first_name`, and `last_name`, and you want to update the last name of an employee with `employee_id` equal to 101:

```sql
UPDATE employees
SET last_name = 'Doe'
WHERE employee_id = 101;
```

This query will change the last name of the employee with `employee_id` 101 to 'Doe'.

### Note:

- You can update multiple columns simultaneously by separating the column-value pairs with commas in the `SET` clause.
- If you omit the `WHERE` clause, all records in the table will be updated with the specified values, which can have unintended consequences if not used carefully.
- Be cautious when using the `UPDATE` statement, especially without a `WHERE` clause, as it can affect a large number of records and cannot be undone without backups.
