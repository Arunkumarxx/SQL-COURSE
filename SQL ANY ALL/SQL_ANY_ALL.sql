# SQL ANY and ALL Operators

# The ANY and ALL operators allow you to perform a comparison between a single column value and a range of other values.

# The SQL ANY Operator
# The ANY operator:
# returns a boolean value as a result
# returns TRUE if ANY of the subquery values meet the condition
# ANY means that the condition will be true if the operation is true for any of the values in the range.

# ANY Syntax
# SELECT column_name(s)
# FROM table_name
# WHERE column_name operator ANY
#   (SELECT column_name
#   FROM table_name
#   WHERE condition);
# Note: The operator must be a standard comparison operator (=, <>, !=, >, >=, <, or <=).

/*
 The following SQL statement lists the ProductName if it finds ANY records in the OrderDetails
 table has Quantity equal to 10 (this will return TRUE because the Quantity column has some
 values of 10):
 */
use personal_database;

select products.ProductName from products
where ProductID = any (select ProductID from orderdetails where Quantity=10);

/*
 +----------------------------------+
| ProductName                      |
+----------------------------------+
| Chef Anton's Cajun Seasoning     |
| Konbu                            |
| Tofu                             |
| Pavlova                          |
| Teatime Chocolate Biscuits       |
| Sir Rodney's Scones              |
| Gustaf's Knäckebröd              |
| Tunnbröd                         |
| Guaraná Fantástica               |
| NuNuCa Nuß-Nougat-Creme          |
| Rössle Sauerkraut                |
| Nord-Ost Matjeshering            |
| Gorgonzola Telino                |
| Mascarpone Fabioli               |
| Sasquatch Ale                    |
| Steeleye Stout                   |
| Boston Crab Meat                 |
| Jack's New England Clam Chowder  |
| Singaporean Hokkien Fried Mee    |
| Gula Malacca                     |
| Perth Pasties                    |
| Tourtière                        |
| Pâté chinois                     |
| Ravioli Angelo                   |
| Camembert Pierrot                |
| Tarte au sucre                   |
| Wimmers gute Semmelknödel        |
| Louisiana Fiery Hot Pepper Sauce |
| Scottish Longbreads              |
| Rhönbräu Klosterbier             |
| Original Frankfurter grüne Soße  |
+----------------------------------+
 */

select products.ProductName from products
where ProductID = all(select customers.CustomerID from customers );
/*
Empty set (0.00 sec)
 */
