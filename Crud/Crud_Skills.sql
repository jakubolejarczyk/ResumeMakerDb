USE ResumeMakerDb;
GO

-- Create
--INSERT INTO Skills (resume_id, category, skills, position)
--VALUES (0, '', '[]', 0);

-- Read
SELECT
	id,
	resume_id,
	category,
	skills,
	position,
	created_at,
	updated_at
FROM Skills;

-- Update
--UPDATE Skills
--SET category = ''
--WHERE id = 0;

-- Delete
--DELETE Skills
--WHERE id = 0;