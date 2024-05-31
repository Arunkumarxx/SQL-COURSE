# SQL UNIQUE Constraint
# The UNIQUE constraint ensures that all
# values in a column are different.

# Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for
# uniqueness for a column or set of columns.

# A PRIMARY KEY constraint automatically has a UNIQUE constraint.

# However, you can have many UNIQUE constraints per table, but only
# one PRIMARY KEY constraint per table.

use personal_database;

create table People
(
    id int  ,
    userName varchar(255) unique not null
, primary key (id),
    unique  (userName,id)
);
insert into personal_database.people values (1,'arun');

select * from people;
/*
 +----+----------+
| id | userName |
+----+----------+
|  1 | arun     |
+----+----------+
 */
 alter table customers
 drop primary key ;

