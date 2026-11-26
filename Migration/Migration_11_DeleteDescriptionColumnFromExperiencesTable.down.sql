-- Migration 11 (down): Delete description column from experiences table

USE ResumeMakerDb;
GO

ALTER TABLE Experiences
ADD description VARCHAR(MAX);
GO

UPDATE Experiences
SET description = ''
WHERE description IS NULL;
GO

ALTER TABLE Experiences
ALTER COLUMN description VARCHAR(255) NOT NULL;