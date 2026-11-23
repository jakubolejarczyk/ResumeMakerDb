-- Migration 9 (up): Create skills table

USE ResumeMakerDb;
GO

CREATE TABLE Skills (
	id INT IDENTITY(0,1),
	resume_id INT NOT NULL,
	category VARCHAR(255) NOT NULL,
	skills VARCHAR(MAX) NOT NULL,
	position INT NOT NULL,
	created_at DATETIME2(0) NOT NULL
		CONSTRAINT df_skills_created_at
		DEFAULT SYSDATETIME(),
	updated_at DATETIME2(0) NOT NULL
		CONSTRAINT df_skills_updated_at
		DEFAULT SYSDATETIME(),
	CONSTRAINT pk_skills
		PRIMARY KEY (id),
	CONSTRAINT fk_skills_resumes
		FOREIGN KEY (resume_id)
		REFERENCES Resumes(id)
);