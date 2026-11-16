-- Migration 1 (up)
-- Create users table.

USE ResumeMakerDb;
GO

CREATE TABLE Users (
	id INT IDENTITY(1,1),
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	jobTitle VARCHAR(255),
	email VARCHAR(255),
	phone VARCHAR(255),
	city VARCHAR(255),
	country VARCHAR(255),
	CONSTRAINT pk_users PRIMARY KEY (id)
);