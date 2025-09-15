use jason_db;

SELECT Genre, AVG(DuurtijdInSeconden) AS `Gemiddelde duurtijd`
FROM Liedjes
GROUP BY Genre
HAVING AVG(DuurtijdInSeconden) >= 300
ORDER BY AVG(DuurtijdInSeconden) ASC;

