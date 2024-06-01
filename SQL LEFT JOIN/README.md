Sure, here's the syntax for a LEFT JOIN in SQL:

### `LEFT JOIN Syntax`:

```sql
SELECT columns
FROM table1
LEFT JOIN table2 ON table1.column_name = table2.column_name;
```

- `columns`: The columns you want to retrieve from the result set.
- `table1, table2`: The tables you want to join.
- `ON`: Specifies the join condition, indicating which columns should be used to match rows from the tables being joined.

### `Example`:

```sql
SELECT orders.order_id, customers.customer_name
FROM orders
LEFT JOIN customers ON orders.customer_id = customers.customer_id;
```

This query retrieves the `order_id` from the `orders` table and the `customer_name` from the `customers` table. It returns all records from the `orders` table and the matched records from the `customers` table based on the condition that the `customer_id` in `orders` matches the `customer_id` in `customers`. If there is no match, NULL values are returned for the columns from the `customers` table.

### `Note`:

- The LEFT JOIN retrieves all records from the left table (`table1`), and the matched records from the right table (`table2`). If there is no match, NULL values are returned for the columns from `table2`.
- LEFT JOINs are useful for scenarios where you want to retrieve all records from one table and matching records from another table, including cases where there might not be a match.
