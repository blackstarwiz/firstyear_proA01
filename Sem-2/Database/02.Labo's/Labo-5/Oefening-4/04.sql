use jason_db;

select ReleaseJaar
from liedjes
where ReleaseJaar >= 1990
order by ReleaseJaar asc;

select 
count(ReleaseJaar) as "aantal nummers"
from liedjes
where year(ReleaseJaar) >= 1990;

SELECT 
'Aantal nummers' AS `Categorie`,
COUNT(CASE WHEN ReleaseJaar < 1990 THEN 1 END) AS `Voor 1990`,
COUNT(CASE WHEN ReleaseJaar >= 1990 THEN 1 END) AS `Vanaf 1990`
FROM liedjes;

SELECT 'Aantal nummers voor 1990' AS `Categorie`, COUNT(*) AS `Aantal nummers`
FROM liedjes
WHERE ReleaseJaar < 1990
UNION ALL
SELECT 'Aantal nummers vanaf 1990' AS `Categorie`, COUNT(*) AS `Aantal nummers`
FROM liedjes
WHERE ReleaseJaar >= 1990;