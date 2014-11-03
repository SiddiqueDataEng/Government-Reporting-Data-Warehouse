/*
 * Government Reporting Data Warehouse
 * Project #50 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: MSSQL, SSIS
 * Created: 2014
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'GovDW')
BEGIN
    ALTER DATABASE GovDW SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE GovDW;
END
GO

CREATE DATABASE GovDW
ON PRIMARY
(
    NAME = 'GovDW_Data',
    FILENAME = 'C:\SQLData\GovDW_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'GovDW_Log',
    FILENAME = 'C:\SQLData\GovDW_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE GovDW SET RECOVERY SIMPLE;
ALTER DATABASE GovDW SET AUTO_UPDATE_STATISTICS ON;
GO

USE GovDW;
GO

PRINT 'Database GovDW created successfully';
PRINT 'Project: Government Reporting Data Warehouse';
PRINT 'Description: Cross-departmental data consolidation';
GO
