Combining multiple tables using joins in SQL allows you to retrieve data from related tables based on a common column or condition. Here's the syntax for different types of joins:

### `INNER JOIN`:

```sql
SELECT columns
FROM table1
INNER JOIN table2 ON table1.column_name = table2.column_name;
```

This retrieves records where there is a match between the specified columns in both tables.

### `LEFT JOIN`:

```sql
SELECT columns
FROM table1
LEFT JOIN table2 ON table1.column_name = table2.column_name;
```

This retrieves all records from the left table (`table1`), and the matched records from the right table (`table2`). If there is no match, NULL values are returned for the columns from `table2`.

### `RIGHT JOIN`:

```sql
SELECT columns
FROM table1
RIGHT JOIN table2 ON table1.column_name = table2.column_name;
```

This retrieves all records from the right table (`table2`), and the matched records from the left table (`table1`). If there is no match, NULL values are returned for the columns from `table1`.

### `FULL OUTER JOIN`:

```sql
SELECT columns
FROM table1
FULL OUTER JOIN table2 ON table1.column_name = table2.column_name;
```

This retrieves all records when there is a match in either the left table (`table1`) or the right table (`table2`). If there is no match, NULL values are returned for the columns from the other table.

### `Example`:

```sql
SELECT orders.order_id, customers.customer_name
FROM orders
INNER JOIN customers ON orders.customer_id = customers.customer_id;
```

This retrieves the `order_id` from the `orders` table and the `customer_name` from the `customers` table where there is a match on the `customer_id` column between the two tables.

### `Note`:

- You can use additional conditions in the `ON` clause to refine the join criteria.
- Joins can be chained together to combine multiple tables.
- Understanding the relationships between tables is essential for determining the appropriate join type to use.
