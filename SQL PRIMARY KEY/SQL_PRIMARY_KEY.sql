﻿# SQL PRIMARY KEY Constraint
# The PRIMARY KEY constraint uniquely identifies each record in a table.

# Primary keys must contain UNIQUE values, and cannot contain NULL values.

# A table can have only ONE primary key; and in the table,
# this primary key can consist of single or multiple columns (fields).

# SQL PRIMARY KEY on CREATE TABLE
# The following SQL creates a PRIMARY KEY on the "ID" column when the
# "Persons" table is created:

# MySQL:

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);

CREATE TABLE Persons (
    ID int NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);
# To allow naming of a PRIMARY KEY constraint, and for defining a PRIMARY
# KEY constraint on multiple columns, use the following SQL syntax:

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT PK_Person PRIMARY KEY (ID,LastName)
);

# Note: In the example above there is only ONE PRIMARY KEY (PK_Person). However, the VALUE of the primary key is made up of TWO COLUMNS (ID + LastName).
# SQL PRIMARY KEY on ALTER TABLE
# To create a PRIMARY KEY constraint on the "ID" column when the table is already created, use the following SQL:
#
# MySQL / SQL Server / Oracle / MS Access:

ALTER TABLE Persons
ADD PRIMARY KEY (ID);