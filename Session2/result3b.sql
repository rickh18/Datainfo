SELECT p.pid FROM Movie m, Acts a, Person p
	WHERE (a.mid = m.mid 
	AND a.pid = p.pid
	AND m.name = 'Back to the Future'
);