# SQL DELETE Statement

The `DELETE` statement is used to delete existing records from a table. 

## Syntax

```sql
DELETE FROM table_name WHERE condition;
```

- **table_name**: The name of the table from which you want to delete records.
- **condition**: Specifies which records should be deleted. If the condition is omitted, all records in the table will be deleted.

## Examples

### Delete Specific Records

To delete records that meet specific criteria, use the `WHERE` clause:

```sql
DELETE FROM employees WHERE employee_id = 10;
```

This statement deletes the record from the `employees` table where the `employee_id` is 10.

### Delete All Records

To delete all records from a table, omit the `WHERE` clause:

```sql
DELETE FROM employees;
```

This statement deletes all records from the `employees` table. **Note**: Use this statement with caution as it will remove all data from the table.

### Using Multiple Conditions

You can specify multiple conditions using `AND` or `OR`:

```sql
DELETE FROM employees WHERE status = 'inactive' AND hire_date < '2023-01-01';
```

This statement deletes records from the `employees` table where the `status` is `inactive` and the `hire_date` is before `2023-01-01`.

### Example with JOIN

In some cases, you might need to delete records based on conditions involving multiple tables. This can be achieved using a `JOIN`:

```sql
DELETE e
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Sales';
```

This statement deletes records from the `employees` table where the employee's department is 'Sales'.

## Notes

- Always use a `WHERE` clause to specify which records should be deleted. Omitting the `WHERE` clause will delete all records from the table.
- Consider using a `SELECT` statement with the same `WHERE` clause first to ensure that the correct records are selected before performing the `DELETE` operation.
- Deleting records cannot be undone. Ensure you have a backup or are certain about the records you are deleting.

By following these guidelines and examples, you can effectively use the `DELETE` statement to manage your data in SQL databases.
