# SQL Wildcard Characters
# A wildcard character is used to substitute one or more characters in a string.
#
# Wildcard characters are used with the LIKE operator. The LIKE operator
# is used in a WHERE clause to search for a specified pattern in a column.

#  Wildcard Characters
# Symbol	Description
# %	Represents zero or more characters
# _	Represents a single character
# []	Represents any single character within the brackets *
# ^	Represents any character not in the brackets *
# -	Represents any single character within the specified range *
# {}	Represents any escaped character **

use personal_database;

select * from customers
where customers.CustomerName like 'a%';

/*
 +------------+------------------------------------+----------------+-------------------------------+-------------+------------+---------+
| CustomerID | CustomerName                       | ContactName    | Address                       | City        | PostalCode | Country |
+------------+------------------------------------+----------------+-------------------------------+-------------+------------+---------+
|          1 | Alfreds Futterkiste                | Maria Anders   | Obere Str. 57                 | Berlin      | 12209      | Germany |
|          2 | Ana Trujillo Emparedados y helados | Ana Trujillo   | Avda. de la Constitución 2222 | México D.F. | 05021      | Mexico  |
|          3 | Antonio Moreno Taquería            | Antonio Moreno | Mataderos 2312                | México D.F. | 05023      | Mexico  |
|          4 | Around the Horn                    | Thomas Hardy   | 120 Hanover Sq.               | London      | WA1 1DP    | UK      |
+------------+------------------------------------+----------------+-------------------------------+-------------+------------+---------+
 */


#  Using the % Wildcard
# The % wildcard represents any number of characters, even zero characters.
#
# Example
# Return all customers that ends with the pattern 'es':


select * from personal_database.customers
where CustomerName like '%es';
/*
+------------+---------------------+-------------------+--------------------------+-----------------+------------+-----------+
| CustomerID | CustomerName        | ContactName       | Address                  | City            | PostalCode | Country   |
+------------+---------------------+-------------------+--------------------------+-----------------+------------+-----------+
|         11 | B's Beverages       | Victoria Ashworth | Fauntleroy Circus        | London          | EC2 5NT    | UK        |
|         23 | Folies gourmandes   | Martine Rancé     | 184, chaussée de Tournai | Lille           | 59000      | France    |
|         31 | Gourmet Lanchonetes | André Fonseca     | Av. Brasil, 442          | Campinas        | 04876-786  | Brazil    |
|         34 | Hanari Carnes       | Mario Pontes      | Rua do Paço, 67          | Rio de Janeiro  | 05454-876  | Brazil    |
|         47 | LINO-Delicateses    | Felipe Izquierdo  | Ave. 5 de Mayo Porlamar  | I. de Margarita | 4980       | Venezuela |
|         57 | Paris spécialités   | Marie Bertrand    | 265, boulevard Charonne  | Paris           | 75012      | France    |
|         76 | Suprêmes délices    | Pascale Cartrain  | Boulevard Tirou, 255     | Charleroi       | B-6000     | Belgium   |
+------------+---------------------+-------------------+--------------------------+-----------------+------------+-----------+
 */
# Example
# Return all customers that contains the pattern 'mer':

select * from customers
where CustomerName like '%mer%';
/*
 +------------+----------------------------+-------------------+------------------------------------------------+--------------+------------+-----------+
| CustomerID | CustomerName               | ContactName       | Address                                        | City         | PostalCode | Country   |
+------------+----------------------------+-------------------+------------------------------------------------+--------------+------------+-----------+
|         13 | Centro comercial Moctezuma | Francisco Chang   | Sierras de Granada 9993                        | México D.F.  | 05022      | Mexico    |
|         15 | Comércio Mineiro           | Pedro Afonso      | Av. dos Lusíadas, 23                           | São Paulo    | 05432-043  | Brazil    |
|         46 | LILA-Supermercado          | Carlos González   | Carrera 52 con Ave. Bolívar #65-98 Llano Largo | Barquisimeto | 3508       | Venezuela |
|         51 | Mère Paillarde             | Jean Fresnière    | 43 rue St. Laurent                             | Montréal     | H1J 1C3    | Canada    |
|         69 | Romero y tomillo           | Alejandra Camino  | Gran Vía, 1                                    | Madrid       | 28001      | Spain     |
|         81 | Tradição Hipermercados     | Anabela Domingues | Av. Inês de Castro, 414                        | São Paulo    | 05634-030  | Brazil    |
+------------+----------------------------+-------------------+------------------------------------------------+--------------+------------+-----------+

 */
 select  * from customers
 where customers.City like '_ondon';
/*
 +------------+-----------------------+-------------------+------------------------------+--------+------------+---------+
| CustomerID | CustomerName          | ContactName       | Address                      | City   | PostalCode | Country |
+------------+-----------------------+-------------------+------------------------------+--------+------------+---------+
|          4 | Around the Horn       | Thomas Hardy      | 120 Hanover Sq.              | London | WA1 1DP    | UK      |
|         11 | B's Beverages         | Victoria Ashworth | Fauntleroy Circus            | London | EC2 5NT    | UK      |
|         16 | Consolidated Holdings | Elizabeth Brown   | Berkeley Gardens 12 Brewery  | London | WX1 6LT    | UK      |
|         19 | Eastern Connection    | Ann Devon         | 35 King George               | London | WX3 6FW    | UK      |
|         53 | North/South           | Simon Crowther    | South House 300 Queensbridge | London | SW7 1RZ    | UK      |
|         72 | Seven Seas Imports    | Hari Kumar        | 90 Wadhurst Rd.              | London | OX15 4NB   | UK      |
+------------+-----------------------+-------------------+------------------------------+--------+------------+---------+
 */

 select * from customers
 where City like 'L___on';
/*
 +------------+-----------------------+-------------------+------------------------------+--------+------------+---------+
| CustomerID | CustomerName          | ContactName       |
WHERE CustomerName LIKE '[bsp]%'; Address                      | City   | PostalCode | Country |
+------------+-----------------------+-------------------+------------------------------+--------+------------+---------+
|          4 | Around the Horn       | Thomas Hardy      | 120 Hanover Sq.              | London | WA1 1DP    | UK      |
|         11 | B's Beverages         | Victoria Ashworth | Fauntleroy Circus            | London | EC2 5NT    | UK      |
|         16 | Consolidated Holdings | Elizabeth Brown   | Berkeley Gardens 12 Brewery  | London | WX1 6LT    | UK      |
|         19 | Eastern Connection    | Ann Devon         | 35 King George               | London | WX3 6FW    | UK      |
|         53 | North/South           | Simon Crowther    | South House 300 Queensbridge | London | SW7 1RZ    | UK      |
|         72 | Seven Seas Imports    | Hari Kumar        | 90 Wadhurst Rd.              | London | OX15 4NB   | UK      |
+------------+-----------------------+-------------------+------------------------------+--------+------------+---------+
 */
 select * from customers
 where CustomerName like 'a__%';
/*
 +------------+------------------------------------+----------------+-------------------------------+-------------+------------+---------+
| CustomerID | CustomerName                       | ContactName    | Address                       | City        | PostalCode | Country |
+------------+------------------------------------+----------------+-------------------------------+-------------+------------+---------+
|          1 | Alfreds Futterkiste                | Maria Anders   | Obere Str. 57                 | Berlin      | 12209      | Germany |
|          2 | Ana Trujillo Emparedados y helados | Ana Trujillo   | Avda. de la Constitución 2222 | México D.F. | 05021      | Mexico  |
|          3 | Antonio Moreno Taquería            | Antonio Moreno | Mataderos 2312                | México D.F. | 05023      | Mexico  |
|          4 | Around the Horn                    | Thomas Hardy   | 120 Hanover Sq.               | London      | WA1 1DP    | UK      |
+------------+------------------------------------+----------------+-------------------------------+-------------+------------+---------+
 */
 select * from customers
 where CustomerName like '_r%';
/*
+------------+-----------------------------------+-------------------+---------------------------+-----------+------------+-----------+
| CustomerID | CustomerName                      | ContactName       | Address                   | City      | PostalCode | Country   |
+------------+-----------------------------------+-------------------+---------------------------+-----------+------------+-----------+
|          4 | Around the Horn                   | Thomas Hardy      | 120 Hanover Sq.           | London    | WA1 1DP    | UK        |
|         17 | Drachenblut Delikatessend         | Sven Ottlieb      | Walserweg 21              | Aachen    | 52066      | Germany   |
|         20 | Ernst Handel                      | Roland Mendel     | Kirchgasse 6              | Graz      | 8010       | Austria   |
|         25 | Frankenversand                    | Peter Franken     | Berliner Platz 43         | München   | 80805      | Germany   |
|         26 | France restauration               | Carine Schmitt    | 54, rue Royale            | Nantes    | 44000      | France    |
|         27 | Franchi S.p.A.                    | Paolo Accorti     | Via Monte Bianco 34       | Torino    | 10100      | Italy     |
|         32 | Great Lakes Food Market           | Howard Snyder     | 2732 Baker Blvd.          | Eugene    | 97403      | USA       |
|         33 | GROSELLA-Restaurante              | Manuel Pereira    | 5ª Ave. Los Palos Grandes | Caracas   | 1081       | Venezuela |
|         60 | Princesa Isabel Vinhoss           | Isabel de Castro  | Estrada da saúde n. 58    | Lisboa    | 1756       | Portugal  |
|         81 | Tradição Hipermercados            | Anabela Domingues | Av. Inês de Castro, 414   | São Paulo | 05634-030  | Brazil    |
|         82 | Trail's Head Gourmet Provisioners | Helvetius Nagy    | 722 DaVinci Blvd.         | Kirkland  | 98034      | USA       |
+------------+-----------------------------------+-------------------+---------------------------+-----------+------------+-----------+
 */
