SELECT 'YOUNGEST' AS TYPE,
	name,
	birthday
FROM worker
WHERE birthday = (
	SECELT MAX (birthday)
	FROM worker
)
		
UNION

SELECT 'OLDEST' AS TYPE,
	name,
	birthday
FROM worker
WHERE birthday = (
	SELECT MIN (birthday)
	FROM worker
);