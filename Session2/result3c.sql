SELECT p.pid FROM Person p
	WHERE EXISTS(
		SELECT * FROM Writes w
		WHERE w.pid = p.pid
		AND EXISTS(
		SELECT * FROM Movie m
		Where m.mid = w.mid
		AND NOT EXISTS (
		SELECT * FROM  Directs d
			WHERE  m.mid = d.mid
		)
		)
	)