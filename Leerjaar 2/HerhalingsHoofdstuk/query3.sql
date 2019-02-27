--     __  __                __  __         __                 
--    / / / /__  ____ ______/ /_/ /_  _____/ /_____  ____  ___ 
--   / /_/ / _ \/ __ `/ ___/ __/ __ \/ ___/ __/ __ \/ __ \/ _ \
--  / __  /  __/ /_/ / /  / /_/ / / (__  ) /_/ /_/ / / / /  __/
-- /_/ /_/\___/\__,_/_/   \__/_/ /_/____/\__/\____/_/ /_/\___/ 

---------------------------
------ VRAAG VOORAF ------
---------------------------
-- Je hebt voor je een database die gemaakt is door iemand anders. 
-- Noteer drie verbetervoorstellen voor deze database. 
-- Denk hierbij aan alles wat we in leerjaar 1 besproken hebben, zoals redundantie, naamgeving, indeling enz.
-- I.
	-- Een insert into met de values

-- II.
	-- Netjes uitlijnen

-- III.
	-- Nummering van VARCHAR afronden.

----------------------------------
-------- SELECT STATEMENTS -------
----------------------------------

SELECT * FROM cards

-- 1. Toon de kaart ID en naam van de kaarten waarbij de faction niet NULL is.
SELECT card_id, name
FROM cards
WHERE faction IS NOT NULL

-- 2. Tel het totaal aantal kaarten met playerClass: druid, shaman en priest.
SELECT COUNT(card_id)
FROM cards
WHERE playerClass = 'druid' OR playerClass = 'shaman' OR playerClass = 'priest';

-- 3. Tel het aantal kaarten van type MINION waarbij zowel de kosten als aanval even hoog zijn.
SELECT COUNT(card_id)
FROM cards
WHERE type = 'minion' AND cost = attack;

-- 4. Toon de naam, aanval en text van de vijf legendarische kaarten met de hoogste aanval.
SELECT TOP 5 name, attack, text
FROM cards
WHERE rarity = 'LEGENDARY'
ORDER BY attack DESC;

-- 5. Selecteer de naam, gezondheid, kosten en aanval van de kaarten waarvan de gezondheid net zo hoog is als de aanval en kosten samen. Sorteer deze op gezondheid van hoog naar laag.
SELECT name, health, cost, attack
FROM cards
WHERE health = attack AND health = cost
ORDER BY health DESC;

-- 6. Toon een overzicht waarin je per type kan zien hoe vaak deze binnen een playerClass voorkomt. Bijv.:
--		|playerClass	|type			|amount
-- 1	|NULL			|ENCHANTMENT	|1
-- 2	|NULL			|HERO_POWER		|1
-- 3	|NULL			|NULL			|0
-- 4	|DEATHKNIGHT	|HERO_POWER		|1
SELECT playerClass, type, count(*) AS 'amount'
FROM cards
GROUP BY playerClass, type;
 
 -- 7. Bedenk een statement die tussen de 90 en 110 rijen teruggeeft en geef dit weer met een COUNT. Probeer dit met AND en OR te realiseren. Je mag TOP niet gebruiken.

 -- 8. Selecteer alle kaarten waarvan type WEAPON is met uitzondering van 'Dual Warglaives'. Je mag card_id en name niet gebruiken in de WHERE gebruiken.
 SELECT *
 FROM cards
 WHERE type = 'weapon' AND cost != 6;

 -- 9. Selecteer alle kaarten waarvan de playerClass SHAMAN en type SPELL is OF waarvan de playerClass ROGUE en type ENCHANTMENT is. 
 -- Dus één query die alle Shaman spells en Rogue enchantments ophaalt. Plaats de collectible kaarten bovenaan.
SELECT *
FROM cards
WHERE playerClass = 'SHAMAN' AND  type = 'SPELL' OR playerClass = 'ROGUE' AND  type = 'ENCHANTMENT';

 -- 10. Toon de naam, kosten, gezondheid, aanval en het product (kosten, gezondheid en aanval) van alle kaarten waarbij totaal groter is dan 5000. Sorteer deze lijst product van laag naar hoog.
 --    Het product is de vermenigvuldiging van de getallen. 
 SELECT name, cost, health, attack
 FROM cards
 ORDER BY name DESC;

 -- 11. Toon playerClass met het aantal keren dat playerClass voorkomt. De playerClasses mogen alleen getoond worden, als deze vaker dan 110 keer voorkomen. Sorteer deze lijst op aantal van laag naar hoog.
 --		|playerClass	|amount
 -- 1	|HUNTER			|115
 -- 2	|WARRIOR		|125
 SELECT playerClass
 FROM cards
 
 -- 12. Toon de naam, type, sett en aanval van alle kaarten waarvan de naam begint met 'Fire'
 SELECT name, type, sett, attack
 FROM cards
 WHERE name LIKE 'Fire%';

 -- 13. Toon de kaart ID, naam, playerClass en tekst van alle kaarten die een Battlecry hebben. Dit is terug te vinden in kolom text.
 SELECT card_id, name, playerClass, text
 FROM cards
 WHERE text LIKE '%Battlecry%';

----------------------------------
-------- UPDATE STATEMENTS -------
----------------------------------

-- 14. Pas de rijen aan waar collectible op NULL staat. Maak van deze NULL een False.
UPDATE cards
SET collectible = 'Fals'
WHERE collectible IS NULL;

-- 15. Pas de rijen aan waarvan het kaart ID begint met DREAM. Vul hier bij faction jouw eigen naam in en zet de durability op jouw eigen leeftijd.
UPDATE cards
SET faction = 'Maud', durability = 21
WHERE card_id = 'DREAM%';

-- 16. Op dit moment staan veel teksten in hoofdletters. Pas de kolom rarity zo aan dat de teksten in kleine letters worden weggeschreven.
UPDATE cards SET rarity = LOWER(rarity);
-- Bonus. Pas de statement zo aan dat de eerste letter een hoofdletter is en de rest kleine letters.
