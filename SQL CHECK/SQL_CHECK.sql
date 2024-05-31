# SQL CHECK Constraint
# The CHECK constraint is used to limit the value range that can be placed in a column.

# If you define a CHECK constraint on a column it will allow only certain values for this column.

# If you define a CHECK constraint on a table it can limit the values in certain columns based on values in other columns in the row.

# SQL CHECK on CREATE TABLE
# The following SQL creates a CHECK constraint on the "Age" column when the "Persons"
# table is created. The CHECK constraint ensures that the age of a person must be 18, or older:

create table temp (
    id int ,
    Name varchar(255),
    constraint ones check ( id>10 )
);

insert into temp values(11,'Arun');
/*
 [2024-06-01 00:01:11] completed in 22 ms
personal_database> insert into temp values(1,'Arun')
[2024-06-01 00:01:14] [HY000][3819] Check constraint 'temp_chk_1' is violated.
personal_database> insert into temp values(11,'Arun')
[2024-06-01 00:01:22] 1 row affected in 3 ms
 */
 alter table temp
 add constraint  IsValid
 check (id>=10);

insert into temp values(1,'ss');

alter table temp
drop constraint ones;