SELECT p.pid FROM Person P
WHERE EXISTS(
	SELECT * FROM Acts a
	WHERE a.pid = p.pid
	AND EXISTS (
		SELECT * FROM Movie m -- the movies exsits and a plays in it
		WHERE m.mid = a.mid
		AND m.name = 'Back to the Future'
	)
);
		