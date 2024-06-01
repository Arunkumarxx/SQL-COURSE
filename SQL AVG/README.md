```markdown
# SQL AVG() Function

## The SQL AVG() Function

The AVG() function returns the average
value of a numeric column. It calculates
the average by dividing the sum of all
values by the total count of values.

### Example: Calculating Average Price

sql
USE personal_database;

-- Calculate the average price of products
SELECT AVG(Price) FROM products;
```

#### Result:

| avg(Price) |
|------------|
| 21.241714  |

### Example: Filtering Records with Price Above Average

```sql
-- Select products with a price higher than the average price
SELECT Price FROM products
WHERE Price > (SELECT AVG(Price) FROM products);
```

#### Result:

| Price |
|-------|
| 22.00 |
| 21.35 |
| 25.00 |
| 30.00 |
| 40.00 |
| 31.00 |
| ...   |
