USE ResumeMakerDb;
GO

-- Create
--INSERT INTO ExperienceDescriptions (experience_id, description, position)
--VALUES (0, '', 0);

-- Read
SELECT
	id,
	experience_id,
	description,
	position,
	created_at,
	updated_at
FROM ExperienceDescriptions;

-- Update
--UPDATE ExperienceDescriptions
--SET description = ''
--WHERE id = 0;

-- Delete
--DELETE ExperienceDescriptions
--WHERE id = 0;