#    A foreign key is a column or a set of columns
#     in one table that references the primary key or a unique key in another table.
#     It establishes a relationship between two tables, known as the parent table and the child table.
#     This relationship is used to enforce referential integrity,
#     ensuring that data in the child table always points to valid data in the parent table.

CREATE TABLE ComputerScienceStudentsList (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(255),
    DateOfBirth DATE
);

-- Insert sample records
INSERT INTO ComputerScienceStudentsList (StudentID, Name, DateOfBirth) VALUES
(1, 'John Doe', '2000-05-15'),
(2, 'Jane Smith', '1999-10-20'),
(3, 'Michael Johnson', '2001-02-28'),
(4, 'Emily Brown', '2000-08-10');

select *from computersciencestudentslist;
/*
 +-----------+-----------------+-------------+
| StudentID | Name            | DateOfBirth |
+-----------+-----------------+-------------+
|         1 | John Doe        | 2000-05-15  |
|         2 | Jane Smith      | 1999-10-20  |
|         3 | Michael Johnson | 2001-02-28  |
|         4 | Emily Brown     | 2000-08-10  |
+-----------+-----------------+-------------+
 */

create table AttendanceList (
    StudentID int primary key ,
    Name varchar(255),
    TotalDaysPresent int
);

-- Insert sample records into AttendanceList
INSERT INTO AttendanceList (StudentID, Name, TotalDaysPresent) VALUES
(1, 'John Doe', 180),
(2, 'Jane Smith', 175),
(3, 'Michael Johnson', 190),
(4, 'Emily Brown', 185);
# this works fine what if add one more row it will not work let see!

alter table attendancelist
add constraint foreign key (StudentID) references computersciencestudentslist(StudentID);
    insert into attendancelist value (7, 'Chris Green', 32);


# if do that show student ID in computer science child table cannot
# add more value and as well they should same value present in parent otherwise nope it will not add
# foriegn key will be use full if have student list of size n some one don't want to add fake n+1,n+3 or some thing like this if might helpfull
