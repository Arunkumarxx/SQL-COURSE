# The SQL SELECT TOP Clause
# The SELECT limit clause is used to specify the number of records to return.
#
# The SELECT limit clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.
#
# ExampleGet your own SQ

use personal_database;

select  * from customers limit 3;

/*
 +------------+------------------------------------+----------------+-------------------------------+-------------+------------+---------+
| CustomerID | CustomerName                       | ContactName    | Address                       | City        | PostalCode | Country |
+------------+------------------------------------+----------------+-------------------------------+-------------+------------+---------+
|          1 | Alfreds Futterkiste                | Maria Anders   | Obere Str. 57                 | Berlin      | 12209      | Germany |
|          2 | Ana Trujillo Emparedados y helados | Ana Trujillo   | Avda. de la Constitución 2222 | México D.F. | 05021      | Mexico  |
|          3 | Antonio Moreno Taquería            | Antonio Moreno | Mataderos 2312                | México D.F. | 05023      | Mexico  |
+------------+------------------------------------+----------------+-------------------------------+-------------+------------+---------+
 */

SELECT * FROM customers
ORDER BY CustomerName DESC LIMIT 3;
/*
+------------+----------------------+-----------------+-----------------------------+----------+------------+---------+
| CustomerID | CustomerName         | ContactName     | Address                     | City     | PostalCode | Country |
+------------+----------------------+-----------------+-----------------------------+----------+------------+---------+
|         91 | Wolski               | Zbyszek         | ul. Filtrowa 68             | Walla    | 01-012     | NULL    |
|         90 | Wilman Kala          | Matti Karttunen | Keskuskatu 45               | Helsinki | 21240      | Finland |
|         89 | White Clover Markets | Karl Jablonski  | 305 - 14th Ave. S. Suite 3B | Seattle  | 98128      | USA     |
+------------+----------------------+-----------------+-----------------------------+----------+------------+---------+
 */
