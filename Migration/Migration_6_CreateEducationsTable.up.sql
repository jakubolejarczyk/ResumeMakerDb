-- Migration 6 (up): Create educations table

USE ResumeMakerDb;
GO

CREATE TABLE Educations (
	id INT IDENTITY(0,1),
	resume_id INT NOT NULL,
	institution_name VARCHAR(255) NOT NULL,
	field_of_study VARCHAR(255) NOT NULL,
	degree VARCHAR(255) NOT NULL,
	start_year INT NOT NULL,
	end_year INT NOT NULL,
	created_at DATETIME2(0) NOT NULL
		CONSTRAINT df_educations_created_at
		DEFAULT SYSDATETIME(),
	updated_at DATETIME2(0) NOT NULL
		CONSTRAINT df_educations_updated_at
		DEFAULT SYSDATETIME(),
	CONSTRAINT pk_educations
		PRIMARY KEY (id),
	CONSTRAINT fk_educations_resumes
		FOREIGN KEY (resume_id)
		REFERENCES Resumes(id)
);