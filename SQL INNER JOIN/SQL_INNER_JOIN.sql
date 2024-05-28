# SQL INNER JOIN
# INNER JOIN
# The INNER JOIN keyword selects records that
# have matching values in both tables.

# Note: The INNER JOIN keyword returns only rows with a match in both tables.
# Which means that if you have a product with no CategoryID, or with a CategoryID
# that is not present in the Categories table, that record would not be returned in the result.

use personal_database;

select CustomerID,CustomerName,Description
from customers inner join categories on CustomerID=CategoryID;

/*
 +------------+------------------------------------+------------------------------------------------------------+
| CustomerID | CustomerName                       | Description                                                |
+------------+------------------------------------+------------------------------------------------------------+
|          2 | Ana Trujillo Emparedados y helados | Sweet and savory sauces, relishes, spreads, and seasonings |
|          3 | Antonio Moreno Taquería            | Desserts, candies, and sweet breads                        |
|          4 | Around the Horn                    | Cheeses                                                    |
|          5 | Berglunds snabbköp                 | Breads, crackers, pasta, and cereal                        |
|          6 | Blauer See Delikatessen            | Prepared meats                                             |
|          7 | Blondel père et fils               | Dried fruit and bean curd                                  |
|          8 | Bólido Comidas preparadas          | Seaweed and fish                                           |
+------------+------------------------------------+------------------------------------------------------------+
 */

select ProductID,ProductName,CategoryName
from products inner join categories on products.CategoryID=categories.CategoryID ;

/*
 +-----------+----------------------------------+----------------+
| ProductID | ProductName                      | CategoryName   |
+-----------+----------------------------------+----------------+
|         1 | Chais                            | Beverages      |
|         2 | Chang                            | Beverages      |
|         3 | Aniseed Syrup                    | Condiments     |
|         4 | Chef Anton's Cajun Seasoning     | Condiments     |
|         5 | Chef Anton's Gumbo Mix           | Condiments     |
|         6 | Grandma's Boysenberry Spread     | Condiments     |
|         7 | Uncle Bob's Organic Dried Pears  | Produce        |
|         8 | Northwoods Cranberry Sauce       | Condiments     |
|        10 | Ikura                            | Seafood        |
|        11 | Queso Cabrales                   | Dairy Products |
|        12 | Queso Manchego La Pastora        | Dairy Products |
|        13 | Konbu                            | Seafood        |
|        14 | Tofu                             | Produce        |
|        15 | Genen Shouyu                     | Condiments     |
|        16 | Pavlova                          | Confections    |
|        17 | Alice Mutton                     | Meat/Poultry   |
|        19 | Teatime Chocolate Biscuits       | Confections    |
|        21 | Sir Rodney's Scones              | Confections    |
|        22 | Gustaf's Knäckebröd              | Grains/Cereals |
|        23 | Tunnbröd                         | Grains/Cereals |
|        24 | Guaraná Fantástica               | Beverages      |
|        25 | NuNuCa Nuß-Nougat-Creme          | Confections    |
|        26 | Gumbär Gummibärchen              | Confections    |
|        27 | Schoggi Schokolade               | Confections    |
|        28 | Rössle Sauerkraut                | Produce        |
|        30 | Nord-Ost Matjeshering            | Seafood        |
|        31 | Gorgonzola Telino                | Dairy Products |
|        32 | Mascarpone Fabioli               | Dairy Products |
|        33 | Geitost                          | Dairy Products |
|        34 | Sasquatch Ale                    | Beverages      |
|        35 | Steeleye Stout                   | Beverages      |
|        36 | Inlagd Sill                      | Seafood        |
|        37 | Gravad lax                       | Seafood        |
|        39 | Chartreuse verte                 | Beverages      |
|        40 | Boston Crab Meat                 | Seafood        |
|        41 | Jack's New England Clam Chowder  | Seafood        |
|        42 | Singaporean Hokkien Fried Mee    | Grains/Cereals |
|        43 | Ipoh Coffee                      | Beverages      |
|        44 | Gula Malacca                     | Condiments     |
|        45 | Røgede sild                      | Seafood        |
|        46 | Spegesild                        | Seafood        |
|        47 | Zaanse koeken                    | Confections    |
|        48 | Chocolade                        | Confections    |
|        49 | Maxilaku                         | Confections    |
|        50 | Valkoinen suklaa                 | Confections    |
|        52 | Filo Mix                         | Grains/Cereals |
|        53 | Perth Pasties                    | Meat/Poultry   |
|        54 | Tourtière                        | Meat/Poultry   |
|        55 | Pâté chinois                     | Meat/Poultry   |
|        56 | Gnocchi di nonna Alice           | Grains/Cereals |
|        57 | Ravioli Angelo                   | Grains/Cereals |
|        58 | Escargots de Bourgogne           | Seafood        |
|        60 | Camembert Pierrot                | Dairy Products |
|        61 | Sirop d'érable                   | Condiments     |
|        62 | Tarte au sucre                   | Confections    |
|        63 | Vegie-spread                     | Condiments     |
|        64 | Wimmers gute Semmelknödel        | Grains/Cereals |
|        65 | Louisiana Fiery Hot Pepper Sauce | Condiments     |
|        66 | Louisiana Hot Spiced Okra        | Condiments     |
|        67 | Laughing Lumberjack Lager        | Beverages      |
|        68 | Scottish Longbreads              | Confections    |
|        69 | Gudbrandsdalsost                 | Dairy Products |
|        70 | Outback Lager                    | Beverages      |
|        71 | Fløtemysost                      | Dairy Products |
|        72 | Mozzarella di Giovanni           | Dairy Products |
|        73 | Röd Kaviar                       | Seafood        |
|        74 | Longlife Tofu                    | Produce        |
|        75 | Rhönbräu Klosterbier             | Beverages      |
|        76 | Lakkalikööri                     | Beverages      |
|        77 | Original Frankfurter grüne Soße  | Condiments     |
+-----------+----------------------------------+----------------+
 */
# JOIN or INNER JOIN
# JOIN and INNER JOIN will return the same result.
#
# INNER is the default join type for JOIN, so when you write JOIN the
# parser actually writes INNER JOIN.

select customers.CustomerName,products.ProductName,orderdetails.Quantity
from customers inner join products on products.ProductID=customers.CustomerID
inner join orderdetails on customers.CustomerID=orderdetails.OrderDetailID;

/*
 +--------------------------------------+----------------------------------+----------+
| CustomerName                         | ProductName                      | Quantity |
+--------------------------------------+----------------------------------+----------+
| Ana Trujillo Emparedados y helados   | Chang                            |       10 |
| Antonio Moreno Taquería              | Aniseed Syrup                    |        5 |
| Around the Horn                      | Chef Anton's Cajun Seasoning     |        9 |
| Berglunds snabbköp                   | Chef Anton's Gumbo Mix           |       40 |
| Blauer See Delikatessen              | Grandma's Boysenberry Spread     |       10 |
| Blondel père et fils                 | Uncle Bob's Organic Dried Pears  |       35 |
| Bólido Comidas preparadas            | Northwoods Cranberry Sauce       |       15 |
| Bottom-Dollar Marketse               | Ikura                            |       15 |
| B's Beverages                        | Queso Cabrales                   |       20 |
| Cactus Comidas para llevar           | Queso Manchego La Pastora        |       40 |
| Centro comercial Moctezuma           | Konbu                            |       25 |
| Chop-suey Chinese                    | Tofu                             |       40 |
| Comércio Mineiro                     | Genen Shouyu                     |       20 |
| Consolidated Holdings                | Pavlova                          |       42 |
| Drachenblut Delikatessend            | Alice Mutton                     |       40 |
| Eastern Connection                   | Teatime Chocolate Biscuits       |       21 |
| Familia Arquibaldo                   | Sir Rodney's Scones              |       20 |
| FISSA Fabrica Inter. Salchichas S.A. | Gustaf's Knäckebröd              |       35 |
| Folies gourmandes                    | Tunnbröd                         |       25 |
| Folk och fä HB                       | Guaraná Fantástica               |       30 |
| Frankenversand                       | NuNuCa Nuß-Nougat-Creme          |       15 |
| France restauration                  | Gumbär Gummibärchen              |       12 |
| Franchi S.p.A.                       | Schoggi Schokolade               |       25 |
| Furia Bacalhau e Frutos do Mar       | Rössle Sauerkraut                |        6 |
| Godos Cocina Típica                  | Nord-Ost Matjeshering            |       50 |
| Gourmet Lanchonetes                  | Gorgonzola Telino                |       65 |
| Great Lakes Food Market              | Mascarpone Fabioli               |        6 |
| GROSELLA-Restaurante                 | Geitost                          |       10 |
| Hanari Carnes                        | Sasquatch Ale                    |        1 |
| HILARIÓN-Abastos                     | Steeleye Stout                   |       16 |
| Hungry Coyote Import Store           | Inlagd Sill                      |       50 |
| Hungry Owl All-Night Grocers         | Gravad lax                       |       15 |
| Königlich Essen                      | Chartreuse verte                 |       20 |
| La corne d'abondance                 | Boston Crab Meat                 |       20 |
| La maison d'Asie                     | Jack's New England Clam Chowder  |       12 |
| Laughing Bacchus Wine Cellars        | Singaporean Hokkien Fried Mee    |       15 |
| Lazy K Kountry Store                 | Ipoh Coffee                      |        2 |
| Lehmanns Marktstand                  | Gula Malacca                     |       60 |
| Let's Stop N Shop                    | Røgede sild                      |       28 |
| LILA-Supermercado                    | Spegesild                        |       60 |
| LINO-Delicateses                     | Zaanse koeken                    |       36 |
| Lonesome Pine Restaurant             | Chocolade                        |       35 |
| Magazzini Alimentari Riuniti         | Maxilaku                         |       25 |
| Maison Dewey                         | Valkoinen suklaa                 |       30 |
| Morgenstern Gesundkost               | Filo Mix                         |       12 |
| North/South                          | Perth Pasties                    |       50 |
| Océano Atlántico Ltda.               | Tourtière                        |       70 |
| Old World Delicatessen               | Pâté chinois                     |       15 |
| Ottilies Käseladen                   | Gnocchi di nonna Alice           |       10 |
| Paris spécialités                    | Ravioli Angelo                   |        4 |
| Pericles Comidas clásicas            | Escargots de Bourgogne           |       60 |
| Princesa Isabel Vinhoss              | Camembert Pierrot                |       30 |
| Que Delícia                          | Sirop d'érable                   |       25 |
| Queen Cozinha                        | Tarte au sucre                   |       24 |
| QUICK-Stop                           | Vegie-spread                     |        6 |
| Rancho grande                        | Wimmers gute Semmelknödel        |       40 |
| Rattlesnake Canyon Grocery           | Louisiana Fiery Hot Pepper Sauce |       24 |
| Reggiani Caseifici                   | Louisiana Hot Spiced Okra        |       24 |
| Ricardo Adocicados                   | Laughing Lumberjack Lager        |       15 |
| Richter Supermarkt                   | Scottish Longbreads              |       20 |
| Romero y tomillo                     | Gudbrandsdalsost                 |       60 |
| Santé Gourmet                        | Outback Lager                    |       33 |
| Save-a-lot Markets                   | Fløtemysost                      |       20 |
| Seven Seas Imports                   | Mozzarella di Giovanni           |        7 |
| Simons bistro                        | Röd Kaviar                       |       12 |
| Spécialités du monde                 | Longlife Tofu                    |        6 |
| Split Rail Beer & Ale                | Rhönbräu Klosterbier             |       15 |
| Suprêmes délices                     | Lakkalikööri                     |       10 |
| The Big Cheese                       | Original Frankfurter grüne Soße  |       20 |
+--------------------------------------+----------------------------------+----------+
 */
