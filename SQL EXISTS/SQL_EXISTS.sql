# The SQL EXISTS Operator
# The EXISTS operator is used to test for the existence of any record in a subquery.
# The EXISTS operator returns TRUE if the subquery returns one or more records.

# EXISTS Syntax
# SELECT column_name(s)
# FROM table_name
# WHERE EXISTS
# (SELECT column_name FROM table_name WHERE condition);

use personal_database;

select shippers.ShipperName from shippers
where exists (select customers.CustomerID from customers where CustomerID between 23 and 23);
/*
 +------------------+
| ShipperName      |
+------------------+
| us Express       |
| United Package   |
| Federal Shipping |
+------------------+
 */

