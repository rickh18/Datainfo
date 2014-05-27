INSERT INTO Boek VALUES(
	123456789,
	'boek een',
	'ikzelf')
	
INSERT INTO Boek VALUES(
	123456789,
	'boek twee',
	'ik ook')
	
	
	
ERROR:  duplicate key value violates unique constraint "boek_pkey"
DETAIL:  Key (isbn)=(123456789) already exists.
********** Error **********

ERROR: duplicate key value violates unique constraint "boek_pkey"
SQL state: 23505
Detail: Key (isbn)=(123456789) already exists.


