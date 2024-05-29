# The SQL UNION Operator
# The UNION operator is used to combine the result-set of
# two or more SELECT statements.
#
# Every SELECT statement within UNION must have the same number of columns
# The columns must also have similar data types
# The columns in every SELECT statement must also be in the same order
# UNION Syntax
# SELECT column_name(s) FROM table1
# UNION
# SELECT column_name(s) FROM table2;

select customers.City
from customers

union

select suppliers.City
from suppliers;

/*
 +-----------------+
| City            |
+-----------------+
| Berlin          |
| México D.F.     |
| London          |
| Luleå           |
| Mannheim        |
| Strasbourg      |
| Madrid          |
| Marseille       |
| Tsawassen       |
| Buenos Aires    |
| Bern            |
| São Paulo       |
| Aachen          |
| Nantes          |
| Graz            |
| Lille           |
| Bräcke          |
| München         |
| Torino          |
| Lisboa          |
| Barcelona       |
| Sevilla         |
| Campinas        |
| Eugene          |
| Caracas         |
| Rio de Janeiro  |
| San Cristóbal   |
| Elgin           |
| Cork            |
| Cowes           |
| Brandenburg     |
| Versailles      |
| Toulouse        |
| Vancouver       |
| Walla Walla     |
| Frankfurt a.M.  |
| San Francisco   |
| Barquisimeto    |
| I. de Margarita |
| Portland        |
| Bergamo         |
| Bruxelles       |
| Montréal        |
| Leipzig         |
| Anchorage       |
| Köln            |
| Paris           |
| Salzburg        |
| Cunewalde       |
| Albuquerque     |
| Reggio Emilia   |
| Genève          |
| Stavern         |
| Boise           |
| København       |
| Lyon            |
| Lander          |
| Charleroi       |
| Butte           |
| Münster         |
| Kirkland        |
| Århus           |
| Reims           |
| Stuttgart       |
| Oulu            |
| Resende         |
| Seattle         |
| Helsinki        |
| Walla           |
| Londona         |
| New Orleans     |
| Ann Arbor       |
| Tokyo           |
| Oviedo          |
| Osaka           |
| Melbourne       |
| Manchester      |
| Göteborg        |
| Frankfurt       |
| Cuxhaven        |
| Ravenna         |
| Sandvika        |
| Bend            |
| Stockholm       |
| Boston          |
| Singapore       |
| Lyngby          |
| Zaandam         |
| Lappeenranta    |
| Sydney          |
| Salerno         |
| Montceau        |
| Annecy          |
+-----------------+
 */
# SQL UNION ALL Example
# The following SQL statement returns
# the cities (duplicate values also) from both the "Customers" and the "Suppliers" table:
select City
from suppliers
union all

select City
from customers

order by City;
/*
 +-----------------+
| City            |
+-----------------+
| Aachen          |
| Albuquerque     |
| Anchorage       |
| Ann Arbor       |
| Annecy          |
| Århus           |
| Barcelona       |
| Barquisimeto    |
| Bend            |
| Bergamo         |
| Berlin          |
| Berlin          |
| Bern            |
| Boise           |
| Boston          |
| Bräcke          |
| Brandenburg     |
| Bruxelles       |
| Buenos Aires    |
| Buenos Aires    |
| Buenos Aires    |
| Butte           |
| Campinas        |
| Caracas         |
| Charleroi       |
| Cork            |
| Cowes           |
| Cunewalde       |
| Cuxhaven        |
| Elgin           |
| Eugene          |
| Frankfurt       |
| Frankfurt a.M.  |
| Genève          |
| Göteborg        |
| Graz            |
| Helsinki        |
| I. de Margarita |
| Kirkland        |
| København       |
| Köln            |
| Lander          |
| Lappeenranta    |
| Leipzig         |
| Lille           |
| Lisboa          |
| Lisboa          |
| London          |
| London          |
| London          |
| London          |
| London          |
| London          |
| Londona         |
| Luleå           |
| Lyngby          |
| Lyon            |
| Lyon            |
| Madrid          |
| Madrid          |
| Madrid          |
| Manchester      |
| Mannheim        |
| Marseille       |
| Melbourne       |
| México D.F.     |
| México D.F.     |
| México D.F.     |
| México D.F.     |
| México D.F.     |
| Montceau        |
| Montréal        |
| Montréal        |
| München         |
| Münster         |
| Nantes          |
| Nantes          |
| New Orleans     |
| Osaka           |
| Oulu            |
| Oviedo          |
| Paris           |
| Paris           |
| Portland        |
| Portland        |
| Ravenna         |
| Reggio Emilia   |
| Reims           |
| Resende         |
| Rio de Janeiro  |
| Rio de Janeiro  |
| Rio de Janeiro  |
| Salerno         |
| Salzburg        |
| San Cristóbal   |
| San Francisco   |
| Sandvika        |
| São Paulo       |
| São Paulo       |
| São Paulo       |
| São Paulo       |
| São Paulo       |
| Seattle         |
| Sevilla         |
| Singapore       |
| Stavern         |
| Stockholm       |
| Strasbourg      |
| Stuttgart       |
| Sydney          |
| Tokyo           |
| Torino          |
| Toulouse        |
| Tsawassen       |
| Vancouver       |
| Versailles      |
| Walla           |
| Walla Walla     |
| Zaandam         |
+-----------------+
 */

# SQL UNION With WHERE
# The following SQL statement returns the German cities
# (only distinct values) from both the "Customers" and the "Suppliers" table:

select City
from suppliers
union all

select City
from customers
where City not like 'lon%' and city not like 'mexico%'
order by City;

/*
 +-----------------+
| City            |
+-----------------+
| Aachen          |
| Albuquerque     |
| Anchorage       |
| Ann Arbor       |
| Annecy          |
| Århus           |
| Barcelona       |
| Barquisimeto    |
| Bend            |
| Bergamo         |
| Berlin          |
| Berlin          |
| Bern            |
| Boise           |
| Boston          |
| Bräcke          |
| Brandenburg     |
| Bruxelles       |
| Buenos Aires    |
| Buenos Aires    |
| Buenos Aires    |
| Butte           |
| Campinas        |
| Caracas         |
| Charleroi       |
| Cork            |
| Cowes           |
| Cunewalde       |
| Cuxhaven        |
| Elgin           |
| Eugene          |
| Frankfurt       |
| Frankfurt a.M.  |
| Genève          |
| Göteborg        |
| Graz            |
| Helsinki        |
| I. de Margarita |
| Kirkland        |
| København       |
| Köln            |
| Lander          |
| Lappeenranta    |
| Leipzig         |
| Lille           |
| Lisboa          |
| Lisboa          |
| Londona         |
| Luleå           |
| Lyngby          |
| Lyon            |
| Lyon            |
| Madrid          |
| Madrid          |
| Madrid          |
| Manchester      |
| Mannheim        |
| Marseille       |
| Melbourne       |
| Montceau        |
| Montréal        |
| Montréal        |
| München         |
| Münster         |
| Nantes          |
| Nantes          |
| New Orleans     |
| Osaka           |
| Oulu            |
| Oviedo          |
| Paris           |
| Paris           |
| Portland        |
| Portland        |
| Ravenna         |
| Reggio Emilia   |
| Reims           |
| Resende         |
| Rio de Janeiro  |
| Rio de Janeiro  |
| Rio de Janeiro  |
| Salerno         |
| Salzburg        |
| San Cristóbal   |
| San Francisco   |
| Sandvika        |
| São Paulo       |
| São Paulo       |
| São Paulo       |
| São Paulo       |
| São Paulo       |
| Seattle         |
| Sevilla         |
| Singapore       |
| Stavern         |
| Stockholm       |
| Strasbourg      |
| Stuttgart       |
| Sydney          |
| Tokyo           |
| Torino          |
| Toulouse        |
| Tsawassen       |
| Vancouver       |
| Versailles      |
| Walla           |
| Walla Walla     |
| Zaandam         |
+-----------------+
 */

select 'customers' as Type ,city
from customers
union
select 'suppilers' ,suppliers.City
from suppliers ;

/*
 +-----------+-----------------+
| Type      | city            |
+-----------+-----------------+
| customers | Berlin          |
| customers | México D.F.     |
| customers | London          |
| customers | Luleå           |
| customers | Mannheim        |
| customers | Strasbourg      |
| customers | Madrid          |
| customers | Marseille       |
| customers | Tsawassen       |
| customers | Buenos Aires    |
| customers | Bern            |
| customers | São Paulo       |
| customers | Aachen          |
| customers | Nantes          |
| customers | Graz            |
| customers | Lille           |
| customers | Bräcke          |
| customers | München         |
| customers | Torino          |
| customers | Lisboa          |
| customers | Barcelona       |
| customers | Sevilla         |
| customers | Campinas        |
| customers | Eugene          |
| customers | Caracas         |
| customers | Rio de Janeiro  |
| customers | San Cristóbal   |
| customers | Elgin           |
| customers | Cork            |
| customers | Cowes           |
| customers | Brandenburg     |
| customers | Versailles      |
| customers | Toulouse        |
| customers | Vancouver       |
| customers | Walla Walla     |
| customers | Frankfurt a.M.  |
| customers | San Francisco   |
| customers | Barquisimeto    |
| customers | I. de Margarita |
| customers | Portland        |
| customers | Bergamo         |
| customers | Bruxelles       |
| customers | Montréal        |
| customers | Leipzig         |
| customers | Anchorage       |
| customers | Köln            |
| customers | Paris           |
| customers | Salzburg        |
| customers | Cunewalde       |
| customers | Albuquerque     |
| customers | Reggio Emilia   |
| customers | Genève          |
| customers | Stavern         |
| customers | Boise           |
| customers | København       |
| customers | Lyon            |
| customers | Lander          |
| customers | Charleroi       |
| customers | Butte           |
| customers | Münster         |
| customers | Kirkland        |
| customers | Århus           |
| customers | Reims           |
| customers | Stuttgart       |
| customers | Oulu            |
| customers | Resende         |
| customers | Seattle         |
| customers | Helsinki        |
| customers | Walla           |
| suppilers | Londona         |
| suppilers | New Orleans     |
| suppilers | Ann Arbor       |
| suppilers | Tokyo           |
| suppilers | Oviedo          |
| suppilers | Osaka           |
| suppilers | Melbourne       |
| suppilers | Manchester      |
| suppilers | Göteborg        |
| suppilers | São Paulo       |
| suppilers | Berlin          |
| suppilers | Frankfurt       |
| suppilers | Cuxhaven        |
| suppilers | Ravenna         |
| suppilers | Sandvika        |
| suppilers | Bend            |
| suppilers | Stockholm       |
| suppilers | Paris           |
| suppilers | Boston          |
| suppilers | Singapore       |
| suppilers | Lyngby          |
| suppilers | Zaandam         |
| suppilers | Lappeenranta    |
| suppilers | Sydney          |
| suppilers | Montréal        |
| suppilers | Salerno         |
| suppilers | Montceau        |
| suppilers | Annecy          |
+-----------+-----------------+
 */

select City as Type
from customers
union
select City from suppliers;

/*
 +-----------------+
| Type            |
+-----------------+
| Berlin          |
| México D.F.     |
| London          |
| Luleå           |
| Mannheim        |
| Strasbourg      |
| Madrid          |
| Marseille       |
| Tsawassen       |
| Buenos Aires    |
| Bern            |
| São Paulo       |
| Aachen          |
| Nantes          |
| Graz            |
| Lille           |
| Bräcke          |
| München         |
| Torino          |
| Lisboa          |
| Barcelona       |
| Sevilla         |
| Campinas        |
| Eugene          |
| Caracas         |
| Rio de Janeiro  |
| San Cristóbal   |
| Elgin           |
| Cork            |
| Cowes           |
| Brandenburg     |
| Versailles      |
| Toulouse        |
| Vancouver       |
| Walla Walla     |
| Frankfurt a.M.  |
| San Francisco   |
| Barquisimeto    |
| I. de Margarita |
| Portland        |
| Bergamo         |
| Bruxelles       |
| Montréal        |
| Leipzig         |
| Anchorage       |
| Köln            |
| Paris           |
| Salzburg        |
| Cunewalde       |
| Albuquerque     |
| Reggio Emilia   |
| Genève          |
| Stavern         |
| Boise           |
| København       |
| Lyon            |
| Lander          |
| Charleroi       |
| Butte           |
| Münster         |
| Kirkland        |
| Århus           |
| Reims           |
| Stuttgart       |
| Oulu            |
| Resende         |
| Seattle         |
| Helsinki        |
| Walla           |
| Londona         |
| New Orleans     |
| Ann Arbor       |
| Tokyo           |
| Oviedo          |
| Osaka           |
| Melbourne       |
| Manchester      |
| Göteborg        |
| Frankfurt       |
| Cuxhaven        |
| Ravenna         |
| Sandvika        |
| Bend            |
| Stockholm       |
| Boston          |
| Singapore       |
| Lyngby          |
| Zaandam         |
| Lappeenranta    |
| Sydney          |
| Salerno         |
| Montceau        |
| Annecy          |
+-----------------+
 */
