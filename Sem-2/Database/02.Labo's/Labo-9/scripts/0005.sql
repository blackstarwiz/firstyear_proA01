select jason_db;

select n.titel, a.Albums_Id
from nummers n
inner join liedjeopalbum a
on n.Id = a.Liedjes_Id
order by a.Liedjes_Id;