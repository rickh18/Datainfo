SELECT p.pid FROM Person p
	WHERE (
		SELECT * FROM Writes w
		WHERE w.pid = p.pid
		AND 'movie has no director'
	);