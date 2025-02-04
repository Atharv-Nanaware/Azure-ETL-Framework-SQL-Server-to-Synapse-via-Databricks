-- DROP DATABASE AdventureWorksLT2022;

-- Creating Login And Password

-- Drop user if exists
IF EXISTS (SELECT * FROM sys.database_principals WHERE name = 'atharv')
BEGIN
    DROP USER atharv;
END

-- Drop login if  exists
IF EXISTS (SELECT * FROM sys.sql_logins WHERE name = 'atharv')
BEGIN
    DROP LOGIN atharv;
END

-- Create login and user
CREATE LOGIN atharv WITH PASSWORD = '123456789';
CREATE USER atharv FOR LOGIN atharv;

USE AdventureWorksLT2022;

-- Grant read and write permissions
ALTER ROLE db_datareader ADD MEMBER atharv;
ALTER ROLE db_datawriter ADD MEMBER atharv;




