In SQL, the NOT NULL constraint is used to ensure that a column cannot contain NULL values. It is applied to a column at the time of table creation or modification to enforce data integrity rules.

### `NOT NULL Constraint Syntax`:

When creating a table:

```sql
CREATE TABLE table_name (
    column1 datatype NOT NULL,
    column2 datatype,
    ...
);
```

When altering an existing table:

```sql
ALTER TABLE table_name
MODIFY column_name datatype NOT NULL;
```

### `Example`:

Consider a table named `employees` with a column `employee_id` where the NOT NULL constraint is applied.

```sql
CREATE TABLE employees (
    employee_id INT NOT NULL,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);
```

This ensures that the `employee_id` column cannot contain NULL values.

### `Note`:

- The NOT NULL constraint is optional. If it is not specified, the column allows NULL values by default.
- When inserting or updating records, if a value is not provided for a column with the NOT NULL constraint, or if an attempt is made to update an existing row with a NULL value in a NOT NULL column, the database will generate an error.
- The NOT NULL constraint helps maintain data integrity by ensuring that essential information is always provided for the specified column.
