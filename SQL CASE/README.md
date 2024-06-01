## SQL CASE Expression

### Introduction

The SQL `CASE` expression acts like an if-then-else statement, evaluating conditions and returning a value based on the first condition that is met. If no conditions are true, it returns the value specified in the `ELSE` clause. If there's no `ELSE` part and no conditions are true, it returns `NULL`.

### Syntax

```sql
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    ...
    ELSE result
END;
```

### Example: Conditional Text Output

```sql
SELECT OrderID, Quantity,
    CASE
        WHEN Quantity > 30 THEN 'The quantity is greater than 30'
        WHEN Quantity = 30 THEN 'The quantity is 30'
        ELSE 'The quantity is under 30'
    END AS QuantityText
FROM OrderDetails;
```

### Example: Ordering by City or Country

```sql
SELECT CustomerName, City, Country
FROM Customers
ORDER BY
    (CASE
        WHEN City IS NULL THEN Country
        ELSE City
    END);
```

### Conclusion

The SQL `CASE` expression is a versatile tool for conditional logic within SQL queries. By understanding its syntax and usage, you can perform complex conditional operations and customize query results based on various conditions.
