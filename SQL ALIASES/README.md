```markdown
# SQL Aliases

SQL aliases are used to give a table, or a column in a table, a temporary name.
Aliases are often used to make column names more readable. An alias only exists for
 the duration of that query and is created with the AS keyword.

## Syntax

When an alias is used on a column:

sql
SELECT column_name AS alias_name
FROM table_name;
```

When an alias is used on a table:

```sql
SELECT column_name(s)
FROM table_name AS alias_name;
```

## Examples

---

### Alias for a Column

```sql
-- Alias for CustomerID column
SELECT CustomerID AS tempCol 
FROM customers;
```

---

### Alias for a Table

```sql
-- Alias for the Customers table
SELECT * 
FROM customers AS TempTable;
```

---

### Aliases for Multiple Columns

```sql
-- Aliases for multiple columns in the Customers table
SELECT CustomerID AS col1, CustomerName AS col2 
FROM customers AS tables;
```

---

### Using Double Quotes for Aliases with Spaces

```sql
-- Using aliases with spaces enclosed in double quotes
SELECT CustomerID AS "id number", CustomerName AS "Name list" 
FROM customers AS xyz_company;
```

---

### Concatenating Columns and Using Alias

```sql
-- Concatenating columns and using alias for the address
SELECT customers.ContactName, CONCAT(customers.Address, ',', customers.PostalCode, ',', customers.Country) AS address 
FROM customers;
```

---

### Using Aliases for Multiple Tables

```sql
-- Using aliases for multiple tables and ordering by first name
SELECT CONCAT(fn.FirstName, ',', fn.LastName) AS FullName, PersonDetails.CategoryName AS TypeOfFoodLike 
FROM categories AS PersonDetails, employees AS fn 
ORDER BY fn.FirstName;
```
