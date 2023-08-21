USE master;
GO
CREATE DATABASE BobShoes;
GO

-- show the entry for bobshoes in the system table
SELECT * FROM sys.databases WHERE name = 'BobShoes';

-- show the layout of the files for the database
EXEC sp_helpfile
GO

-- create schema for orders
CREATE SCHEMA Orders
    AUTHORIZATION dbo;
GO

-- create filegroups for data and logs
-- best practise is to seperate data and logs each one
-- in different file

ALTER DATABASE BobShoes
    ADD FILEGROUP BobData;

ALTER DATABASE BobShoes
    ADD FILE (
        NAME = BobData,
        FILENAME = 'X:\sideProjects\Sql\AdvancedSql\BobShoes\BobsData.mdf'
    )
    TO FILEGROUP BobData;

ALTER DATABASE BobShoes
    ADD LOG FILE (
        NAME = BobLogs,
        FILENAME = 'X:\sideProjects\Sql\AdvancedSql\BobShoes\BobsLogs.ldf'
    )