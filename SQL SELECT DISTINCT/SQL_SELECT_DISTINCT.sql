# SQL SELECT DISTINCT Statement

# SELECT DISTINCT column1, column2, ...
# FROM table_name;
# The SELECT DISTINCT statement is used to return only distinct (different) values.

# Syntax
# SELECT DISTINCT column1, column2, ...
# FROM table_name;

use personal_database;

SELECT DISTINCT Country FROM Customers;

/*
+-------------+
| Country     |
+-------------+
| Germany     |
| Mexico      |
| UK          |
| Sweden      |
| France      |
| Spain       |
| Canada      |
| Argentina   |
| Switzerland |
| Brazil      |
| Austria     |
| Italy       |
| Portugal    |
| USA         |
| Venezuela   |
| Ireland     |
| Belgium     |
| Norway      |
| Denmark     |
| Finland     |
| NULL        |
+-------------+
 */