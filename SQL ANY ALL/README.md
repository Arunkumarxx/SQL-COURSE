
# SQL ANY and ALL Operators

## The SQL ANY Operator

The SQL ANY operator allows you to perform a comparison between a single column value and a range of other values. It returns a boolean value as a result and returns TRUE if ANY of the subquery values meet the condition. 

# ANY Syntax

SELECT column_name(s)
FROM table_name
WHERE column_name operator ANY
  (SELECT column_name
  FROM table_name
  WHERE condition);

Demo Database:

```sql
ProductID | ProductName                        | SupplierID | CategoryID | Unit             | Price
1         | Chais                              | 1          | 1          | 10 boxes x 20 bags | 18
2         | Chang                              | 1          | 1          | 24 - 12 oz bottles| 19
3         | Aniseed Syrup                      | 1          | 2          | 12 - 550 ml bottles | 10
4         | Chef Anton's Cajun Seasoning       | 2          | 2          | 48 - 6 oz jars   | 22
5         | Chef Anton's Gumbo Mix             | 2          | 2          | 36 boxes         | 21.35
6         | Grandma's Boysenberry Spread       | 3          | 2          | 12 - 8 oz jars   | 25
7         | Uncle Bob's Organic Dried Pears    | 3          | 7          | 12 - 1 lb pkgs.  | 30
8         | Northwoods Cranberry Sauce         | 3          | 2          | 12 - 12 oz jars  | 40
9         | Mishi Kobe Niku                    | 4          | 6          | 18 - 500 g pkgs. | 97
```

The SQL ANY Examples:

```sql
-- Returns the ProductName if ANY records in the OrderDetails table have Quantity equal to 10:
SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);
```

```sql
-- Returns the ProductName if ANY records in the OrderDetails table have Quantity larger than 99:
SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity > 99);
```

```sql
-- Returns the ProductName if ANY records in the OrderDetails table have Quantity larger than 1000:
SELECT ProductName
FROM Products
WHERE ProductID = ANY
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity > 1000);
```

## The SQL ALL Operator

The SQL ALL operator returns a boolean value as a result and returns TRUE if ALL of the subquery values meet the condition. It is used with SELECT, WHERE, and HAVING statements.

### ALL Syntax With SELECT

```sql
SELECT ALL column_name(s)
FROM table_name
WHERE condition;
```

### ALL Syntax With WHERE or HAVING

```sql
SELECT column_name(s)
FROM table_name
WHERE column_name operator ALL
  (SELECT column_name
  FROM table_name
  WHERE condition);
```

The SQL ALL Examples:

```sql
-- Lists ALL the product names:
SELECT ALL ProductName
FROM Products
WHERE TRUE;
```

```sql
-- Lists the ProductName if ALL the records in the OrderDetails table have Quantity equal to 10:
SELECT ProductName
FROM Products
WHERE ProductID = ALL
  (SELECT ProductID
  FROM OrderDetails
  WHERE Quantity = 10);
