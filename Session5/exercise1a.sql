CREATE TABLE Boek (
	isbn INTEGER,
	titel VARCHAR(100),
	auteur VARCHAR(100),
	PRIMARY KEY(isbn)
);

CREATE TABLE Exemplaar(
	isbn INTEGER,
	volgnummer INTEGER,
	gewicht INTEGER,
	kast INTEGER,
	PRIMARY KEY(isbn,volgnummer),
	FOREIGN KEY(isbn) REFERENCES Boek(isbn) ON DELETE CASCADE ON UPDATE CASCADE
);