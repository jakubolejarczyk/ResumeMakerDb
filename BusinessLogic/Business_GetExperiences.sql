-- Experiences

USE ResumeMakerDb;
GO

SELECT
	e.company AS experience_company,
	e.job_title AS experience_job_title,
	ed.description AS experience_description,
	FORMAT(e.start_date, 'dd-MM-yyyy') +
	' - ' +
	ISNULL(FORMAT(e.end_date, 'dd-MM-yyyy'), 'Obecnie') AS experience_period
FROM Users AS u
INNER JOIN Resumes AS r
ON u.id = r.user_id
INNER JOIN Experiences AS e
ON r.id = e.resume_id
INNER JOIN ExperienceDescriptions AS ed
ON e.id = ed.experience_id
WHERE u.id = 0
ORDER BY r.position ASC, e.start_date DESC, ed.position ASC;