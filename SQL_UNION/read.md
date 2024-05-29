# SQL CASE Expression

The `CASE` expression in SQL goes through conditions and returns a value when the first condition is met (similar to an `if-then-else` statement). Once a condition is true, it stops reading and returns the result. If no conditions are true, it returns the value specified in the `ELSE` clause.

If there is no `ELSE` part and no conditions are true, the `CASE` expression returns `NULL`.

## Syntax

```sql
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;
