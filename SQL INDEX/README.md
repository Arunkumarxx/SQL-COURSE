**SQL INDEX Syntax:**

In SQL, an index is a database object that improves the speed of data retrieval operations on a table at the cost of additional storage space and decreased performance during data modification.

### Syntax:

```sql
CREATE INDEX index_name
ON table_name (column_name);
```

- **index_name**: The name of the index.
- **table_name**: The name of the table on which the index is created.
- **column_name**: The column(s) on which the index is created.

### Example:

```sql
CREATE INDEX idx_lastname
ON employees (last_name);
```

This statement creates an index named `idx_lastname` on the `last_name` column of the `employees` table. It speeds up queries that involve searching or sorting by last name.

### Note:

- Indexes can be created on one or more columns of a table.
- They are used to optimize data retrieval operations such as searching, sorting, and joining.
- Indexes improve query performance by allowing the database engine to quickly locate rows based on the indexed columns.
- However, they come with overhead costs in terms of storage space and performance impact on data modification operations (insert, update, delete).
- It's important to create indexes selectively on columns that are frequently used in search criteria or join conditions to avoid unnecessary overhead.
- Indexes can also be dropped using the `DROP INDEX` statement if they are no longer needed or are causing performance issues.
