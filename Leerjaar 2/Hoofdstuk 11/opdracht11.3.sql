-- Opdracht 11.3 - Joins
-- Maak bij alle statements gebruik van een join (of meerdere).

use HR;

-- 1. Toon het id, voornaam en achternaam van alle werknemers en hun kinderen. Ook als de werknemer geen kinderen heeft moet deze in de lijst zichtbaar zijn. (41 rows)
SELECT * FROM [dependent]

SELECT *
FROM [employee]
JOIN [dependent]
ON [employee].[employeeId] = [dependent].[employeeId]

-- 2. Toon * van alle werknemers met de afdeling waar ze werken. Toon ook de afdelingen als daar niemand werkt. (42 rows)


-- 3. Toon werknemernummer, voornaam, achternaam van alle werknemers met de voornaam en achternaam van de manager. (41 rows)


-- 4. Toon de landnaam en regionaam van alle landen die beginnen met de letter I. (3 rows)


-- 5. Toon de voornaam, achternaam, functie en afdeling van ALLE werknemers. (41 rows)


-- 6. Toon alle landen waar geen bedrijfslocatie is. (21 rows)


-- 7. Toon een overzicht met de functienaam en de gemiddelde salaris per functie. (19 rows)


-- 8. Toon alle landen en indien daar een verstiging is, dan toon het adres, postcode en plaats erbij. (28 rows)


-- 9a. Toon alle combinaties mogelijk van de tabellen land, afdeling en functies (Cartesiaans product).
--	  Toon van van landen de naam, van afdeling de naam en van functie de titel.

-- 9b. Hoeveel records telt de tabel countries?

-- 9c. Hoeveel records telt de tabel departments?

-- 9d. Hoeveel records telt de tabel jobs?

-- 9e. Hoeveel records telt de query?

-- 9f. Hoe kan je dit uitrekenen?


-- 10. Toon de voornaam, achternaam, afdeling, straat(locatie), stad(locatie), land en regio van alle locaties. (40 rows)

