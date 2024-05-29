# SQL Comments
# Comments are used to explain sections of SQL statements, or to prevent execution of SQL statements.
#
# Note: Comments are not supported in Microsoft Access databases!
#
# Single Line Comments
# Single line comments start with --.
#
# Any text between -- and the end of the line will be ignored (will not be executed).
#
# The following example uses a single-line comment as an explanation:
-- some.....

/*Select all the columns
of all the records
in the Customers table:*/
SELECT * FROM Customers;

/*SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Categories;*/
SELECT * FROM Suppliers;


SELECT * FROM Customers WHERE (CustomerName LIKE 'L%'
OR CustomerName LIKE 'R%' /*OR CustomerName LIKE 'S%'
OR CustomerName LIKE 'T%'*/ OR CustomerName LIKE 'W%')
AND Country='USA'
ORDER BY CustomerName;

/*
 +------------+----------------------------+----------------+-----------------------------+---------------+------------+---------+
| CustomerID | CustomerName               | ContactName    | Address                     | City          | PostalCode | Country |
+------------+----------------------------+----------------+-----------------------------+---------------+------------+---------+
|         43 | Lazy K Kountry Store       | John Steel     | 12 Orchestra Terrace        | Walla Walla   | 99362      | USA     |
|         45 | Let's Stop N Shop          | Jaime Yorres   | 87 Polk St. Suite 5         | San Francisco | 94117      | USA     |
|         48 | Lonesome Pine Restaurant   | Fran Wilson    | 89 Chiaroscuro Rd.          | Portland      | 97219      | USA     |
|         65 | Rattlesnake Canyon Grocery | Paula Wilson   | 2817 Milton Dr.             | Albuquerque   | 87110      | USA     |
|         89 | White Clover Markets       | Karl Jablonski | 305 - 14th Ave. S. Suite 3B | Seattle       | 98128      | USA     |
+------------+----------------------------+----------------+-----------------------------+---------------+------------+---------+
 */
