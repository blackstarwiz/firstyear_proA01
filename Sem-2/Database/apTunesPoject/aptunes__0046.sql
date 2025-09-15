use jason_db;


select a.titel, count(n.Nummers_Id) as nummers
from nummeropalbum n, albums a
where n.Albums_Id = a.id
group by a.Titel;