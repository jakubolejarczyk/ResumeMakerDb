-- Migration 3 (up): Create resumes table

USE ResumeMakerDb;
GO

CREATE TABLE Resumes (
	id INT IDENTITY(0,1),
	user_id INT NOT NULL,
	job_title VARCHAR(255) NOT NULL,
	summary VARCHAR(MAX) NOT NULL,
	position INT NOT NULL,
	CONSTRAINT pk_resumes
		PRIMARY KEY (id),
	CONSTRAINT fk_resumes_users
		FOREIGN KEY (user_id)
		REFERENCES Users(id)
);