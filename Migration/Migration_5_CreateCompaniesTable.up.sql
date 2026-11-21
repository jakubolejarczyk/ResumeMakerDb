-- Migration 5 (up): Create companies table

USE ResumeMakerDb;
GO

CREATE TABLE Companies (
	id INT IDENTITY(0,1),
	resume_id INT NOT NULL,
	company_name VARCHAR(255) NOT NULL,
	gdpr_clause VARCHAR(MAX) NULL,
	show_gdpr_clause BIT NOT NULL,
	created_at DATETIME2(0) NOT NULL
		CONSTRAINT df_companies_created_at
		DEFAULT SYSDATETIME(),
	updated_at DATETIME2(0) NOT NULL
		CONSTRAINT df_companies_updated_at
		DEFAULT SYSDATETIME(),
	CONSTRAINT pk_companies
		PRIMARY KEY (id),
	CONSTRAINT fk_companies_resumes
		FOREIGN KEY (resume_id)
		REFERENCES Resumes(id),
);