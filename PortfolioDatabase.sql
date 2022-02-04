USE PortfolioDatabase
GO

CREATE TABLE balonDorResults (
ID INT PRIMARY KEY,
FirstName VARCHAR(200),
SecondName VARCHAR(200),
Nationality VARCHAR(200),
Club CHAR(200),
Position CHAR(200),
Votes INT
);

INSERT INTO balonDorResults (ID, FirstName, SecondName, Nationality, Club, Position, Votes) VALUES 
('1', 'Leo', 'Messi', 'Argentina','PSG','FW', '613'),
('2', 'Robert', 'Lewandowski', 'Poland', 'Bayern Monachium', 'FW', '580'),
('3', NULL, 'Jorginho', 'Italy', 'Chelsea London', 'MF', '460'),
('4', 'Karim', 'Benzema', 'France', 'Real Madrid', 'FW', '239'),
('5', 'Ngolo', 'Kante', 'France', 'Chelsea London', 'MF', '186'),
('6', 'Cristiano', 'Ronaldo', 'Portugal', 'Manchester United', 'FW', '178'),
('7', 'Mohamed', 'Salah', 'Egypt', 'Liverpool', 'FW', '121'),
('8', 'Kevin', 'De Bruyne', 'Belgium', 'Manchester City', 'MF', '73'),
('9', 'Kylian', 'Mbappe', 'France', 'PSG', 'FW', '58'),
('10', 'Gianluigi', 'Donnaruma', 'Italy', 'PSG', 'GK', '36');

SELECT * 
FROM balonDorResults

SELECT * 
FROM balonDorResults
ORDER BY Nationality

SELECT * 
FROM balonDorResults
ORDER BY Votes ASC

SELECT FirstName, SecondName 
FROM balonDorResults
WHERE Nationality = 'France'

SELECT * 
FROM balonDorResults
WHERE FirstName IS NULL

SELECT SecondName
FROM balonDorResults
WHERE FirstName IS NOT NULL

SELECT * 
FROM balonDorResults
WHERE Votes < 200

SELECT FirstName, SecondName, Club 
FROM balonDorResults
WHERE Votes BETWEEN 100 AND 300

SELECT * 
FROM balonDorResults
WHERE Club LIKE 'Manchester%'

SELECT * 
FROM balonDorResults
WHERE Nationality = 'Egypt' OR Nationality = 'Belgium'

SELECT *
FROM balonDorResults
WHERE Club IN ('Real Madrid', 'Chelsea London', 'PSG')

SELECT * 
FROM balonDorResults
WHERE Nationality IN ('Argentina', 'Italy', 'Poland')

SELECT * 
FROM balonDorResults
WHERE (Club = 'PSG' AND Nationality = 'France') OR (Club LIKE 'Real%' AND Position = 'FW')

SELECT COUNT(*)
FROM balonDorResults

SELECT MAX(Votes)
FROM balonDorResults

SELECT SUM(Votes)
FROM balonDorResults

SELECT COUNT(*)
FROM balonDorResults
WHERE Nationality = 'France'

SELECT Club, COUNT(*) AS Cnt
FROM balonDorResults
GROUP BY Club

SELECT Club, Nationality, COUNT(*)
FROM balonDorResults
GROUP BY Club, Nationality

SELECT AVG(Votes)
FROM balonDorResults







