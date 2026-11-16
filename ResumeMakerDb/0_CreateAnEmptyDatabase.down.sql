-- Migration 0 (down): Delete the ResumeMakerDb database.

USE master;
GO

ALTER DATABASE ResumeMakerDb
SET SINGLE_USER
WITH ROLLBACK IMMEDIATE;
GO

DROP DATABASE ResumeMakerDb;