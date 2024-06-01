
# SQL AUTO INCREMENT Field

## AUTO INCREMENT Field

Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table. This feature is often used for the primary key field to be created automatically every time a new record is inserted.

### Example: Creating a Table with AUTO_INCREMENT

```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    ...
);
```

```sql
CREATE TABLE temp (
    id INT AUTO_INCREMENT PRIMARY KEY,
    UserName VARCHAR(255)
);
```

### Inserting Records

```sql
-- Inserting a record with specified values
INSERT INTO temp VALUES (1, 'Arun');

-- Inserting records with only UserName specified
INSERT INTO temp (UserName) VALUES ('siva'), ('prakash');
```

### Resulting Table

| id | UserName |
|----|----------|
| 1  | Arun     |
| 2  | siva     |
| 3  | prakash  |
