# SQL RIGHT JOIN Keyword

# The RIGHT JOIN keyword returns all records from the right table (table2),
# and the matching records from the left table (table1). The result is 0 records
# from the left side, if there is no match.
#
# RIGHT JOIN Syntax
# SELECT column_name(s)
# FROM table1
# RIGHT JOIN table2
# ON table1.column_name = table2.column_name;


use personal_database;


SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees
ON Orders.ProductID = Employees.EmployeeID
ORDER BY Orders.OrderID;
/*
+---------+-----------+-----------+
| OrderID | LastName  | FirstName |
+---------+-----------+-----------+
|    NULL | Callahan  | Laura     |
|   10258 | Buchanan  | Steven    |
|   10258 | Fuller    | Andrew    |
|   10262 | King      | Robert    |
|   10262 | Buchanan  | Steven    |
|   10264 | Fuller    | Andrew    |
|   10273 | West      | Adam      |
|   10276 | West      | Adam      |
|   10285 | Davolio   | Nancy     |
|   10289 | Leverling | Janet     |
|   10290 | Buchanan  | Steven    |
|   10294 | Davolio   | Nancy     |
|   10298 | Fuller    | Andrew    |
|   10306 | West      | Adam      |
|   10306 | Davolio   | Nancy     |
|   10311 | Peacock   | Margaret  |
|   10317 | West      | Adam      |
|   10318 | Fuller    | Andrew    |
|   10320 | West      | Adam      |
|   10326 | Davolio   | Nancy     |
|   10327 | West      | Adam      |
|   10329 | Buchanan  | Steven    |
|   10329 | Fuller    | Andrew    |
|   10339 | Leverling | Janet     |
|   10340 | West      | Adam      |
|   10341 | Fuller    | Andrew    |
|   10343 | Davolio   | Nancy     |
|   10345 | Fuller    | Andrew    |
|   10349 | Davolio   | Nancy     |
|   10356 | Fuller    | Andrew    |
|   10359 | Peacock   | Margaret  |
|   10360 | West      | Adam      |
|   10362 | Dodsworth | Anne      |
|   10364 | Suyama    | Michael   |
|   10366 | Davolio   | Nancy     |
|   10368 | Fuller    | Andrew    |
|   10375 | Davolio   | Nancy     |
|   10376 | Suyama    | Michael   |
|   10377 | Dodsworth | Anne      |
|   10377 | Davolio   | Nancy     |
|   10382 | West      | Adam      |
|   10383 | Fuller    | Andrew    |
|   10386 | Peacock   | Margaret  |
|   10389 | Davolio   | Nancy     |
|   10392 | Fuller    | Andrew    |
|   10395 | Davolio   | Nancy     |
|   10400 | Fuller    | Andrew    |
|   10410 | Davolio   | Nancy     |
|   10415 | West      | Adam      |
|   10417 | Davolio   | Nancy     |
|   10420 | Davolio   | Nancy     |
+---------+-----------+-----------+
 */
