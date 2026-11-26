-- Educations

USE ResumeMakerDb;
GO

SELECT
	e.institution_name,
	e.field_of_study,
	e.degree,
	CONVERT(VARCHAR, e.start_year) + ' - ' + CONVERT(VARCHAR, e.end_year) AS education_period
FROM Users AS u
INNER JOIN Resumes AS r
ON u.id = r.user_id
INNER JOIN Educations AS e
ON r.id = e.resume_id
ORDER BY e.start_year DESC;