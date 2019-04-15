-- TOETS SQL P7
-- Naam: Devon Thomassen
-- Klas: IO2B4
USE Movies;
GO

-- 1.
SELECT FirstName, FamilyName, [Role]
FROM Actor AS A
LEFT JOIN [Role] AS R
ON A.ActorID = R.ActorID
INNER JOIN Film AS F
ON R.FilmId = F.FilmID
WHERE F.Title = 'Total Recall'

-- 2.
SELECT Title, Country, Studio
FROM Film AS F
RIGHT JOIN Country AS C
ON F.CountryId = C.CountryID 
RIGHT JOIN Studio AS S
ON F.StudioID = S.StudioID

-- 3.
SELECT title, RunTimeMinutes, OscarWins
FROM Film 
WHERE RunTimeMinutes < (SELECT RunTimeMinutes
						FROM Film
						WHERE Title = 'Cyborg')

-- 4.
SELECT *
FROM Film AS F
RIGHT JOIN Director AS D
ON F.DirectorID = D.DirectorID
WHERE DoD IS NULL

-- 5.


-- 6.
SELECT MAX(BudgetDollars), AVG(RunTimeMinutes)
FROM Film
WHERE Title LIKE 'Star Trek%'

-- 7.
SELECT ReleaseDate -- DATE NOG WAT
FROM Film
WHERE Title= 'Fargo'

-- 8.
SELECT *
FROM Actor
WHERE FamilyName = SUBSTRING('ld', )

-- 9. 
CREATE VIEW vwFilmOscar
AS 
SELECT Title
FROM Film
WHERE OscarNominations = OscarWins 

-- 10.
ALTER VIEW vwFilmOscar
AS
SELECT Title
FROM Film
WHERE OscarNominations = OscarWins AND OscarNominations > 0

-- 11.
SELECT *
FROM sys.views
