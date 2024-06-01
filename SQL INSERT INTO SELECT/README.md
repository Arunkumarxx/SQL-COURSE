**SQL INSERT INTO Syntax:**

The `INSERT INTO` statement in SQL is used to insert new records into a table.

### ``Syntax``:

```sql
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
```

- ``table_name``: The name of the table into which you want to insert the new records.
- ``column1, column2, column3, ...``: The columns into which you want to insert values. (Optional if you are inserting values into all columns)
- ``VALUES``: The keyword used to specify the values to be inserted.
- ``value1, value2, value3, ...``: The values to be inserted into the corresponding columns.

### ``Example``:

```sql
INSERT INTO customers (customer_id, customer_name, city, country)
VALUES (101, 'John Doe', 'New York', 'USA');
```

This statement inserts a new record into the `customers` table with the specified `customer_id`, `customer_name`, `city`, and `country`.

### ``Note``:

- You can omit the column list in the `INSERT INTO` statement if you are inserting values for all columns in the same order as they appear in the table.
- The number of values supplied in the `VALUES` clause must match the number of columns specified or the number of columns in the table if none are specified.
- If you omit the column list, ensure that the values are provided in the same order as the columns in the table, and all columns must have a value supplied unless they allow NULL values or have a default value specified.
