In SQL, wildcard characters are used in conjunction with the `LIKE` operator to perform pattern matching in string comparisons. There are two commonly used wildcard characters:

- `%`: Matches zero or more characters.
- `_`: Matches exactly one character.

Here's how you can use wildcard characters in SQL:

### Syntax:

```sql
SELECT column1, column2, ...
FROM table_name
WHERE column_name LIKE pattern;
```

- `column1, column2, ...`: The columns you want to retrieve from the table.
- `table_name`: The name of the table from which you want to retrieve data.
- `column_name`: The column you want to search.
- `pattern`: The pattern to match using wildcard characters.

### Example:

Suppose you have a table named `employees` with columns `employee_id` and `first_name`, and you want to retrieve employees whose first name starts with "J":

```sql
SELECT employee_id, first_name
FROM employees
WHERE first_name LIKE 'J%';
```

This query will return all rows from the `employees` table where the `first_name` starts with "J".

### Additional Examples:

- To find all employees with a last name ending in "son":

  ```sql
  SELECT employee_id, last_name
  FROM employees
  WHERE last_name LIKE '%son';
  ```

- To find all employees with a first name containing "an":

  ```sql
  SELECT employee_id, first_name
  FROM employees
  WHERE first_name LIKE '%an%';
  ```

### Note:

- Wildcards can be used at the beginning, end, or middle of a pattern.
- If you need to search for literal occurrences of `%` or `_`, you can use the escape character `\`. For example, `LIKE '%\%' ESCAPE '\'` will match rows where the column contains `%`.
