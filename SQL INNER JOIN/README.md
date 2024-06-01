**SQL INNER JOIN Syntax:**

An `INNER JOIN` in SQL is used to combine rows from two or more tables based on a related column between them. It retrieves only the rows where there is a match in both tables according to the specified join condition.

### ``Syntax``:

```sql
SELECT column_name(s)
FROM table1
INNER JOIN table2 ON table1.column_name = table2.column_name;
```

- ``column_name(s)``: The columns you want to retrieve from the result set.
- ``table1, table2``: The tables to be joined.
- ``ON``: Specifies the join condition, indicating which columns should be used to match rows from the tables being joined.

### ``Example``:

```sql
SELECT orders.order_id, customers.customer_name
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id;
```

This query retrieves the `order_id` from the `orders` table and the `customer_name` from the `customers` table where there is a match on the `customer_id` column between the two tables.

### ``Note``:

- An `INNER JOIN` returns rows where there is at least one match in both tables.
- If there is no match for a row in one table, the row will not appear in the result set.
- You can join more than two tables using multiple `INNER JOIN` clauses in the same query.
- It's crucial to specify the join condition correctly to ensure accurate results.
