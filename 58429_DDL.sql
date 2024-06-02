-- Tworzenie tabeli Uczniowie
CREATE TABLE Uczniowie (
    uczen_id NUMBER PRIMARY KEY,
    imie VARCHAR2(50) NOT NULL,
    nazwisko VARCHAR2(50) NOT NULL,
    data_urodzenia DATE NOT NULL,
    klasa VARCHAR2(10) NOT NULL
);

-- Tworzenie tabeli Przedmioty
CREATE TABLE Przedmioty (
    przedmiot_id NUMBER PRIMARY KEY,
    nazwa VARCHAR2(100) NOT NULL
);

-- Tworzenie tabeli Nauczyciele
CREATE TABLE Nauczyciele (
    nauczyciel_id NUMBER PRIMARY KEY,
    imie VARCHAR2(50) NOT NULL,
    nazwisko VARCHAR2(50) NOT NULL
);

-- Tworzenie tabeli Oceny
CREATE TABLE Oceny (
    ocena_id NUMBER PRIMARY KEY,
    uczen_id NUMBER NOT NULL,
    przedmiot_id NUMBER NOT NULL,
    nauczyciel_id NUMBER NOT NULL,
    ocena NUMBER CHECK (ocena BETWEEN 1 AND 6),
    data_oceny DATE NOT NULL,
    FOREIGN KEY (uczen_id) REFERENCES Uczniowie(uczen_id),
    FOREIGN KEY (przedmiot_id) REFERENCES Przedmioty(przedmiot_id),
    FOREIGN KEY (nauczyciel_id) REFERENCES Nauczyciele(nauczyciel_id)
);

-- Tworzenie tabeli Frekwencja
CREATE TABLE Frekwencja (
    frekwencja_id NUMBER PRIMARY KEY,
    uczen_id NUMBER NOT NULL,
    data DATE NOT NULL,
    obecny VARCHAR2(1) CHECK (obecny IN ('T', 'N')),
    FOREIGN KEY (uczen_id) REFERENCES Uczniowie(uczen_id)
);

-- Tworzenie indeksów
CREATE INDEX idx_uczen_klasa ON Uczniowie (klasa);
CREATE INDEX idx_oceny_uczen_id ON Oceny (uczen_id);
CREATE INDEX idx_frekwencja_uczen_id ON Frekwencja (uczen_id);
