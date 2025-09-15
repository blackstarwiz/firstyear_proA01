use jason_db;

-- DISTINCT verwijdert duplicaten door te kijken naar
-- alle kolommen in de SELECT-lijst en retourneert
-- alleen unieke rijen.

SELECT DISTINCT Artiest
FROM Liedjes;


--  GROUP BY groepeert rijen die dezelfde waarden 
-- hebben in de kolommen die worden gegroepeerd, 
-- en retourneert één rij per unieke groep.

SELECT Artiest, count(Artiest) as aantal
FROM Liedjes
group by Artiest;