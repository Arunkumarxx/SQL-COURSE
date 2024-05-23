-- SQL COUNT() Function

-- The COUNT() function returns the number of rows that matches a specified criterion.

use personal_database;

select count(*) from customers;
/*
 +----------+
| count(*) |
+----------+
|       91 |
+----------+
 */

#now check for deleted rows
select count(Price)
from products;
/*
 +--------------+
| count(Price) |
+--------------+
|           77 |
+--------------+
 */
delete from products
where Price> 50;
/*
 +----------+
| count(*) |
+----------+
|       70 |
+----------+
 */
select count(Price) from products;

select  count(Price) from products
where Price between 10 and 50;
/*
 +--------------+
| count(Price) |
+--------------+
|           29 |
+--------------+
 */
