# SQL DEFAULT Constraint
# The DEFAULT constraint is used to set a default value for a column.

# The default value will be added to all new records, if no other value is specified.

# SQL DEFAULT on CREATE TABLE
# The following SQL sets a DEFAULT value for the "City"
# column when the "Persons" table is created:


use personal_database;

CREATE TABLE ComputerScienceStudentsList (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(255),
    DateOfBirth date
);

-- Insert sample records
INSERT INTO ComputerScienceStudentsList (StudentID, Name, DateOfBirth) VALUES
(1, 'John Doe', '2000-05-15'),
(2, 'Jane Smith', '1999-10-20'),
(3, 'Michael Johnson', '2001-02-28'),
(4, 'Emily Brown', '2000-08-10');

insert into computersciencestudentslist(studentid, name) value(5,'arun');


alter table computersciencestudentslist
alter column  DateOfBirth set default (current_date);
select *
from computersciencestudentslist;
insert into computersciencestudentslist(studentid, name) value(8,'arun');

alter table computersciencestudentslist
alter DateOfBirth drop default ;
/*
 [2024-06-01 00:33:06] 5 rows retrieved starting from 1 in 18 ms (execution: 3 ms, fetching: 15 ms)
personal_database> select *
                   from computersciencestudentslist
[2024-06-01 00:33:07] 5 rows retrieved starting from 1 in 11 ms (execution: 2 ms, fetching: 9 ms)
personal_database> select *
                   from computersciencestudentslist
[2024-06-01 00:33:07] 5 rows retrieved starting from 1 in 10 ms (execution: 3 ms, fetching: 7 ms)
personal_database> select *
                   from computersciencestudentslist
[2024-06-01 00:33:07] 5 rows retrieved starting from 1 in 9 ms (execution: 2 ms, fetching: 7 ms)
personal_database> insert into computersciencestudentslist(studentid, name) value(8,'arun')
[2024-06-01 00:33:24] 1 row affected in 3 ms
personal_database> select *
                   from computersciencestudentslist
[2024-06-01 00:33:26] 6 rows retrieved starting from 1 in 17 ms (execution: 3 ms, fetching: 14 ms)
personal_database> select *
                   from computersciencestudentslist
[2024-06-01 00:33:27] 6 rows retrieved starting from 1 in 8 ms (execution: 1 ms, fetching: 7 ms)
personal_database> alter table computersciencestudentslist
                   alter DateOfBirth drop default
[2024-06-01 00:39:01] completed in 7 ms
 */

