**Creating a Table in SQL Syntax:**

In SQL, you can create a new table within a database using the `CREATE TABLE` statement. Here's the syntax:

```sql
CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    ...
);
```

- **table_name**: The name you want to give to your new table.
- **column1, column2, ...**: The names of the columns you want to create in the table.
- **datatype**: The data type for each column.
- **constraints**: Optional constraints to enforce rules on the data stored in the columns (e.g., `NOT NULL`, `UNIQUE`, `PRIMARY KEY`, `FOREIGN KEY`, `CHECK`).

**Example:**

```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT,
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES departments(id)
);
```

This statement creates a table named `employees` with columns `employee_id`, `first_name`, `last_name`, and `department_id`, where `employee_id` is the primary key, and `department_id` is a foreign key referencing the `id` column in the `departments` table.

**README.md:**

```markdown
# Creating a Table in SQL Syntax

In SQL, you can create a new table within a database using the `CREATE TABLE` statement. Here's the syntax:

```sql
CREATE TABLE table_name (
    column1 datatype constraints,
    column2 datatype constraints,
    ...
);
```

- **table_name**: The name you want to give to your new table.
- **column1, column2, ...**: The names of the columns you want to create in the table.
- **datatype**: The data type for each column.
- **constraints**: Optional constraints to enforce rules on the data stored in the columns (e.g., `NOT NULL`, `UNIQUE`, `PRIMARY KEY`, `FOREIGN KEY`, `CHECK`).

**Example:**

```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department_id INT,
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES departments(id)
);
```

This statement creates a table named `employees` with columns
`employee_id`, `first_name`, `last_name`, and 
`department_id`, where `employee_id` is the primary key, and 
`department_id` is a foreign key referencing the `id` column
in the `departments` table.
