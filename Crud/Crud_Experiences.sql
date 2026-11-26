USE ResumeMakerDb;
GO

-- Create
--INSERT INTO Experiences (resume_id, company, job_title, start_date, end_date)
--VALUES (0, '', '', '', '');

-- Read
SELECT
	id,
	resume_id,
	company,
	job_title,
	start_date,
	end_date,
	created_at,
	updated_at
FROM Experiences;

-- Update
--UPDATE Experiences
--SET company = ''
--WHERE id = 0;

-- Delete
--DELETE Experiences
--WHERE id = 0;