**SQL IN Syntax:**

The `IN` operator in SQL is used to specify multiple values in a `WHERE` clause. It allows you to retrieve rows where a specified column value matches any value in a list.

### Syntax:

```sql
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);
```

- **column_name(s)**: The column(s) you want to retrieve.
- **table_name**: The name of the table from which you want to retrieve data.
- **value1, value2, ...**: The list of values to compare against the specified column.

### Example:

```sql
SELECT product_name, price
FROM products
WHERE category_id IN (1, 2, 3);
```

This query retrieves the `product_name` and `price` from the `products` table where the `category_id` is either 1, 2, or 3.

### Note:

- The `IN` operator allows you to specify multiple values to be compared against a column.
- It is equivalent to using multiple `OR` conditions in a `WHERE` clause but provides a more concise syntax.
- You can use the `IN` operator with subqueries to retrieve values dynamically based on the result of another query.
- The list of values enclosed in parentheses after the `IN` keyword can be a comma-separated list of literals, expressions, or a subquery.
