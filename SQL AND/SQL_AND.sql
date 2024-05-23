# SQL AND Operator

# The SQL AND Operator
# The WHERE clause can contain one or many AND operators.

# The AND operator is used to filter records based on more than one condition, like if
# you want to return all customers from Spain that starts with the letter 'G':

# Syntax

# SELECT column1, column2, ...
# FROM table_name
# WHERE condition1 AND condition2 AND condition3 ...;
use personal_database;

SELECT *
FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%';

/*
 +------------+------------------------+-------------------+------------------------+-----------+------------+---------+
| CustomerID | CustomerName           | ContactName       | Address                | City      | PostalCode | Country |
+------------+------------------------+-------------------+------------------------+-----------+------------+---------+
|         29 | Galería del gastrónomo | Eduardo Saavedra  | Rambla de Cataluña, 23 | Barcelona | 08022      | Spain   |
|         30 | Godos Cocina Típica    | José Pedro Freyre | C/ Romero, 33          | Sevilla   | 41101      | Spain   |
+------------+------------------------+-------------------+------------------------+-----------+------------+---------+

 */

SELECT * FROM Customers
WHERE Country = 'Germany'
AND City = 'Berlin'
AND PostalCode > '12000';

/*
 +------------+---------------------+--------------+---------------+--------+------------+---------+
| CustomerID | CustomerName        | ContactName  | Address       | City   | PostalCode | Country |
+------------+---------------------+--------------+---------------+--------+------------+---------+
|          1 | Alfreds Futterkiste | Maria Anders | Obere Str. 57 | Berlin | 12209      | Germany |
+------------+---------------------+--------------+---------------+--------+------------+---------+
 */
#  Combining AND and OR
# You can combine the AND and OR operators.
#
# The following SQL statement selects all customers from Spain that starts with a "G" or an "R".
#
# Make sure you use parenthesis to get the correct result.

SELECT * FROM Customers
WHERE Country = 'Spain'
AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');

/*
 +------------+------------------------+-------------------+------------------------+-----------+------------+---------+
| CustomerID | CustomerName           | ContactName       | Address                | City      | PostalCode | Country |
+------------+------------------------+-------------------+------------------------+-----------+------------+---------+
|         29 | Galería del gastrónomo | Eduardo Saavedra  | Rambla de Cataluña, 23 | Barcelona | 08022      | Spain   |
|         30 | Godos Cocina Típica    | José Pedro Freyre | C/ Romero, 33          | Sevilla   | 41101      | Spain   |
|         69 | Romero y tomillo       | Alejandra Camino  | Gran Vía, 1            | Madrid    | 28001      | Spain   |
+------------+------------------------+-------------------+------------------------+-----------+------------+---------+
 */

#  Without parenthesis, the select statement will return all customers
#   from Spain that starts with a "G", plus all customers that starts
#   with an "R", regardless of the country value

/*
 +------------+----------------------------+-------------------+------------------------+----------------+------------+-------------+
| CustomerID | CustomerName               | ContactName       | Address                | City           | PostalCode | Country     |
+------------+----------------------------+-------------------+------------------------+----------------+------------+-------------+
|         29 | Galería del gastrónomo     | Eduardo Saavedra  | Rambla de Cataluña, 23 | Barcelona      | 08022      | Spain       |
|         30 | Godos Cocina Típica        | José Pedro Freyre | C/ Romero, 33          | Sevilla        | 41101      | Spain       |
|         64 | Rancho grande              | Sergio Gutiérrez  | Av. del Libertador 900 | Buenos Aires   | 1010       | Argentina   |
|         65 | Rattlesnake Canyon Grocery | Paula Wilson      | 2817 Milton Dr.        | Albuquerque    | 87110      | USA         |
|         66 | Reggiani Caseifici         | Maurizio Moroni   | Strada Provinciale 124 | Reggio Emilia  | 42100      | Italy       |
|         67 | Ricardo Adocicados         | Janete Limeira    | Av. Copacabana, 267    | Rio de Janeiro | 02389-890  | Brazil      |
|         68 | Richter Supermarkt         | Michael Holz      | Grenzacherweg 237      | Genève         | 1203       | Switzerland |
|         69 | Romero y tomillo           | Alejandra Camino  | Gran Vía, 1            | Madrid         | 28001      | Spain       |
+------------+----------------------------+-------------------+------------------------+----------------+------------+-------------+
 */
