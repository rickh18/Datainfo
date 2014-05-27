CREATE TABLE Bestelling (
	isbn INTEGER,
	aantal INTEGER,
	PRIMARY KEY isbn,
	FOREIGN KEY(isbn ) REFERENCES Boek(isbn)
);

CREATE TRIGGER bestelling_trigger AFTER INSERT ON Boek
	FOR EACH ROW
	WHEN((SELECT COUNT(*) FROM Boek WHERE auteur = NEW.auteur) = 0)
	BEGIN
		INSERT INTO Bestelling VALUES(
			NEW.isbn,
			1
		)
	END;