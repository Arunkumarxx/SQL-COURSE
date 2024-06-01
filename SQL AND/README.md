```markdown
# SQL AND Operator

The `AND` operator in SQL is used in the `WHERE` clause to filter records based on multiple conditions.

## Syntax

sql
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;
```

## Example 1: Filtering with `AND`

```sql
-- Selecting all customers from Spain whose name starts with 'G'
SELECT *
FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%';
```

| CustomerID | CustomerName           | ContactName       | Address                | City      | PostalCode | Country |
|------------|------------------------|-------------------|------------------------|-----------|------------|---------|
| 29         | Galería del gastrónomo | Eduardo Saavedra  | Rambla de Cataluña, 23 | Barcelona | 08022      | Spain   |
| 30         | Godos Cocina Típica    | José Pedro Freyre | C/ Romero, 33          | Sevilla   | 41101      | Spain   |

## Example 2: Combining `AND` and `OR`

```sql
-- Selecting customers from Spain whose name starts with 'G' or 'R'
SELECT *
FROM Customers
WHERE Country = 'Spain'
AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');
```

| CustomerID | CustomerName           | ContactName       | Address                | City      | PostalCode | Country |
|------------|------------------------|-------------------|------------------------|-----------|------------|---------|
| 29         | Galería del gastrónomo | Eduardo Saavedra  | Rambla de Cataluña, 23 | Barcelona | 08022      | Spain   |
| 30         | Godos Cocina Típica    | José Pedro Freyre | C/ Romero, 33          | Sevilla   | 41101      | Spain   |
| 69         | Romero y tomillo       | Alejandra Camino  | Gran Vía, 1            | Madrid    | 28001      | Spain   |
