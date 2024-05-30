# The SQL DROP TABLE Statement
# The DROP TABLE statement is used to drop an existing table in a database.

# Syntax
# DROP TABLE table_name;
# Note: Be careful before dropping a table. Deleting a table will result in loss of complete information stored in the table!

# SQL DROP TABLE Example
# The following SQL statement drops the existing table "Shippers":

select * from tabletemp;
/*
 +--------+-----------+-------------+----------+
| UserId | UserName  | userPurpose | userFrom |
+--------+-----------+-------------+----------+
|      1 | Arunkumar | DataHosting | India    |
+--------+-----------+-------------+----------+
 */

drop table tabletemp;
/*
 personal_database> drop table tabletemp
> completed in 3 ms
 */
# now again created table and inserted values now let's try new statement truncate


# SQL TRUNCATE TABLE
# The TRUNCATE TABLE statement is used to delete the data inside a table, but not the table itself.
#
# Syntax
# TRUNCATE TABLE table_name;

select distinct * from tabletemp;
/*
  +--------+-----------+-------------+----------+
| UserId | UserName  | userPurpose | userFrom |
+--------+-----------+-------------+----------+
|      1 | Arunkumar | DataHosting | India    |
+--------+-----------+-------------+----------+
 */
truncate table tabletemp;

 /*
 personal_database> truncate table tabletemp
 > completed in 22 ms
 */
select * from tabletemp; # now table is empty