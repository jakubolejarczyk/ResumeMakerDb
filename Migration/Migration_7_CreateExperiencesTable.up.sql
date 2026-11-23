-- Migration 7 (up): Create experiences table

USE ResumeMakerDb;
GO

CREATE TABLE Experiences (
	id INT IDENTITY(0,1),
	resume_id INT NOT NULL,
	company VARCHAR(255) NOT NULL,
	job_title VARCHAR(255) NOT NULL,
	description VARCHAR(MAX) NOT NULL,
	start_date DATE NOT NULL,
	end_date DATE NULL,
	CONSTRAINT pk_experiences
		PRIMARY KEY (id),
	CONSTRAINT fk_experiences_resumes
		FOREIGN KEY (resume_id)
		REFERENCES Resumes(id)
);