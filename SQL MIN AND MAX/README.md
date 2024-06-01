The SQL MIN and MAX functions are aggregate functions used to find the minimum and maximum values respectively from a set of values.

### `MIN Function Syntax`:

```sql
SELECT MIN(column_name)
FROM table_name;
```

- `column_name`: The column from which you want to find the minimum value.
- `table_name`: The table from which you want to retrieve data.

### `MAX Function Syntax`:

```sql
SELECT MAX(column_name)
FROM table_name;
```

- `column_name`: The column from which you want to find the maximum value.
- `table_name`: The table from which you want to retrieve data.

### `Example`:

Consider a table named `products` with a column `price`.

```sql
SELECT MIN(price) AS min_price
FROM products;
```

This query retrieves the minimum price from the `products` table.

```sql
SELECT MAX(price) AS max_price
FROM products;
```

This query retrieves the maximum price from the `products` table.

### `Note`:

- The MIN and MAX functions ignore NULL values.
- You can also use the MIN and MAX functions in combination with other columns or expressions to find the minimum or maximum value based on certain conditions.
