```markdown
# SQL ALTER TABLE Statement

The `ALTER TABLE` statement is used to add,
 delete, or modify columns in an existing table.
 It is also used to add and drop various constraints
 on an existing table.

## ALTER TABLE - ADD Column

To add a column in a table, use the following syntax:

sql
ALTER TABLE table_name
ADD column_name datatype;
```

### Example

```sql
-- Adding a column called bloodGroup
ALTER TABLE customers
ADD bloodGroup varchar(255);
```

## ALTER TABLE - DROP Column

To drop a column from a table, use the following syntax:

```sql
ALTER TABLE table_name
DROP COLUMN column_name;
```

### Example

```sql
-- Dropping the bloodGroup column
ALTER TABLE customers
DROP COLUMN bloodGroup;
```

## ALTER TABLE - RENAME Column

To rename a column in a table, use the following syntax:

```sql
ALTER TABLE table_name
RENAME COLUMN old_column_name TO new_column_name;
```

### Example

```sql
-- Renaming the PostalCode column to pincode
ALTER TABLE customers
RENAME COLUMN PostalCode TO pincode;
```

## ALTER TABLE - MODIFY Column

To modify the datatype of a column in a table, use the following syntax:

```sql
ALTER TABLE table_name
MODIFY COLUMN column_name new_datatype;
```

### Example

```sql
-- Modifying the City column datatype to varchar(255)
ALTER TABLE customers
MODIFY COLUMN City varchar(255);
```

## Table: customers

| CustomerID | CustomerName              | ContactName        | Address                       | City        | pincode  | Country |
|------------|---------------------------|--------------------|-------------------------------|-------------|----------|---------|
| 1          | Alfreds Futterkiste       | Maria Anders       | Obere Str. 57                 | Berlin      | 12209    | Germany |
| 2          | NULL                      | Ana Trujillo       | Avda. de la Constitución 2222 | México D.F. | 05021    | Mexico  |
| 3          | Antonio Moreno Taquería   | Antonio Moreno     | Mataderos 2312                | México D.F. | 05023    | Mexico  |
| 4          | Around the Horn           | Thomas Hardy       | 120 Hanover Sq.               | London      | WA1 1DP  | UK      |
| 5          | Berglunds snabbköp        | Christina Berglund | Berguvsvägen 8                | Luleå       | S-958 22 | Sweden  |
| 6          | Blauer See Delikatessen   | Hanna Moos         | Forsterstr. 57                | Mannheim    | 68306    | Germany |
| 7          | Blondel père et fils      | Frédérique Citeaux | 24, place Kléber              | Strasbourg  | 67000    | France  |
| 8          | Bólido Comidas preparadas | Martín Sommer      | C/ Araquil, 67                | Madrid      | 28023    | Spain   |
| 9          | Bon app'                  | Laurence Lebihans  | 12, rue des Bouchers          | Marseille   | 13008    | France  |
| 10         | Bottom-Dollar Marketse    | Elizabeth Lincoln  | 23 Tsawassen Blvd.            | Tsawassen   | T2F 8M4  | Canada  |

