use jason_db;



select n.titel, a.naam as artiest, round(n.Duurtijd/60) as mins
from nummers n
inner join artiesten a on n.Artiesten_Id = a.Id
where n.Titel like 'A%';