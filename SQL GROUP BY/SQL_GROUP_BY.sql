#  SQL GROUP BY Statement
# The GROUP BY statement groups rows that have the same values into
# summary rows, like "find the number of customers in each country".
#
# The GROUP BY statement is often used with aggregate functions
# (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by
# one or more columns.
#
# GROUP BY Syntax
# SELECT column_name(s)
# FROM table_name
# WHERE condition
# GROUP BY column_name(s)
# ORDER BY column_name(s);

select count( customers.CustomerName) as NumberOfEmployees,customers.City
from customers group by customers.City order by count(CustomerName) desc;

/*
 +-------------------+-----------------+
| NumberOfEmployees | City            |
+-------------------+-----------------+
|                 6 | London          |
|                 5 | México D.F.     |
|                 4 | São Paulo       |
|                 3 | Buenos Aires    |
|                 3 | Rio de Janeiro  |
|                 3 | Madrid          |
|                 2 | Nantes          |
|                 2 | Lisboa          |
|                 2 | Portland        |
|                 2 | Lyon            |
|                 1 | Mannheim        |
|                 1 | Strasbourg      |
|                 1 | Marseille       |
|                 1 | Tsawassen       |
|                 1 | Bern            |
|                 1 | Aachen          |
|                 1 | Graz            |
|                 1 | Lille           |
|                 1 | Bräcke          |
|                 1 | München         |
|                 1 | Torino          |
|                 1 | Barcelona       |
|                 1 | Sevilla         |
|                 1 | Campinas        |
|                 1 | Eugene          |
|                 1 | Caracas         |
|                 1 | San Cristóbal   |
|                 1 | Elgin           |
|                 1 | Cork            |
|                 1 | Cowes           |
|                 1 | Brandenburg     |
|                 1 | Versailles      |
|                 1 | Toulouse        |
|                 1 | Vancouver       |
|                 1 | Walla Walla     |
|                 1 | Frankfurt a.M.  |
|                 1 | San Francisco   |
|                 1 | Barquisimeto    |
|                 1 | I. de Margarita |
|                 1 | Berlin          |
|                 1 | Bergamo         |
|                 1 | Bruxelles       |
|                 1 | Montréal        |
|                 1 | Leipzig         |
|                 1 | Anchorage       |
|                 1 | Köln            |
|                 1 | Paris           |
|                 1 | Salzburg        |
|                 1 | Cunewalde       |
|                 1 | Albuquerque     |
|                 1 | Reggio Emilia   |
|                 1 | Genève          |
|                 1 | Stavern         |
|                 1 | Boise           |
|                 1 | København       |
|                 1 | Luleå           |
|                 1 | Lander          |
|                 1 | Charleroi       |
|                 1 | Butte           |
|                 1 | Münster         |
|                 1 | Kirkland        |
|                 1 | Århus           |
|                 1 | Reims           |
|                 1 | Stuttgart       |
|                 1 | Oulu            |
|                 1 | Resende         |
|                 1 | Seattle         |
|                 1 | Helsinki        |
|                 1 | Walla           |
+-------------------+-----------------+
 */

# now count the total customers from differecnt country
#usign group by clause

select count(customers.CustomerID) as TotalCustomer,customers.City
from customers
group by  City
order by count(customers.CustomerID)asc;
/*
+---------------+-----------------+
| TotalCustomer | City            |
+---------------+-----------------+
|             1 | Berlin          |
|             1 | Århus           |
|             1 | Reims           |
|             1 | Luleå           |
|             1 | Mannheim        |
|             1 | Strasbourg      |
|             1 | Stuttgart       |
|             1 | Marseille       |
|             1 | Tsawassen       |
|             1 | Oulu            |
|             1 | Bern            |
|             1 | Resende         |
|             1 | Aachen          |
|             1 | Seattle         |
|             1 | Graz            |
|             1 | Lille           |
|             1 | Bräcke          |
|             1 | München         |
|             1 | Torino          |
|             1 | Helsinki        |
|             1 | Barcelona       |
|             1 | Sevilla         |
|             1 | Campinas        |
|             1 | Eugene          |
|             1 | Caracas         |
|             1 | Walla           |
|             1 | San Cristóbal   |
|             1 | Elgin           |
|             1 | Cork            |
|             1 | Cowes           |
|             1 | Brandenburg     |
|             1 | Versailles      |
|             1 | Toulouse        |
|             1 | Vancouver       |
|             1 | Walla Walla     |
|             1 | Frankfurt a.M.  |
|             1 | San Francisco   |
|             1 | Barquisimeto    |
|             1 | I. de Margarita |
|             1 | Bergamo         |
|             1 | Bruxelles       |
|             1 | Montréal        |
|             1 | Leipzig         |
|             1 | Anchorage       |
|             1 | Köln            |
|             1 | Paris           |
|             1 | Salzburg        |
|             1 | Cunewalde       |
|             1 | Albuquerque     |
|             1 | Reggio Emilia   |
|             1 | Genève          |
|             1 | Stavern         |
|             1 | Boise           |
|             1 | København       |
|             1 | Lander          |
|             1 | Charleroi       |
|             1 | Butte           |
|             1 | Münster         |
|             1 | Kirkland        |
|             2 | Nantes          |
|             2 | Lisboa          |
|             2 | Lyon            |
|             2 | Portland        |
|             3 | Madrid          |
|             3 | Buenos Aires    |
|             3 | Rio de Janeiro  |
|             4 | São Paulo       |
|             5 | México D.F.     |
|             6 | London          |
+---------------+-----------------+
 */

