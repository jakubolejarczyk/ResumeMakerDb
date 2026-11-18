-- Migration 0 (up): Create an empty database

USE master;
GO

ALTER DATABASE ResumeMakerDb
SET SINGLE_USER
WITH ROLLBACK IMMEDIATE;
GO

DROP DATABASE ResumeMakerDb;