-- show the collations config on the instance
SELECT SERVERPROPERTY('collation') AS DefaultInstanceCollationName;

-- show the collations config on the db
SELECT DATABASEPROPERTYEX(DB_NAME(), 'collation') AS DataBaseCollationName;

-- show collation for each column in order tracking table
SELECT name AS ColumnName, collation_name AS ColumnCollation
    FROM sys.columns
    WHERE object_id = OBJECT_ID(N'Orders.OrderTracking');

-- show the descriptor of the collation
SELECT name, description
    FROM sys.fn_helpcollations()
    WHERE name = N'SQL_Latin1_General_CP1_CI_AS'

-- show the descriptor of the NON Latin collation
SELECT name, description
    FROM sys.fn_helpcollations()
    WHERE name LIKE N'SQL_%' AND name NOT LIKE N'SQL_Latin%';

-- change customer column to a Scandinavian collation

ALTER TABLE Orders.OrderTracking
    ALTER COLUMN CustName NVARCHAR(200)
    COLLATE SQL_Scandinavian_CP850_CI_AS
    NOT NULL;