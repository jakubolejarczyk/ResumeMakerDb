USE ResumeMakerDb;
GO

-- Create
--INSERT INTO Links (user_id, link, position)
--VALUES (0, '', 0);

-- Read
SELECT
	id,
	user_id,
	link,
	position,
	created_at,
	updated_at
FROM Links;

-- Update
--UPDATE Links
--SET link = ''
--WHERE id = 0;

-- Delete
--DELETE Links
--WHERE id = 0;