## SQL BETWEEN Operator



The SQL `BETWEEN` operator allows selecting values within a specified range, inclusively. This operator is useful for filtering data based on numerical, textual, or date values.

### Syntax

```sql
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```

### Example: Numeric Range

```sql
SELECT *
FROM Products
WHERE Price BETWEEN 10 AND 20;
```

### NOT BETWEEN

To select values outside a specified range:

```sql
SELECT *
FROM Products
WHERE Price NOT BETWEEN 10 AND 20;
```

### BETWEEN with IN

Combine `BETWEEN` with `IN` to filter based on multiple conditions:

```sql
SELECT *
FROM Products
WHERE Price BETWEEN 10 AND 20
AND CategoryID IN (1,2,3);
```

### Example: Text Values

```sql
SELECT *
FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;
```

### NOT BETWEEN Text Values

To select text values outside a specified range:

```sql
SELECT *
FROM Products
WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;
```

### BETWEEN Dates

```sql
SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';
```

### Conclusion

The `BETWEEN` operator is a powerful tool for filtering data within a range. By understanding its usage and syntax, you can efficiently retrieve relevant information from your database tables.
