-- Migration 8 (up): Add created at and updated at columns for experiences table

USE ResumeMakerDb;
GO

ALTER TABLE Experiences
ADD
	created_at DATETIME2(0) NOT NULL
		CONSTRAINT df_experiences_created_at
		DEFAULT SYSDATETIME(),
	updated_at DATETIME2(0) NOT NULL
		CONSTRAINT df_experiences_updated_at
		DEFAULT SYSDATETIME();