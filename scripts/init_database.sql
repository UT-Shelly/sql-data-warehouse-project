/*
====================================================
Create Database and Schemas 
====================================================
Script Purpose: 
  This script creates a new database named 'DataWarehouse' after checking if it already exists.
  If the databse exists, it is dropped and recreated. Additionally, the script sets up three schemas 
  within the datebase: 'bronze', 'silver' and 'gold'. 


WARNING:
  Running this script will drop the entire 'DataWarehouse' database if it exists.
  All data in the database will be permantly deleted. Proceed with caution
  and ensure that you have proper backups before running this script
*/

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SElect 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehoes SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehoes;
END;
GO 

-- Create the 'DataWarehouse' database 
CREATE DATABASE DataWarehoes;
GO

-- Switch to 'DataWarehoes' database
USE DataWarehouse
GO 

-- Create Schemas 
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
