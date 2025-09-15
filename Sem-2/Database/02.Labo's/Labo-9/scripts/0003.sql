use jason_db;


select a.titel, ar.naam
from albums a
inner join artiesten ar
where a.id = ar.Id;