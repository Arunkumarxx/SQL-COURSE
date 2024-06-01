### Syntax:

```sql
CREATE PROCEDURE procedure_name
    [parameter1 data_type, parameter2 data_type, ...]
AS
BEGIN
    -- SQL statements
END;
```

- `procedure_name`: The name of the stored procedure.
- `parameter1, parameter2, ...`: (Optional) Parameters that can be passed to the stored procedure. Each parameter has a name and a data type.
- `AS`: Keyword that starts the body of the stored procedure.
- `BEGIN` and `END`: Delimiters that enclose the body of the stored procedure.
- `SQL statements`: The SQL statements that make up the logic of the stored procedure.

### Example:

Suppose you want to create a stored procedure named `GetEmployeeByDepartment` that retrieves employees from the `employees` table based on a specified department ID. The procedure takes a `department_id` as input parameter:

```sql
CREATE PROCEDURE GetEmployeeByDepartment
    @department_id INT
AS
BEGIN
    SELECT employee_id, first_name, last_name
    FROM employees
    WHERE department_id = @department_id;
END;
```

This stored procedure retrieves the `employee_id`, `first_name`, and `last_name` columns from the `employees` table where the `department_id` matches the input parameter `@department_id`.

### Note:

- Stored procedures can contain multiple SQL statements and can include control-of-flow logic (e.g., `IF` statements, loops).
- Stored procedures improve code reusability, security, and performance by reducing network traffic and promoting code encapsulation.
- Parameters allow stored procedures to be more flexible and adaptable to different scenarios.
- Different database management systems (DBMS) may have variations in syntax or features related to stored procedures.
