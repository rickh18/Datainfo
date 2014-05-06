SELECT p.name FROM Person p, Writes w, Movie m
	WHERE p.pid = w.pid
	AND  m.mid = w.mid
	AND NOT EXISTS(
		SELECT * FROM Directs d
		WHERE m.mid = d.mid
	)
		