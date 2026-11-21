-- Migration 2 (up): Create links table

USE ResumeMakerDb;
GO

CREATE TABLE Links (
	id INT IDENTITY(0,1),
	user_id INT NOT NULL,
	link VARCHAR(255) NOT NULL,
	position INT NOT NULL,
	CONSTRAINT pk_links
		PRIMARY KEY (id),
	CONSTRAINT fk_links_users
		FOREIGN KEY (user_id)
		REFERENCES Users(id)
);