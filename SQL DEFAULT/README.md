**SQL DEFAULT Constraint:**

The `DEFAULT` constraint is used to set a default value for a column. This default value will be added to all new records if no other value is specified.

### Syntax for `DEFAULT` Constraint on `CREATE TABLE`:

```sql
CREATE TABLE table_name (
    column1 datatype DEFAULT default_value,
    column2 datatype DEFAULT default_value,
    ...
);
```

- **table_name**: The name of the table.
- **column1, column2, ...**: The names of the columns in the table.
- **datatype**: The data type for each column.
- **default_value**: The default value to be assigned to the column.

### Example:

```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    hire_date DATE DEFAULT '2024-01-01',
    status VARCHAR(20) DEFAULT 'active',
    salary DECIMAL(10, 2) DEFAULT 50000.00
);
```

In this example:
- The `hire_date` column will have a default value of `2024-01-01` if no other value is specified.
- The `status` column will have a default value of `active` if no other value is specified.
- The `salary` column will have a default value of `50000.00` if no other value is specified.

These default values ensure that new records have predefined values for certain columns if no explicit values are provided during the insertion of new data.
