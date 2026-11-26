-- Migration 11 (up): Delete description column from experiences table

USE ResumeMakerDb;
GO

ALTER TABLE Experiences
DROP COLUMN description;