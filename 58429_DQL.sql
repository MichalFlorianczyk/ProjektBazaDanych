-- Lista uczniów z klasy 3A
SELECT imie, nazwisko
FROM Uczniowie
WHERE klasa = '3A';

-- Średnia ocen z matematyki dla ucznia o ID 1
SELECT AVG(ocena) AS srednia_ocen
FROM Oceny
WHERE uczen_id = 1 AND przedmiot_id = 1;

-- Frekwencja ucznia o ID 1 w styczniu 2024
SELECT data, obecny
FROM Frekwencja
WHERE uczen_id = 1 AND data BETWEEN TO_DATE('2024-01-01', 'YYYY-MM-DD') AND TO_DATE('2024-01-31', 'YYYY-MM-DD');
-- Liczba nieobecności uczniów w marcu 2024
SELECT uczen_id, COUNT(*) AS liczba_nieobecnosci
FROM Frekwencja
WHERE obecny = 'N' AND data BETWEEN TO_DATE('2024-03-01', 'YYYY-MM-DD') AND TO_DATE('2024-03-31', 'YYYY-MM-DD')
GROUP BY uczen_id;