-- Numeric Data Types
-- INT: A standard integer.
-- TINYINT: A small integer.
-- SMALLINT: A small integer.
-- MEDIUMINT: A medium-sized integer.
-- BIGINT: A large integer.
-- DECIMAL: A fixed-point number with a specified precision and scale.
-- NUMERIC: A synonym for DECIMAL.
-- FLOAT: A single-precision floating-point number.
-- DOUBLE: A double-precision floating-point number.

-- Date and Time Data Types
-- DATE: Stores date values (year, month, day).
-- TIME: Stores time values (hours, minutes, seconds).
-- DATETIME: Stores date and time values.
-- TIMESTAMP: Stores timestamp values, typically for tracking changes.
-- YEAR: Stores year values.

-- String (Character) Data Types
-- CHAR: Fixed-length character string.
-- VARCHAR: Variable-length character string.
-- BINARY: Fixed-length binary data.
-- VARBINARY: Variable-length binary data.
-- TINYBLOB: A tiny BLOB (Binary Large Object).
-- BLOB: Binary Large Object for storing large binary data.
-- MEDIUMBLOB: A medium-sized BLOB.
-- LONGBLOB: A large BLOB.
-- TINYTEXT: A tiny TEXT field for storing small strings.
-- TEXT: A TEXT field for storing large strings.
-- MEDIUMTEXT: A medium-sized TEXT field.
-- LONGTEXT: A large TEXT field.

-- Spatial Data Types
-- GEOMETRY: Stores geometric values.
-- POINT: Represents a point in space.
-- LINESTRING: Represents a line.
-- POLYGON: Represents a polygon.
-- MULTIPOINT: Represents multiple points.
-- MULTILINESTRING: Represents multiple lines.
-- MULTIPOLYGON: Represents multiple polygons.
-- GEOMETRYCOLLECTION: Represents a collection of geometric objects.

-- JSON Data Type
-- JSON: Stores JSON-formatted data.

CREATE TABLE DataTypes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    small_number TINYINT,
    large_number BIGINT,
    decimal_number DECIMAL(10, 2),
    float_number FLOAT,
    double_number DOUBLE,
    date_column DATE,
    time_column TIME,
    datetime_column DATETIME,
    timestamp_column TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    year_column YEAR,
    char_column CHAR(10),
    varchar_column VARCHAR(255),
    text_column TEXT,
    tinytext_column TINYTEXT,
    mediumtext_column MEDIUMTEXT,
    longtext_column LONGTEXT,
    binary_column BINARY(16),
    varbinary_column VARBINARY(255),
    blob_column BLOB,
    point_column POINT,
    linestring_column LINESTRING,
    json_column JSON
);


INSERT INTO DataTypes (
    small_number, large_number, decimal_number, float_number, double_number,
    date_column, time_column, datetime_column, year_column,
    char_column, varchar_column, text_column,
    binary_column, varbinary_column, blob_column,
    point_column, linestring_column, json_column
) VALUES (
    1, 2345678, 12345.67, 123.45, 6789.01,
    '2023-06-01', '12:34:56', '2023-06-01 12:34:56', 2023,
    'char data', 'varchar data', 'This is a text column data.',
    X'62696E6172792064617461', X'76617262696E6172792064617461', X'626C6F622064617461',
    POINT(1, 1), LINESTRING(1, 1, 2, 2, 3, 3),
    '{"key": "value"}'
);
