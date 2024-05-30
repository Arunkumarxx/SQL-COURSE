# SQL ALTER TABLE Statement
# The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.

# The ALTER TABLE statement is also used to add and drop various constraints on an existing table.

# ALTER TABLE - ADD Column
# To add a column in a table, use the following syntax:

# ALTER TABLE table_name
# ADD column_name datatype;

alter table customers
add bloodGroup varchar(255);
select CustomerID,CustomerName,City,ifnull(bloodGroup,'none') as BloodType from customers where CustomerID between 1 and 5;
/*
 +------------+-------------------------+-------------+-----------+
| CustomerID | CustomerName            | City        | BloodType |
+------------+-------------------------+-------------+-----------+
|          1 | Alfreds Futterkiste     | Berlin      | none      |
|          2 | NULL                    | México D.F. | none      |
|          3 | Antonio Moreno Taquería | México D.F. | none      |
|          4 | Around the Horn         | London      | none      |
|          5 | Berglunds snabbköp      | Luleå       | none      |
+------------+-------------------------+-------------+-----------+
 */
alter table customers
drop column  bloodGroup;
/*
 mysql> alter table customers
    -> drop bloodGroup;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0
 */

 select * from customers where CustomerID between  1 and 5;
/*
 +------------+-------------------------+--------------------+-------------------------------+-------------+------------+---------+
| CustomerID | CustomerName            | ContactName        | Address                       | City        | PostalCode | Country |
+------------+-------------------------+--------------------+-------------------------------+-------------+------------+---------+
|          1 | Alfreds Futterkiste     | Maria Anders       | Obere Str. 57                 | Berlin      | 12209      | Germany |
|          2 | NULL                    | Ana Trujillo       | Avda. de la Constitución 2222 | México D.F. | 05021      | Mexico  |
|          3 | Antonio Moreno Taquería | Antonio Moreno     | Mataderos 2312                | México D.F. | 05023      | Mexico  |
|          4 | Around the Horn         | Thomas Hardy       | 120 Hanover Sq.               | London      | WA1 1DP    | UK      |
|          5 | Berglunds snabbköp      | Christina Berglund | Berguvsvägen 8                | Luleå       | S-958 22   | Sweden  |
+------------+-------------------------+--------------------+-------------------------------+-------------+------------+---------+
 */
alter table customers
rename column  PostalCode to pincode;

select * from customers where CustomerID between 1 and 10;
/*
 +------------+---------------------------+--------------------+-------------------------------+-------------+----------+---------+
| CustomerID | CustomerName              | ContactName        | Address                       | City        | pincode  | Country |
+------------+---------------------------+--------------------+-------------------------------+-------------+----------+---------+
|          1 | Alfreds Futterkiste       | Maria Anders       | Obere Str. 57                 | Berlin      | 12209    | Germany |
|          2 | NULL                      | Ana Trujillo       | Avda. de la Constitución 2222 | México D.F. | 05021    | Mexico  |
|          3 | Antonio Moreno Taquería   | Antonio Moreno     | Mataderos 2312                | México D.F. | 05023    | Mexico  |
|          4 | Around the Horn           | Thomas Hardy       | 120 Hanover Sq.               | London      | WA1 1DP  | UK      |
|          5 | Berglunds snabbköp        | Christina Berglund | Berguvsvägen 8                | Luleå       | S-958 22 | Sweden  |
|          6 | Blauer See Delikatessen   | Hanna Moos         | Forsterstr. 57                | Mannheim    | 68306    | Germany |
|          7 | Blondel père et fils      | Frédérique Citeaux | 24, place Kléber              | Strasbourg  | 67000    | France  |
|          8 | Bólido Comidas preparadas | Martín Sommer      | C/ Araquil, 67                | Madrid      | 28023    | Spain   |
|          9 | Bon app'                  | Laurence Lebihans  | 12, rue des Bouchers          | Marseille   | 13008    | France  |
|         10 | Bottom-Dollar Marketse    | Elizabeth Lincoln  | 23 Tsawassen Blvd.            | Tsawassen   | T2F 8M4  | Canada  |
+------------+---------------------------+--------------------+-------------------------------+-------------+----------+---------+
 */

ALTER TABLE customers
MODIFY COLUMN City varchar(255);
/*
 personal_database> ALTER TABLE customers
                   MODIFY COLUMN City varchar(255) completed in 8 ms
 */
