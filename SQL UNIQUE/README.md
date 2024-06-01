In SQL, the `UNIQUE` constraint is used to ensure that all values in a column or a combination of columns are unique across the table.
This constraint ensures that no two rows can have the same value(s) in the specified column(s).

### Syntax:

When creating a table:

```sql
CREATE TABLE table_name (
    column1 datatype UNIQUE,
    column2 datatype,
    ...
);
```

Or, you can define a `UNIQUE` constraint separately:

```sql
ALTER TABLE table_name
ADD CONSTRAINT constraint_name UNIQUE (column1, column2, ...);
```

- `column1, column2, ...`: The column(s) for which you want to enforce uniqueness.
- `table_name`: The name of the table to which the `UNIQUE` constraint applies.
- `constraint_name`: (Optional) A name for the `UNIQUE` constraint.

### Example:

Suppose you have a table named `students` with columns `student_id` and `email`, and you want to ensure that each student has a unique email address:

```sql
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    email VARCHAR(255) UNIQUE,
    -- Other columns...
);
```

In this example, the `UNIQUE` constraint is applied to the `email` column, ensuring that no two students can have the same email address.

### Note:

- If you specify a `UNIQUE` constraint on multiple columns, the combination of values in those columns must be unique across the table.
- Unlike the `PRIMARY KEY` constraint, a table can have multiple `UNIQUE` constraints.
- If you try to insert or update data that violates the `UNIQUE` constraint, the database will raise a constraint violation error.
