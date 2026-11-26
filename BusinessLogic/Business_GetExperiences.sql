USE ResumeMakerDb;
GO

SELECT
	e.company,
	e.job_title,
	ed.description,
	CONVERT(VARCHAR, e.start_date) +
	' - ' +
	ISNULL(CONVERT(VARCHAR, e.end_date), 'Obecnie') AS experience_period
FROM Users AS u
INNER JOIN Resumes AS r
ON u.id = r.user_id
INNER JOIN Experiences AS e
ON r.id = e.resume_id
INNER JOIN ExperienceDescriptions AS ed
ON e.id = ed.experience_id
WHERE u.id = 0
ORDER BY r.position ASC, e.start_date DESC, ed.position ASC;