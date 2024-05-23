# SQL INSERT INTO Statement

# The INSERT INTO statement is used to insert new records in a table.
#
# INSERT INTO Syntax
# It is possible to write the INSERT INTO statement in two ways:

#syntax
# INSERT INTO table_name (column1, column2, column3, ...)
# VALUES (value1, value2, value3, ...);

#or
#syntax
# INSERT INTO table_name
# VALUES (value1, value2, value3, ...);

use personal_database;

#first check table how it looks likes
#then move to insertion
select  * from personal_database.shippers;
/*
+-----------+------------------+----------------+
| ShipperID | ShipperName      | Phone          |
+-----------+------------------+----------------+
|         1 | Speedy Express   | (503) 555-9831 |
|         2 | United Package   | (503) 555-3199 |
|         3 | Federal Shipping | (503) 555-9931 |
+-----------+------------------+----------------+
 */
 #now insert indian shippers to shipping details
insert into personal_database.shippers
values(4,'EcomExpress','(91)8438105333');
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
