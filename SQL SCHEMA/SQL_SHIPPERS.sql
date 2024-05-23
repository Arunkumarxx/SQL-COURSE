CREATE TABLE Shippers (
    ShipperID INT PRIMARY KEY,
    ShipperName VARCHAR(255),
    Phone VARCHAR(255)
);

INSERT INTO Shippers (ShipperID, ShipperName, Phone) VALUES
(1, 'Speedy Express', '(503) 555-9831'),
(2, 'United Package', '(503) 555-3199'),
(3, 'Federal Shipping', '(503) 555-9931');

select * from shippers;

/*
 +-----------+------------------+----------------+
| ShipperID | ShipperName      | Phone          |
+-----------+------------------+----------------+
|         1 | Speedy Express   | (503) 555-9831 |
|         2 | United Package   | (503) 555-3199 |
|         3 | Federal Shipping | (503) 555-9931 |
+-----------+------------------+----------------+
 */