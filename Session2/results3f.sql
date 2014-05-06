SELECT p.name, COUNT(a.pid) FROM Person p, Movie m, Acts a
	WHERE p.pid = a.pid
	AND a.mid = m.mid
	GROUP BY p.name
	HAVING COUNT(a.pid) >= 4 AND MAX(m.rating) >=9
	
