USE ResumeMakerDb;
GO

SELECT
	CONCAT(u.first_name, '_', u.last_name, '_CV') AS file_name,
	CONCAT(u.first_name, ' ', u.last_name) AS full_name,
	u.email,
	CONCAT('+', u.country_code, ' ', u.national_number) AS phone,
	CONCAT(u.city, ', ', u.country) AS address,
	r.job_title,
	r.summary
FROM Users AS u
INNER JOIN Resumes AS r
ON u.id = r.user_id
WHERE u.id = 0;

SELECT
	s.category,
	REPLACE(REPLACE(REPLACE(REPLACE(s.skills, '"', ''), '[', ''), ']', ''), ',', ', ') AS skills
FROM Users AS u
INNER JOIN Resumes AS r
ON u.id = r.user_id
INNER JOIN Skills AS s
ON r.id = s.resume_id
WHERE u.id = 0
ORDER BY s.position ASC;