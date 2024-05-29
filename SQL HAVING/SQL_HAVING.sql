# The SQL HAVING Clause
# The HAVING clause was added to SQL because
# the WHERE keyword cannot be used with aggregate functions.

# HAVING Syntax
# SELECT column_name(s)
# FROM table_name
# WHERE condition
# GROUP BY column_name(s)
# HAVING condition
# ORDER BY column_name(s);


use personal_database;

SELECT count(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING count(CustomerID) > 5;

/*
 +-------------------+---------+
| count(CustomerID) | Country |
+-------------------+---------+
|                11 | Germany |
|                 7 | UK      |
|                11 | France  |
|                 9 | Brazil  |
|                13 | USA     |
+-------------------+---------+
 */

use sakila;

select  count(payment.customer_id),payment.amount
from payment
group by payment.amount
having payment.amount
order by count(payment.amount) desc;

/*
 +----------------------------+--------+
| count(payment.customer_id) | amount |
+----------------------------+--------+
|                        359 |   2.99 |
|                        343 |   4.99 |
|                        273 |   0.99 |
|                        122 |   5.99 |
|                         98 |   6.99 |
|                         92 |   3.99 |
|                         66 |   7.99 |
|                         55 |   1.99 |
|                         41 |   8.99 |
|                         32 |   9.99 |
|                          9 |  10.99 |
|                          2 |   3.98 |
|                          1 |  11.99 |
|                          1 |   5.98 |
|                          1 |   7.98 |
+----------------------------+--------+

 */

