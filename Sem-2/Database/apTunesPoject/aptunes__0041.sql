use jason_db;


select n.titel, a.naam as artiest, n.Duurtijd/60 as minuten
from nummers n
inner join artiesten a on n.Artiesten_Id = a.Id
order by n.Duurtijd desc;
