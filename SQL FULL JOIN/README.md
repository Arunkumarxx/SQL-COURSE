**SQL FULL JOIN Syntax:**

The `FULL JOIN` in SQL is used to combine rows from two or more tables, including all rows from both tables regardless of whether there is a matching row in the other table. When there is no match, the result set will contain NULL values for columns from the table without a matching row.

### Syntax:

```sql
SELECT column_name(s)
FROM table1
FULL JOIN table2
ON table1.column_name = table2.column_name;
```

- **column_name(s)**: The columns you want to retrieve.
- **table1, table2**: The tables to be joined.
- **ON**: Specifies the join condition. It indicates which columns should be used to match rows from the tables being joined.

### Example:

```sql
SELECT orders.order_id, orders.product_id, products.product_name
FROM orders
FULL JOIN products
ON orders.product_id = products.product_id;
```

This query performs a `FULL JOIN` between the `orders` and `products` tables on the `product_id` column. It retrieves the `order_id` and `product_id` from the `orders` table and the `product_name` from the `products` table.

### Note:

- A `FULL JOIN` returns all rows from both tables, with NULL values in columns where no match is found.
- If there is a match between rows in the two tables based on the join condition, those rows will be included in the result set.
- If there is no match for a row in one table, but there are matching rows in the other table, the result set will include NULL values for columns from the table without a match.
- The result set will contain all rows from both tables, regardless of whether there is a match or not.
