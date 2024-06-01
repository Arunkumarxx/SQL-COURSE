**SQL Constraints Syntax:**

In SQL, constraints are rules applied to columns in a table. They enforce data integrity by defining limits or conditions that data entered into a column must meet. Here are some common constraints in SQL:

1. **NOT NULL Constraint**: Ensures that a column cannot contain NULL values.
   ```sql
   CREATE TABLE employees (
       employee_id INT NOT NULL,
       employee_name VARCHAR(50) NOT NULL
   );
   ```

2. **UNIQUE Constraint**: Ensures that all values in a column are unique.
   ```sql
   CREATE TABLE customers (
       customer_id INT UNIQUE,
       customer_email VARCHAR(100) UNIQUE
   );
   ```

3. **PRIMARY KEY Constraint**: Combines the NOT NULL and UNIQUE constraints. It uniquely identifies each record in a table.
   ```sql
   CREATE TABLE products (
       product_id INT PRIMARY KEY,
       product_name VARCHAR(100),
       price DECIMAL(10, 2)
   );
   ```

4. **FOREIGN KEY Constraint**: Enforces referential integrity by ensuring that values in one table's column match values in another table's column.
   ```sql
   CREATE TABLE orders (
       order_id INT PRIMARY KEY,
       customer_id INT,
       FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
   );
   ```

5. **CHECK Constraint**: Defines a condition that each row must satisfy.
   ```sql
   CREATE TABLE students (
       student_id INT PRIMARY KEY,
       student_name VARCHAR(100),
       age INT,
       CHECK (age >= 18)
   );
   ```



```markdown
# SQL Constraints Syntax

In SQL, constraints are rules applied to columns in a table
to enforce data integrity. They ensure that data entered into
a column meets certain conditions. Below are examples of common constraints in SQL:

## NOT NULL Constraint
The NOT NULL constraint ensures that a column cannot contain NULL values. For example:
```sql
CREATE TABLE employees (
    employee_id INT NOT NULL,
    employee_name VARCHAR(50) NOT NULL
);
```

## UNIQUE Constraint
The UNIQUE constraint ensures that all values in a column are unique. For example:
```sql
CREATE TABLE customers (
    customer_id INT UNIQUE,
    customer_email VARCHAR(100) UNIQUE
);
```

## PRIMARY KEY Constraint
The PRIMARY KEY constraint uniquely identifies each record in a table. It combines the NOT NULL and UNIQUE constraints. For example:
```sql
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2)
);
```

## FOREIGN KEY Constraint
The FOREIGN KEY constraint enforces referential integrity by ensuring that values in one table's column match values in another table's column. For example:
```sql
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
```

## CHECK Constraint
The CHECK constraint defines a condition that each row must satisfy. For example:
```sql
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    age INT,
    CHECK (age >= 18)
);
```

By using constraints effectively, you can maintain data integrity and ensure that your database remains accurate and reliable.
```
