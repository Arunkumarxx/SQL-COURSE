# SQL AUTO INCREMENT Field

# AUTO INCREMENT Field
# Auto-increment allows a unique number to be generated
# automatically when a new record is inserted into a table.

# Often this is the primary key field that we would like to
# be created automatically every time a new record is inserted.

/*
 CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    ...
);
 */

create table temp
(
    id  int auto_increment primary key ,
    UserName varchar(255)
);
insert into temp values(1,'Arun');
/*
 +----+----------+
| id | UserName |
+----+----------+
|  1 | Arun     |
+----+----------+
 */
insert into temp (UserName) values('siva'),('prakash');

/*
+----+----------+
| id | UserName |
+----+----------+
|  1 | Arun     |
|  2 | siva     |
|  3 | prakash  |
+----+----------+
 */
select *
from temp;


