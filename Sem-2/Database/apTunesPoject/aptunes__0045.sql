use jason_db;


select n.titel, a.Albums_Id
from nummers n
inner join nummeropalbum a on n.Id = a.Nummers_Id;