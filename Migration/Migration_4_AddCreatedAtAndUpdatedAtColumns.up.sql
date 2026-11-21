-- Migration 4 (up): Add created at and updated at columns

USE ResumeMakerDb;
GO

ALTER TABLE Users
ADD
	created_at DATETIME2(0) NOT NULL
		CONSTRAINT df_users_created_at
		DEFAULT SYSDATETIME(),
	updated_at DATETIME2(0) NOT NULL
		CONSTRAINT df_users_updated_at
		DEFAULT SYSDATETIME();

ALTER TABLE Links
ADD
	created_at DATETIME2(0) NOT NULL
		CONSTRAINT df_links_created_at
		DEFAULT SYSDATETIME(),
	updated_at DATETIME2(0) NOT NULL
		CONSTRAINT df_links_updated_at
		DEFAULT SYSDATETIME();

ALTER TABLE Resumes
ADD
	created_at DATETIME2(0) NOT NULL
		CONSTRAINT df_resumes_created_at
		DEFAULT SYSDATETIME(),
	updated_at DATETIME2(0) NOT NULL
		CONSTRAINT df_resumes_updated_at
		DEFAULT SYSDATETIME();