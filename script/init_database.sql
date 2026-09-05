##
##Create Database and Schemas
##########################################################33
# purpose:
 the purpose of the script is to creating a new data base DataWarehouse,
  first drop database if it exists and then recreate it 
# warning :
  if database already exist and we run drop commond , entire database will be drop, so be carefull !

########################################
USE master;
GO

---------- Drop and recreate the DataWarehouse database ----------
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

----------- Create the DataWarehouse database--------------
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

------ Create Schemas ---------
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
