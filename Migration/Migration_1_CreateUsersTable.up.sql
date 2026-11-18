-- Migration 1 (up): Create users table

USE ResumeMakerDb;
GO

CREATE TABLE Users (
	id INT IDENTITY(1,1),
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	phone VARCHAR(255) NOT NULL,
	city VARCHAR(255) NOT NULL,
	country VARCHAR(255) NOT NULL,
	CONSTRAINT pk_users PRIMARY KEY (id),
	CONSTRAINT uq_users_email UNIQUE (email),
	CONSTRAINT uq_users_phone UNIQUE (phone)
);