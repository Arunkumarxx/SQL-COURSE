﻿# SQL OR Operator

# Syntax
# SELECT column1, column2, ...
# FROM table_name
# WHERE condition1 OR condition2 OR condition3 ...;

#  The SQL OR Operator
# The WHERE clause can contain one or more OR operators.
# The OR operator is used to filter records based on more than one
# condition, like if you want to return
#  all customers from Germany but also those from Spain:
use personal_database;

SELECT *
FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';

/*
 +------------+--------------------------------------+---------------------+------------------------+----------------+------------+---------+
| CustomerID | CustomerName                         | ContactName         | Address                | City           | PostalCode | Country |
+------------+--------------------------------------+---------------------+------------------------+----------------+------------+---------+
|          1 | Alfreds Futterkiste                  | Maria Anders        | Obere Str. 57          | Berlin         | 12209      | Germany |
|          6 | Blauer See Delikatessen              | Hanna Moos          | Forsterstr. 57         | Mannheim       | 68306      | Germany |
|          8 | Bólido Comidas preparadas            | Martín Sommer       | C/ Araquil, 67         | Madrid         | 28023      | Spain   |
|         17 | Drachenblut Delikatessend            | Sven Ottlieb        | Walserweg 21           | Aachen         | 52066      | Germany |
|         22 | FISSA Fabrica Inter. Salchichas S.A. | Diego Roel          | C/ Moralzarzal, 86     | Madrid         | 28034      | Spain   |
|         25 | Frankenversand                       | Peter Franken       | Berliner Platz 43      | München        | 80805      | Germany |
|         29 | Galería del gastrónomo               | Eduardo Saavedra    | Rambla de Cataluña, 23 | Barcelona      | 08022      | Spain   |
|         30 | Godos Cocina Típica                  | José Pedro Freyre   | C/ Romero, 33          | Sevilla        | 41101      | Spain   |
|         39 | Königlich Essen                      | Philip Cramer       | Maubelstr. 90          | Brandenburg    | 14776      | Germany |
|         44 | Lehmanns Marktstand                  | Renate Messner      | Magazinweg 7           | Frankfurt a.M. | 60528      | Germany |
|         52 | Morgenstern Gesundkost               | Alexander Feuer     | Heerstr. 22            | Leipzig        | 04179      | Germany |
|         56 | Ottilies Käseladen                   | Henriette Pfalzheim | Mehrheimerstr. 369     | Köln           | 50739      | Germany |
|         63 | QUICK-Stop                           | Horst Kloss         | Taucherstraße 10       | Cunewalde      | 01307      | Germany |
|         69 | Romero y tomillo                     | Alejandra Camino    | Gran Vía, 1            | Madrid         | 28001      | Spain   |
|         79 | Toms Spezialitäten                   | Karin Josephs       | Luisenstr. 48          | Münster        | 44087      | Germany |
|         86 | Die Wandernde Kuh                    | Rita Müller         | Adenauerallee 900      | Stuttgart      | 70563      | Germany |
+------------+--------------------------------------+---------------------+------------------------+----------------+------------+---------+
 */
SELECT * FROM Customers
WHERE City = 'Berlin'
OR CustomerName LIKE 'G%'
OR Country = 'Norway';

/*
 +------------+-------------------------+-------------------+---------------------------+-----------+------------+-----------+
| CustomerID | CustomerName            | ContactName       | Address                   | City      | PostalCode | Country   |
+------------+-------------------------+-------------------+---------------------------+-----------+------------+-----------+
|          1 | Alfreds Futterkiste     | Maria Anders      | Obere Str. 57             | Berlin    | 12209      | Germany   |
|         29 | Galería del gastrónomo  | Eduardo Saavedra  | Rambla de Cataluña, 23    | Barcelona | 08022      | Spain     |
|         30 | Godos Cocina Típica     | José Pedro Freyre | C/ Romero, 33             | Sevilla   | 41101      | Spain     |
|         31 | Gourmet Lanchonetes     | André Fonseca     | Av. Brasil, 442           | Campinas  | 04876-786  | Brazil    |
|         32 | Great Lakes Food Market | Howard Snyder     | 2732 Baker Blvd.          | Eugene    | 97403      | USA       |
|         33 | GROSELLA-Restaurante    | Manuel Pereira    | 5ª Ave. Los Palos Grandes | Caracas   | 1081       | Venezuela |
|         70 | Santé Gourmet           | Jonas Bergulfsen  | Erling Skakkes gate 78    | Stavern   | 4110       | Norway    |
+------------+-------------------------+-------------------+---------------------------+-----------+------------+-----------+
 */
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
 SELECT * FROM Customers
WHERE Country = 'Spain'
AND CustomerName LIKE 'G%' OR CustomerName LIKE 'R%';

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
