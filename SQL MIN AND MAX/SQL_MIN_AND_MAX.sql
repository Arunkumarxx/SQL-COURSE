-- SQL MIN() and MAX() Functions

-- The MIN() function returns the smallest value of the selected column.

-- The MAX() function returns the largest value of the selected column.
use personal_database;

SELECT min(Price) from personal_database.products;
/*
 +------------+
| min(Price) |
+------------+
|       2.50 |
+------------+
 */
 select min(customers.PostalCode) from customers;
/*
 +---------------------------+
| min(customers.PostalCode) |
+---------------------------+
| 01-012                    |
+---------------------------+
 */
 select min(customers.ContactName)from personal_database.customers;
/*
+----------------------------+
| min(customers.ContactName) |
+----------------------------+
| Alejandra Camino           |
+----------------------------+
 */
 select max(customers.CustomerID) from  customers;
/*
+---------------------------+
| max(customers.CustomerID) |
+---------------------------+
|                        91 |
+---------------------------+
 */
