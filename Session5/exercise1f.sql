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
	FOREIGN KEY(isbn) REFERENCES Boek(isbn)
);

CREATE TRIGGER update_trigger  AFTER DELETE ON Boek
	FOR EACH row
	BEGIN
		DELETE FROM Exemplaar
		WHERE isbn = OLD.isbn
	END