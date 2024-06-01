In SQL, a primary key is a column or a set of columns that uniquely identifies each row in a table. It ensures the integrity of the data by enforcing the uniqueness constraint and providing fast access to rows. Here's how you define a primary key in SQL:

### `Primary Key Definition Syntax`:

When creating a table:

```sql
CREATE TABLE table_name (
    column1 datatype PRIMARY KEY,
    column2 datatype,
    ...
);
```

Or, you can define a primary key constraint separately:

```sql
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    ...
    PRIMARY KEY (column1)
);
```

### `Example`:

Consider a table named `employees` with columns `employee_id`, `first_name`, and `last_name`. If you want to set the `employee_id` column as the primary key:

```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);
```

This creates the `employees` table with `employee_id` as the primary key.

### `Note`:

- Each table can have only one primary key.
- The primary key column(s) cannot contain NULL values.
- A primary key constraint automatically creates a unique index on the column(s), which ensures fast access to rows by their primary key values.
- It's a best practice to define a primary key for every table to ensure data integrity and optimize query performance.
