use jason_db;


select nummers.Artiest
from nummers
group by nummers.Artiest
order by nummers.Artiest;



SELECT Artiest
FROM (SELECT Artiest FROM Nummers GROUP BY Artiest) AS uniek;