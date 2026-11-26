-- Migration 10 (up): Create experience descriptions table

USE ResumeMakerDb;
GO

CREATE TABLE ExperienceDescriptions (
	id INT IDENTITY(0,1),
	experience_id INT NOT NULL,
	description VARCHAR(MAX) NOT NULL,
	position INT NOT NULL,
	created_at DATETIME2(0) NOT NULL
		CONSTRAINT df_experience_descriptions_created_at
		DEFAULT SYSDATETIME(),
	updated_at DATETIME2(0) NOT NULL
		CONSTRAINT df_experience_descriptions_updated_at
		DEFAULT SYSDATETIME(),
	CONSTRAINT pk_experience_descriptions
		PRIMARY KEY (id),
	CONSTRAINT fk_experience_descriptions_experiences
		FOREIGN KEY (experience_id)
		REFERENCES Experiences(id)
);