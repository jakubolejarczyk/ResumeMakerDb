USE ResumeMakerDb;
GO

-- Create
--INSERT INTO Educations (resume_id, institution_name, field_of_study, degree, start_year, end_year)
--VALUES (0, '', '', '', 0, 0);

-- Read
SELECT
	id,
	resume_id,
	institution_name,
	field_of_study,
	degree,
	start_year,
	end_year,
	created_at,
	updated_at
FROM Educations;

-- Update
--UPDATE Educations
--SET institution_name = ''
--WHERE id = 0;

-- Delete
--DELETE Educations
--WHERE id = 0;