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
INSERT INTO Oceny (ocena_id, uczen_id, przedmiot_id, nauczyciel_id, ocena, data_oceny) VALUES (4, 1, 2, 2, 2, TO_DATE('2024-02-15', 'YYYY-MM-DD'));
INSERT INTO Oceny (ocena_id, uczen_id, przedmiot_id, nauczyciel_id, ocena, data_oceny) VALUES (5, 2, 3, 3, 5, TO_DATE('2024-02-20', 'YYYY-MM-DD'));
INSERT INTO Oceny (ocena_id, uczen_id, przedmiot_id, nauczyciel_id, ocena, data_oceny) VALUES (6, 3, 1, 1, 4, TO_DATE('2024-03-15', 'YYYY-MM-DD'));
INSERT INTO Oceny (ocena_id, uczen_id, przedmiot_id, nauczyciel_id, ocena, data_oceny) VALUES (7, 1, 3, 3, 5, TO_DATE('2024-04-15', 'YYYY-MM-DD'));
INSERT INTO Oceny (ocena_id, uczen_id, przedmiot_id, nauczyciel_id, ocena, data_oceny) VALUES (8, 2, 2, 2, 4, TO_DATE('2024-05-20', 'YYYY-MM-DD'));
INSERT INTO Oceny (ocena_id, uczen_id, przedmiot_id, nauczyciel_id, ocena, data_oceny) VALUES (9, 3, 3, 3, 5, TO_DATE('2024-06-15', 'YYYY-MM-DD'));

-- Wstawianie danych do tabeli Frekwencja
INSERT INTO Frekwencja (frekwencja_id, uczen_id, data, obecny) VALUES (4, 1, TO_DATE('2024-02-10', 'YYYY-MM-DD'), 'N');
INSERT INTO Frekwencja (frekwencja_id, uczen_id, data, obecny) VALUES (5, 2, TO_DATE('2024-02-10', 'YYYY-MM-DD'), 'T');
INSERT INTO Frekwencja (frekwencja_id, uczen_id, data, obecny) VALUES (6, 3, TO_DATE('2024-03-10', 'YYYY-MM-DD'), 'N');
INSERT INTO Frekwencja (frekwencja_id, uczen_id, data, obecny) VALUES (7, 1, TO_DATE('2024-04-10', 'YYYY-MM-DD'), 'T');
INSERT INTO Frekwencja (frekwencja_id, uczen_id, data, obecny) VALUES (8, 2, TO_DATE('2024-05-10', 'YYYY-MM-DD'), 'N');
INSERT INTO Frekwencja (frekwencja_id, uczen_id, data, obecny) VALUES (9, 3, TO_DATE('2024-06-10', 'YYYY-MM-DD'), 'T');