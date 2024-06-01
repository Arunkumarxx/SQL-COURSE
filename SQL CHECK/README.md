
# SQL CHECK Constraint

The CHECK constraint is used to limit the value range that can be placed in a column. It ensures that the values in a column meet specified conditions.

## SQL CHECK on CREATE TABLE

The following SQL creates a CHECK constraint on the "Age" column when the "Persons" table is created. The CHECK constraint ensures that the age of a person must be 18 or older:

```sql
-- MySQL
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age >= 18)
);

-- SQL Server / Oracle / MS Access
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK (Age >= 18)
);
```

To allow naming of a CHECK constraint and for defining a CHECK constraint on multiple columns, use the following SQL syntax:

```sql
-- MySQL / SQL Server / Oracle / MS Access
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255),
    CONSTRAINT CHK_Person CHECK (Age >= 18 AND City = 'Sandnes')
);
```

## SQL CHECK on ALTER TABLE

To create a CHECK constraint on the "Age" column when the table is already created, use the following SQL:

```sql
-- MySQL / SQL Server / Oracle / MS Access
ALTER TABLE Persons
ADD CHECK (Age >= 18);
```

To allow naming of a CHECK constraint and for defining a CHECK constraint on multiple columns, use the following SQL syntax:

```sql
-- MySQL / SQL Server / Oracle / MS Access
ALTER TABLE Persons
ADD CONSTRAINT CHK_PersonAge CHECK (Age >= 18 AND City = 'Sandnes');
```

## DROP a CHECK Constraint

To drop a CHECK constraint, use the following SQL:

```sql
-- SQL Server / Oracle / MS Access
ALTER TABLE Persons
DROP CONSTRAINT CHK_PersonAge;
```

```sql
-- MySQL
ALTER TABLE Persons
DROP CHECK CHK_PersonAge;
