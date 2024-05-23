-- SQL UPDATE Statement

-- The SQL UPDATE Statement
-- The UPDATE statement is used to modify the existing records in a table.
--
-- UPDATE Syntax
-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

--  when updating records
--  in a table! Notice the WHERE clause in the UPDATE statement.
--  The WHERE clause specifies which record(s) that should be
--  updated. If you omit the WHERE clause, all records in the
--  table will be updated!

use personal_database;

select *
from shippers ;
/*
+-----------+------------------+----------------+
| ShipperID | ShipperName      | Phone          |
+-----------+------------------+----------------+
|         1 | Speedy Express   | (503) 555-9831 |
|         2 | United Package   | (503) 555-3199 |
|         3 | Federal Shipping | (503) 555-9931 |
|         4 | EcomExpress      | (91)8438105333 |
+-----------+------------------+----------------+
 */
update  shippers
set Phone='123456789'
where ShipperID not between 2 and 4;
/*
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0

 */

select *
from shippers ;
/*
 +-----------+------------------+----------------+
| ShipperID | ShipperName      | Phone          |
+-----------+------------------+----------------+
|         1 | Speedy Express   | 123456789      |
|         2 | United Package   | (503) 555-3199 |
|         3 | Federal Shipping | (503) 555-9931 |
|         4 | EcomExpress      | (91)8438105333 |
+-----------+------------------+----------------+
 */
 #now update with multiple record

update shippers
set ShipperName='us Express',phone ='8438105333'
where ShipperName like 'S%';

select *
from shippers;

/*
 +-----------+------------------+----------------+
| ShipperID | ShipperName      | Phone          |
+-----------+------------------+----------------+
|         1 | us Express       | (503) 555-9831 |
|         2 | United Package   | (503) 555-3199 |
|         3 | Federal Shipping | (503) 555-9931 |
+-----------+------------------+----------------+
 */