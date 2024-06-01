**SQL FOREIGN KEY Syntax:**

The `FOREIGN KEY` constraint in SQL is used to enforce referential integrity between two tables. It establishes a relationship between a column in the current table (the child table) and a column in another table (the parent table).

### Syntax:

```sql
CREATE TABLE table_name (
    column_name1 data_type,
    column_name2 data_type,
    ...
    FOREIGN KEY (column_name1) REFERENCES parent_table(parent_column)
);
```

- **table_name**: The name of the child table.
- **column_name1**: The column in the child table that will serve as the foreign key.
- **data_type**: The data type of the column.
- **parent_table**: The name of the parent table.
- **parent_column**: The column in the parent table that the foreign key references.

### Example:

```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    product_id INT,
    quantity INT,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
```

In this example:
- The `orders` table has a column named `product_id`, which serves as the foreign key.
- The `products` table is the parent table, and it has a column also named `product_id`.
- The `product_id` column in the `orders` table references the `product_id` column in the `products` table, establishing a relationship between the two tables.

### Note:

- The referenced column in the parent table must be a primary key or have a unique constraint defined on it.
- The foreign key constraint ensures that the values in the child table's foreign key column correspond to valid values in the parent table.
- If a foreign key constraint is violated (i.e., an attempt is made to insert a value into the child table's foreign key column that does not exist in the parent table), an error will occur, unless the constraint is defined as `ON DELETE CASCADE` or `ON UPDATE CASCADE`, which specifies that corresponding rows in the child table should be automatically deleted or updated when a row in the parent table is deleted or updated.
