-- Wstawianie danych do tabeli Uczniowie
INSERT INTO Uczniowie (uczen_id, imie, nazwisko, data_urodzenia, klasa) VALUES (1, 'Jan', 'Kowalski', TO_DATE('2007-09-05', 'YYYY-MM-DD'), '3A');
INSERT INTO Uczniowie (uczen_id, imie, nazwisko, data_urodzenia, klasa) VALUES (2, 'Anna', 'Nowak', TO_DATE('2008-05-22', 'YYYY-MM-DD'), '3A');
INSERT INTO Uczniowie (uczen_id, imie, nazwisko, data_urodzenia, klasa) VALUES (3, 'Piotr', 'Wiśniewski', TO_DATE('2007-12-15', 'YYYY-MM-DD'), '3B');

-- Wstawianie danych do tabeli Przedmioty
INSERT INTO Przedmioty (przedmiot_id, nazwa) VALUES (1, 'Matematyka');
INSERT INTO Przedmioty (przedmiot_id, nazwa) VALUES (2, 'Język Polski');
INSERT INTO Przedmioty (przedmiot_id, nazwa) VALUES (3, 'Historia');

-- Wstawianie danych do tabeli Nauczyciele
INSERT INTO Nauczyciele (nauczyciel_id, imie, nazwisko) VALUES (1, 'Małgorzata', 'Zielińska');
INSERT INTO Nauczyciele (nauczyciel_id, imie, nazwisko) VALUES (2, 'Tomasz', 'Kwiatkowski');
INSERT INTO Nauczyciele (nauczyciel_id, imie, nazwisko) VALUES (3, 'Elżbieta', 'Więcek');

-- Wstawianie danych do tabeli Oceny
INSERT INTO Oceny (ocena_id, uczen_id, przedmiot_id, nauczyciel_id, ocena, data_oceny) VALUES (1, 1, 1, 1, 5, TO_DATE('2024-01-15', 'YYYY-MM-DD'));
INSERT INTO Oceny (ocena_id, uczen_id, przedmiot_id, nauczyciel_id, ocena, data_oceny) VALUES (2, 2, 1, 1, 3, TO_DATE('2024-01-20', 'YYYY-MM-DD'));
INSERT INTO Oceny (ocena_id, uczen_id, przedmiot_id, nauczyciel_id, ocena, data_oceny) VALUES (3, 3, 2, 2, 4, TO_DATE('2024-01-22', 'YYYY-MM-DD'));

-- Wstawianie danych do tabeli Frekwencja
INSERT INTO Frekwencja (frekwencja_id, uczen_id, data, obecny) VALUES (1, 1, TO_DATE('2024-01-10', 'YYYY-MM-DD'), 'T');
INSERT INTO Frekwencja (frekwencja_id, uczen_id, data, obecny) VALUES (2, 2, TO_DATE('2024-01-10', 'YYYY-MM-DD'), 'N');
INSERT INTO Frekwencja (frekwencja_id, uczen_id, data, obecny) VALUES (3, 3, TO_DATE('2024-01-10', 'YYYY-MM-DD'), 'T');
