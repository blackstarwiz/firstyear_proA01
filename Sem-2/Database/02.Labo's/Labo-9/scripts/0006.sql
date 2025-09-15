use jason_db;


select n.titel, a.titel
from nummers n
inner join albums a
on n.Artiesten_Id = a.Artiesten_Id;