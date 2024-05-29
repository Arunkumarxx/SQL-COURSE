# SQL Arithmetic Operators
# Operator	Description	Example
# +	Add
# -	Subtract
# *	Multiply
# /	Divide
# %	Modulo
select 30+12 as  Addtion;
select 30-12 as Subtraction;
select  40*3 as multiply;
select  40/2 as divide;
select  13%9 as modulo;

/*
 mysql> select 30+12 as  Addtion;
+---------+
| Addtion |
+---------+
|      42 |
+---------+
1 row in set (0.00 sec)

mysql> select 30-12 as Subtraction;
+-------------+
| Subtraction |
+-------------+
|          18 |
+-------------+
1 row in set (0.00 sec)

mysql> select  40*3 as multiply;
+----------+
| multiply |
+----------+
|      120 |
+----------+
1 row in set (0.00 sec)

mysql> select  40/2 as divide;
+---------+
| divide  |
+---------+
| 20.0000 |
+---------+
1 row in set (0.00 sec)

mysql> select  12%2 as modulo;
+--------+
| modulo |
+--------+
|      0 |
+--------+
1 row in set (0.00 sec)

mysql>
mysql> select 30+12 as  Addtion;
+---------+
| Addtion |
+---------+
|      42 |
+---------+
1 row in set (0.00 sec)

mysql> select 30-12 as Subtraction;
+-------------+
| Subtraction |
+-------------+
|          18 |
+-------------+
1 row in set (0.00 sec)

mysql> select  40*3 as multiply;
+----------+
| multiply |
+----------+
|      120 |
+----------+
1 row in set (0.00 sec)

mysql> select  40/2 as divide;
+---------+
| divide  |
+---------+
| 20.0000 |
+---------+
1 row in set (0.00 sec)

mysql> select  13%9 as modulo;
+--------+
| modulo |
+--------+
|      4 |
+--------+
1 row in set (0.00 sec)
 */
-- ------------------------------

# SQL Bitwise Operators
# Operator	Description
# &	Bitwise AND
# |	Bitwise OR
# ^	Bitwise exclusive OR

select 1 & 1 ;
select  10 | 10;
select  123^2;

/*
 mysql>
mysql> select 1 & 1 ;
+-------+
| 1 & 1 |
+-------+
|     1 |
+-------+
1 row in set (0.00 sec)

mysql> select  10 | 10;
+---------+
| 10 | 10 |
+---------+
|      10 |
+---------+
1 row in set (0.00 sec)

mysql> select  123^2;
+-------+
| 123^2 |
+-------+
|   121 |
+-------+
1 row in set (0.00 sec)
 */
 -- ------------------------
select  1>12;
select  1<12;
select  10=10;
select  10>=12;
select  32<=2;
select   23<>21;

/*
 mysql> select  1>12;
+------+
| 1>12 |
+------+
|    0 |
+------+
1 row in set (0.00 sec)

mysql> select  1<12;
+------+
| 1<12 |
+------+
|    1 |
+------+
1 row in set (0.00 sec)

mysql> select  10=10;
+-------+
| 10=10 |
+-------+
|     1 |
+-------+
1 row in set (0.00 sec)

mysql> select  10>=12;
+--------+
| 10>=12 |
+--------+
|      0 |
+--------+
1 row in set (0.00 sec)

mysql> select  32<=2;
+-------+
| 32<=2 |
+-------+
|     0 |
+-------+
1 row in set (0.00 sec)

mysql> select   23<>21;
+--------+
| 23<>21 |
+--------+
|      1 |
+--------+
1 row in set (0.00 sec)

 */

-- ----------------------
# SQL Compound Operators

# Operator	Description
# +=	Add equals
# -=	Subtract equals
# *=	Multiply equals
# /=	Divide equals
# %=	Modulo equals
# &=	Bitwise AND equals
# ^-=	Bitwise exclusive equals
# |*=	Bitwise OR equals
delimiter //
create procedure Price()
    begin
        select price from products where ProductID=1;
    end //
    delimiter ;


update products
set Price =Price+price
where ProductID =1;

call Price();

update products
set Price =Price-price
where ProductID =1;

call Price();

update products
set Price =Price*price
where ProductID =1;

call price();

update products
set Price =Price/price
where ProductID =1;

call Price();

update products
set Price =Price%price
where ProductID =1;

call Price();

update products
set Price =Price%price
where ProductID =1;

call price();


update products
set Price =Price^price
where ProductID =1;

call price();

update products
set Price =Price|price
where ProductID =1;

call price();

/*
 mysql> use personal_database;
Database changed
mysql> update products
    -> set Price =Price+price
    -> where ProductID =1;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql>
mysql> call Price();
+-------+
| price |
+-------+
|  0.00 |
+-------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql>
mysql> update products
    -> set Price =Price-price
    -> where ProductID =1;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql>
mysql> call Price();
+-------+
| price |
+-------+
|  0.00 |
+-------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql>
mysql> update products
    -> set Price =Price*price
    -> where ProductID =1;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql>
mysql> call price();
+-------+
| price |
+-------+
|  0.00 |
+-------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql>
mysql> update products
    -> set Price =Price/price
    -> where ProductID =1;
ERROR 1365 (22012): Division by 0
mysql>
mysql> call Price();
+-------+
| price |
+-------+
|  0.00 |
+-------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql>
mysql> update products
    -> set Price =Price%price
    -> where ProductID =1;
ERROR 1365 (22012): Division by 0
mysql>
mysql> call Price();
+-------+
| price |
+-------+
|  0.00 |
+-------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql>
mysql> update products
    -> set Price =Price%price
    -> where ProductID =1;
ERROR 1365 (22012): Division by 0
mysql>
mysql> call price();
+-------+
| price |
+-------+
|  0.00 |
+-------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql>
mysql>
mysql> update products
    -> set Price =Price^price
    -> where ProductID =1;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql>
mysql> call price();
+-------+
| price |
+-------+
|  0.00 |
+-------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql>
mysql> update products
    -> set Price =Price|price
    -> where ProductID =1;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 1  Changed: 0  Warnings: 0

mysql>
mysql> call price();
+-------+
| price |
+-------+
|  0.00 |
+-------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)
 */

# Operator   Description
# ---------- -----------------------------------------------------------
# ALL        TRUE if all of the subquery values meet the condition
# AND        TRUE if all the conditions separated by AND is TRUE
# ANY        TRUE if any of the subquery values meet the condition
# BETWEEN    TRUE if the operand is within the range of comparisons
# EXISTS     TRUE if the subquery returns one or more records
# IN         TRUE if the operand is equal to one of a list of expressions
# LIKE       TRUE if the operand matches a pattern
# NOT        Displays a record if the condition(s) is NOT TRUE
# OR         TRUE if any of the conditions separated by OR is TRUE
# SOME       TRUE if any of the subquery values meet the condition

select CustomerName from customers
where CustomerID = all (select ProductID from products);

/*
Empty set (0.00 sec)
 */

 select customers.CustomerName from customers
 where (CustomerID BETWEEN  10 AND 20 )and CustomerName not like 'a%';
/*
 +----------------------------+
| CustomerName               |
+----------------------------+
| Bottom-Dollar Marketse     |
| B's Beverages              |
| Cactus Comidas para llevar |
| Centro comercial Moctezuma |
| Chop-suey Chinese          |
| Comércio Mineiro           |
| Consolidated Holdings      |
| Drachenblut Delikatessend  |
| Du monde entier            |
| Eastern Connection         |
| Ernst Handel               |
+----------------------------+
 */

select CustomerName
from customers
where CustomerID=any(select ProductID from products) and CustomerID<10;

/*
 +---------------------------+
| CustomerName              |
+---------------------------+
| Alfreds Futterkiste       |
| NULL                      |
| Antonio Moreno Taquería   |
| Around the Horn           |
| Berglunds snabbköp        |
| Blauer See Delikatessen   |
| Blondel père et fils      |
| Bólido Comidas preparadas |
+---------------------------+
 */

 select * from customers
 where CustomerID between  10 and 20;

/*
 +------------+----------------------------+-------------------+------------------------------+--------------+------------+-------------+
| CustomerID | CustomerName               | ContactName       | Address                      | City         | PostalCode | Country     |
+------------+----------------------------+-------------------+------------------------------+--------------+------------+-------------+
|         10 | Bottom-Dollar Marketse     | Elizabeth Lincoln | 23 Tsawassen Blvd.           | Tsawassen    | T2F 8M4    | Canada      |
|         11 | B's Beverages              | Victoria Ashworth | Fauntleroy Circus            | London       | EC2 5NT    | UK          |
|         12 | Cactus Comidas para llevar | Patricio Simpson  | Cerrito 333                  | Buenos Aires | 1010       | Argentina   |
|         13 | Centro comercial Moctezuma | Francisco Chang   | Sierras de Granada 9993      | México D.F.  | 05022      | Mexico      |
|         14 | Chop-suey Chinese          | Yang Wang         | Hauptstr. 29                 | Bern         | 3012       | Switzerland |
|         15 | Comércio Mineiro           | Pedro Afonso      | Av. dos Lusíadas, 23         | São Paulo    | 05432-043  | Brazil      |
|         16 | Consolidated Holdings      | Elizabeth Brown   | Berkeley Gardens 12 Brewery  | London       | WX1 6LT    | UK          |
|         17 | Drachenblut Delikatessend  | Sven Ottlieb      | Walserweg 21                 | Aachen       | 52066      | Germany     |
|         18 | Du monde entier            | Janine Labrune    | 67, rue des Cinquante Otages | Nantes       | 44000      | France      |
|         19 | Eastern Connection         | Ann Devon         | 35 King George               | London       | WX3 6FW    | UK          |
|         20 | Ernst Handel               | Roland Mendel     | Kirchgasse 6                 | Graz         | 8010       | Austria     |
+------------+----------------------------+-------------------+------------------------------+--------------+------------+-------------+
 */

 select  customers.CustomerName from customers
 where exists(select ProductID from products where ProductID>10);
/*
 +--------------------------------------+
| CustomerName                         |
+--------------------------------------+
| Alfreds Futterkiste                  |
| NULL                                 |
| Antonio Moreno Taquería              |
| Around the Horn                      |
| Berglunds snabbköp                   |
| Blauer See Delikatessen              |
| Blondel père et fils                 |
| Bólido Comidas preparadas            |
| Bon app'                             |
| Bottom-Dollar Marketse               |
| B's Beverages                        |
| Cactus Comidas para llevar           |
| Centro comercial Moctezuma           |
| Chop-suey Chinese                    |
| Comércio Mineiro                     |
| Consolidated Holdings                |
| Drachenblut Delikatessend            |
| Du monde entier                      |
| Eastern Connection                   |
| Ernst Handel                         |
| Familia Arquibaldo                   |
| FISSA Fabrica Inter. Salchichas S.A. |
| Folies gourmandes                    |
| Folk och fä HB                       |
| Frankenversand                       |
| France restauration                  |
| Franchi S.p.A.                       |
| Furia Bacalhau e Frutos do Mar       |
| Galería del gastrónomo               |
| Godos Cocina Típica                  |
| Gourmet Lanchonetes                  |
| Great Lakes Food Market              |
| GROSELLA-Restaurante                 |
| Hanari Carnes                        |
| HILARIÓN-Abastos                     |
| Hungry Coyote Import Store           |
| Hungry Owl All-Night Grocers         |
| Island Trading                       |
| Königlich Essen                      |
| La corne d'abondance                 |
| La maison d'Asie                     |
| Laughing Bacchus Wine Cellars        |
| Lazy K Kountry Store                 |
| Lehmanns Marktstand                  |
| Let's Stop N Shop                    |
| LILA-Supermercado                    |
| LINO-Delicateses                     |
| Lonesome Pine Restaurant             |
| Magazzini Alimentari Riuniti         |
| Maison Dewey                         |
| Mère Paillarde                       |
| Morgenstern Gesundkost               |
| North/South                          |
| Océano Atlántico Ltda.               |
| Old World Delicatessen               |
| Ottilies Käseladen                   |
| Paris spécialités                    |
| Pericles Comidas clásicas            |
| Piccolo und mehr                     |
| Princesa Isabel Vinhoss              |
| Que Delícia                          |
| Queen Cozinha                        |
| QUICK-Stop                           |
| Rancho grande                        |
| Rattlesnake Canyon Grocery           |
| Reggiani Caseifici                   |
| Ricardo Adocicados                   |
| Richter Supermarkt                   |
| Romero y tomillo                     |
| Santé Gourmet                        |
| Save-a-lot Markets                   |
| Seven Seas Imports                   |
| Simons bistro                        |
| Spécialités du monde                 |
| Split Rail Beer & Ale                |
| Suprêmes délices                     |
| The Big Cheese                       |
| The Cracker Box                      |
| Toms Spezialitäten                   |
| Tortuga Restaurante                  |
| Tradição Hipermercados               |
| Trail's Head Gourmet Provisioners    |
| Vaffeljernet                         |
| Victuailles en stock                 |
| Vins et alcools Chevalier            |
| Die Wandernde Kuh                    |
| Wartian Herkku                       |
| Wellington Importadora               |
| White Clover Markets                 |
| Wilman Kala                          |
| Wolski                               |
+--------------------------------------+
 */

 select * from customers
 where  city in ('Pairs','London');

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
 where CustomerName like '%un%';
/*
 +------------+------------------------------+--------------------+--------------------------------+-------------+------------+---------+
| CustomerID | CustomerName                 | ContactName        | Address                        | City        | PostalCode | Country |
+------------+------------------------------+--------------------+--------------------------------+-------------+------------+---------+
|          4 | Around the Horn              | Thomas Hardy       | 120 Hanover Sq.                | London      | WA1 1DP    | UK      |
|          5 | Berglunds snabbköp           | Christina Berglund | Berguvsvägen 8                 | Luleå       | S-958 22   | Sweden  |
|         36 | Hungry Coyote Import Store   | Yoshi Latimer      | City Center Plaza 516 Main St. | Elgin       | 97827      | USA     |
|         37 | Hungry Owl All-Night Grocers | Patricia McKenna   | 8 Johnstown Road               | Cork        | NULL       | Ireland |
|         43 | Lazy K Kountry Store         | John Steel         | 12 Orchestra Terrace           | Walla Walla | 99362      | USA     |
|         49 | Magazzini Alimentari Riuniti | Giovanni Rovelli   | Via Ludovico il Moro 22        | Bergamo     | 24100      | Italy   |
|         52 | Morgenstern Gesundkost       | Alexander Feuer    | Heerstr. 22                    | Leipzig     | 04179      | Germany |
|         59 | Piccolo und mehr             | Georg Pipps        | Geislweg 14                    | Salzburg    | 5020       | Austria |
+------------+------------------------------+--------------------+--------------------------------+-------------+------------+---------+
 */

select * from suppliers
where SupplierID not like '2%';

/*
 +------------+----------------------------------------+----------------------------+-----------------------------------------------+------------+------------+-----------+-----------------+
| SupplierID | SupplierName                           | ContactName                | Address                                       | City       | PostalCode | Country   | Phone           |
+------------+----------------------------------------+----------------------------+-----------------------------------------------+------------+------------+-----------+-----------------+
|          1 | Exotic Liquid                          | Charlotte Cooper           | 49 Gilbert St.                                | Londona    | EC1 4SD    | UK        | (171) 555-2222  |
|          3 | Grandma Kelly's Homestead              | Regina Murphy              | 707 Oxford Rd.                                | Ann Arbor  | 48104      | USA       | (313) 555-5735  |
|          4 | Tokyo Traders                          | Yoshi Nagase               | 9-8 Sekimai Musashino-shi                     | Tokyo      | 100        | Japan     | (03) 3555-5011  |
|          5 | Cooperativa de Quesos 'Las Cabras'     | Antonio del Valle Saavedra | Calle del Rosal 4                             | Oviedo     | 33007      | Spain     | (98) 598 76 54  |
|          6 | Mayumi's                               | Mayumi Ohno                | 92 Setsuko Chuo-ku                            | Osaka      | 545        | Japan     | (06) 431-7877   |
|          7 | Pavlova, Ltd.                          | Ian Devling                | 74 Rose St. Moonie Ponds                      | Melbourne  | 3058       | Australia | (03) 444-2343   |
|          8 | Specialty Biscuits, Ltd.               | Peter Wilson               | 29 King's Way                                 | Manchester | M14 GSD    | UK        | (161) 555-4448  |
|          9 | PB Knäckebröd AB                       | Lars Peterson              | Kaloadagatan 13                               | Göteborg   | S-345 67   | Sweden    | 031-987 65 43   |
|         10 | Refrescos Americanas LTDA              | Carlos Diaz                | Av. das Americanas 12.890                     | São Paulo  | 5442       | Brazil    | (11) 555 4640   |
|         11 | Heli Süßwaren GmbH & Co. KG            | Petra Winkler              | Tiergartenstraße 5                            | Berlin     | 10785      | Germany   | (010) 9984510   |
|         12 | Plutzer Lebensmittelgroßmärkte AG      | Martin Bein                | Bogenallee 51                                 | Frankfurt  | 60439      | Germany   | (069) 992755    |
|         13 | Nord-Ost-Fisch Handelsgesellschaft mbH | Sven Petersen              | Frahmredder 112a                              | Cuxhaven   | 27478      | Germany   | (04721) 8713    |
|         14 | Formaggi Fortini s.r.l.                | Elio Rossi                 | Viale Dante, 75                               | Ravenna    | 48100      | Italy     | (0544) 60323    |
|         15 | Norske Meierier                        | Beate Vileid               | Hatlevegen 5                                  | Sandvika   | 1320       | Norway    | (0)2-953010     |
|         16 | Bigfoot Breweries                      | Cheryl Saylor              | 3400 - 8th Avenue Suite 210                   | Bend       | 97101      | USA       | (503) 555-9931  |
|         17 | Svensk Sjöföda AB                      | Michael Björn              | Brovallavägen 231                             | Stockholm  | S-123 45   | Sweden    | 08-123 45 67    |
|         18 | Aux joyeux ecclésiastiques             | Guylène Nodier             | 203, Rue des Francs-Bourgeois                 | Paris      | 75004      | France    | (1) 03.83.00.68 |
|         19 | New England Seafood Cannery            | Robb Merchant              | Order Processing Dept. 2100 Paul Revere Blvd. | Boston     | 02134      | USA       | (617) 555-3267  |
+------------+----------------------------------------+----------------------------+-----------------------------------------------+------------+------------+-----------+-----------------+
 */

select * from customers
where CustomerID >some (select  ProductID from products order by ProductID desc);

/*
 +------------+--------------------------------------+----------------------+------------------------------------------------+-----------------+------------+-------------+
| CustomerID | CustomerName                         | ContactName          | Address                                        | City            | PostalCode | Country     |
+------------+--------------------------------------+----------------------+------------------------------------------------+-----------------+------------+-------------+
|          2 | NULL                                 | Ana Trujillo         | Avda. de la Constitución 2222                  | México D.F.     | 05021      | Mexico      |
|          3 | Antonio Moreno Taquería              | Antonio Moreno       | Mataderos 2312                                 | México D.F.     | 05023      | Mexico      |
|          4 | Around the Horn                      | Thomas Hardy         | 120 Hanover Sq.                                | London          | WA1 1DP    | UK          |
|          5 | Berglunds snabbköp                   | Christina Berglund   | Berguvsvägen 8                                 | Luleå           | S-958 22   | Sweden      |
|          6 | Blauer See Delikatessen              | Hanna Moos           | Forsterstr. 57                                 | Mannheim        | 68306      | Germany     |
|          7 | Blondel père et fils                 | Frédérique Citeaux   | 24, place Kléber                               | Strasbourg      | 67000      | France      |
|          8 | Bólido Comidas preparadas            | Martín Sommer        | C/ Araquil, 67                                 | Madrid          | 28023      | Spain       |
|          9 | Bon app'                             | Laurence Lebihans    | 12, rue des Bouchers                           | Marseille       | 13008      | France      |
|         10 | Bottom-Dollar Marketse               | Elizabeth Lincoln    | 23 Tsawassen Blvd.                             | Tsawassen       | T2F 8M4    | Canada      |
|         11 | B's Beverages                        | Victoria Ashworth    | Fauntleroy Circus                              | London          | EC2 5NT    | UK          |
|         12 | Cactus Comidas para llevar           | Patricio Simpson     | Cerrito 333                                    | Buenos Aires    | 1010       | Argentina   |
|         13 | Centro comercial Moctezuma           | Francisco Chang      | Sierras de Granada 9993                        | México D.F.     | 05022      | Mexico      |
|         14 | Chop-suey Chinese                    | Yang Wang            | Hauptstr. 29                                   | Bern            | 3012       | Switzerland |
|         15 | Comércio Mineiro                     | Pedro Afonso         | Av. dos Lusíadas, 23                           | São Paulo       | 05432-043  | Brazil      |
|         16 | Consolidated Holdings                | Elizabeth Brown      | Berkeley Gardens 12 Brewery                    | London          | WX1 6LT    | UK          |
|         17 | Drachenblut Delikatessend            | Sven Ottlieb         | Walserweg 21                                   | Aachen          | 52066      | Germany     |
|         18 | Du monde entier                      | Janine Labrune       | 67, rue des Cinquante Otages                   | Nantes          | 44000      | France      |
|         19 | Eastern Connection                   | Ann Devon            | 35 King George                                 | London          | WX3 6FW    | UK          |
|         20 | Ernst Handel                         | Roland Mendel        | Kirchgasse 6                                   | Graz            | 8010       | Austria     |
|         21 | Familia Arquibaldo                   | Aria Cruz            | Rua Orós, 92                                   | São Paulo       | 05442-030  | Brazil      |
|         22 | FISSA Fabrica Inter. Salchichas S.A. | Diego Roel           | C/ Moralzarzal, 86                             | Madrid          | 28034      | Spain       |
|         23 | Folies gourmandes                    | Martine Rancé        | 184, chaussée de Tournai                       | Lille           | 59000      | France      |
|         24 | Folk och fä HB                       | Maria Larsson        | Åkergatan 24                                   | Bräcke          | S-844 67   | Sweden      |
|         25 | Frankenversand                       | Peter Franken        | Berliner Platz 43                              | München         | 80805      | Germany     |
|         26 | France restauration                  | Carine Schmitt       | 54, rue Royale                                 | Nantes          | 44000      | France      |
|         27 | Franchi S.p.A.                       | Paolo Accorti        | Via Monte Bianco 34                            | Torino          | 10100      | Italy       |
|         28 | Furia Bacalhau e Frutos do Mar       | Lino Rodriguez       | Jardim das rosas n. 32                         | Lisboa          | 1675       | Portugal    |
|         29 | Galería del gastrónomo               | Eduardo Saavedra     | Rambla de Cataluña, 23                         | Barcelona       | 08022      | Spain       |
|         30 | Godos Cocina Típica                  | José Pedro Freyre    | C/ Romero, 33                                  | Sevilla         | 41101      | Spain       |
|         31 | Gourmet Lanchonetes                  | André Fonseca        | Av. Brasil, 442                                | Campinas        | 04876-786  | Brazil      |
|         32 | Great Lakes Food Market              | Howard Snyder        | 2732 Baker Blvd.                               | Eugene          | 97403      | USA         |
|         33 | GROSELLA-Restaurante                 | Manuel Pereira       | 5ª Ave. Los Palos Grandes                      | Caracas         | 1081       | Venezuela   |
|         34 | Hanari Carnes                        | Mario Pontes         | Rua do Paço, 67                                | Rio de Janeiro  | 05454-876  | Brazil      |
|         35 | HILARIÓN-Abastos                     | Carlos Hernández     | Carrera 22 con Ave. Carlos Soublette #8-35     | San Cristóbal   | 5022       | Venezuela   |
|         36 | Hungry Coyote Import Store           | Yoshi Latimer        | City Center Plaza 516 Main St.                 | Elgin           | 97827      | USA         |
|         37 | Hungry Owl All-Night Grocers         | Patricia McKenna     | 8 Johnstown Road                               | Cork            | NULL       | Ireland     |
|         38 | Island Trading                       | Helen Bennett        | Garden House Crowther Way                      | Cowes           | PO31 7PJ   | UK          |
|         39 | Königlich Essen                      | Philip Cramer        | Maubelstr. 90                                  | Brandenburg     | 14776      | Germany     |
|         40 | La corne d'abondance                 | Daniel Tonini        | 67, avenue de l'Europe                         | Versailles      | 78000      | France      |
|         41 | La maison d'Asie                     | Annette Roulet       | 1 rue Alsace-Lorraine                          | Toulouse        | 31000      | France      |
|         42 | Laughing Bacchus Wine Cellars        | Yoshi Tannamuri      | 1900 Oak St.                                   | Vancouver       | V3F 2K1    | Canada      |
|         43 | Lazy K Kountry Store                 | John Steel           | 12 Orchestra Terrace                           | Walla Walla     | 99362      | USA         |
|         44 | Lehmanns Marktstand                  | Renate Messner       | Magazinweg 7                                   | Frankfurt a.M.  | 60528      | Germany     |
|         45 | Let's Stop N Shop                    | Jaime Yorres         | 87 Polk St. Suite 5                            | San Francisco   | 94117      | USA         |
|         46 | LILA-Supermercado                    | Carlos González      | Carrera 52 con Ave. Bolívar #65-98 Llano Largo | Barquisimeto    | 3508       | Venezuela   |
|         47 | LINO-Delicateses                     | Felipe Izquierdo     | Ave. 5 de Mayo Porlamar                        | I. de Margarita | 4980       | Venezuela   |
|         48 | Lonesome Pine Restaurant             | Fran Wilson          | 89 Chiaroscuro Rd.                             | Portland        | 97219      | USA         |
|         49 | Magazzini Alimentari Riuniti         | Giovanni Rovelli     | Via Ludovico il Moro 22                        | Bergamo         | 24100      | Italy       |
|         50 | Maison Dewey                         | Catherine Dewey      | Rue Joseph-Bens 532                            | Bruxelles       | B-1180     | Belgium     |
|         51 | Mère Paillarde                       | Jean Fresnière       | 43 rue St. Laurent                             | Montréal        | H1J 1C3    | Canada      |
|         52 | Morgenstern Gesundkost               | Alexander Feuer      | Heerstr. 22                                    | Leipzig         | 04179      | Germany     |
|         53 | North/South                          | Simon Crowther       | South House 300 Queensbridge                   | London          | SW7 1RZ    | UK          |
|         54 | Océano Atlántico Ltda.               | Yvonne Moncada       | Ing. Gustavo Moncada 8585 Piso 20-A            | Buenos Aires    | 1010       | Argentina   |
|         55 | Old World Delicatessen               | Rene Phillips        | 2743 Bering St.                                | Anchorage       | 99508      | USA         |
|         56 | Ottilies Käseladen                   | Henriette Pfalzheim  | Mehrheimerstr. 369                             | Köln            | 50739      | Germany     |
|         57 | Paris spécialités                    | Marie Bertrand       | 265, boulevard Charonne                        | Paris           | 75012      | France      |
|         58 | Pericles Comidas clásicas            | Guillermo Fernández  | Calle Dr. Jorge Cash 321                       | México D.F.     | 05033      | Mexico      |
|         59 | Piccolo und mehr                     | Georg Pipps          | Geislweg 14                                    | Salzburg        | 5020       | Austria     |
|         60 | Princesa Isabel Vinhoss              | Isabel de Castro     | Estrada da saúde n. 58                         | Lisboa          | 1756       | Portugal    |
|         61 | Que Delícia                          | Bernardo Batista     | Rua da Panificadora, 12                        | Rio de Janeiro  | 02389-673  | Brazil      |
|         62 | Queen Cozinha                        | Lúcia Carvalho       | Alameda dos Canàrios, 891                      | São Paulo       | 05487-020  | Brazil      |
|         63 | QUICK-Stop                           | Horst Kloss          | Taucherstraße 10                               | Cunewalde       | 01307      | Germany     |
|         64 | Rancho grande                        | Sergio Gutiérrez     | Av. del Libertador 900                         | Buenos Aires    | 1010       | Argentina   |
|         65 | Rattlesnake Canyon Grocery           | Paula Wilson         | 2817 Milton Dr.                                | Albuquerque     | 87110      | USA         |
|         66 | Reggiani Caseifici                   | Maurizio Moroni      | Strada Provinciale 124                         | Reggio Emilia   | 42100      | Italy       |
|         67 | Ricardo Adocicados                   | Janete Limeira       | Av. Copacabana, 267                            | Rio de Janeiro  | 02389-890  | Brazil      |
|         68 | Richter Supermarkt                   | Michael Holz         | Grenzacherweg 237                              | Genève          | 1203       | Switzerland |
|         69 | Romero y tomillo                     | Alejandra Camino     | Gran Vía, 1                                    | Madrid          | 28001      | Spain       |
|         70 | Santé Gourmet                        | Jonas Bergulfsen     | Erling Skakkes gate 78                         | Stavern         | 4110       | Norway      |
|         71 | Save-a-lot Markets                   | Jose Pavarotti       | 187 Suffolk Ln.                                | Boise           | 83720      | USA         |
|         72 | Seven Seas Imports                   | Hari Kumar           | 90 Wadhurst Rd.                                | London          | OX15 4NB   | UK          |
|         73 | Simons bistro                        | Jytte Petersen       | Vinbæltet 34                                   | København       | 1734       | Denmark     |
|         74 | Spécialités du monde                 | Dominique Perrier    | 25, rue Lauriston                              | Lyon            | 75016      | France      |
|         75 | Split Rail Beer & Ale                | Art Braunschweiger   | P.O. Box 555                                   | Lander          | 82520      | USA         |
|         76 | Suprêmes délices                     | Pascale Cartrain     | Boulevard Tirou, 255                           | Charleroi       | B-6000     | Belgium     |
|         77 | The Big Cheese                       | Liz Nixon            | 89 Jefferson Way Suite 2                       | Portland        | 97201      | USA         |
|         78 | The Cracker Box                      | Liu Wong             | 55 Grizzly Peak Rd.                            | Butte           | 59801      | USA         |
|         79 | Toms Spezialitäten                   | Karin Josephs        | Luisenstr. 48                                  | Münster         | 44087      | Germany     |
|         80 | Tortuga Restaurante                  | Miguel Angel Paolino | Avda. Azteca 123                               | México D.F.     | 05033      | Mexico      |
|         81 | Tradição Hipermercados               | Anabela Domingues    | Av. Inês de Castro, 414                        | São Paulo       | 05634-030  | Brazil      |
|         82 | Trail's Head Gourmet Provisioners    | Helvetius Nagy       | 722 DaVinci Blvd.                              | Kirkland        | 98034      | USA         |
|         83 | Vaffeljernet                         | Palle Ibsen          | Smagsløget 45                                  | Århus           | 8200       | Denmark     |
|         84 | Victuailles en stock                 | Mary Saveley         | 2, rue du Commerce                             | Lyon            | 69004      | France      |
|         85 | Vins et alcools Chevalier            | Paul Henriot         | 59 rue de l'Abbaye                             | Reims           | 51100      | France      |
|         86 | Die Wandernde Kuh                    | Rita Müller          | Adenauerallee 900                              | Stuttgart       | 70563      | Germany     |
|         87 | Wartian Herkku                       | Pirkko Koskitalo     | Torikatu 38                                    | Oulu            | 90110      | Finland     |
|         88 | Wellington Importadora               | Paula Parente        | Rua do Mercado, 12                             | Resende         | 08737-363  | Brazil      |
|         89 | White Clover Markets                 | Karl Jablonski       | 305 - 14th Ave. S. Suite 3B                    | Seattle         | 98128      | USA         |
|         90 | Wilman Kala                          | Matti Karttunen      | Keskuskatu 45                                  | Helsinki        | 21240      | Finland     |
|         91 | Wolski                               | Zbyszek              | ul. Filtrowa 68                                | Walla           | 01-012     | NULL        |
 */

