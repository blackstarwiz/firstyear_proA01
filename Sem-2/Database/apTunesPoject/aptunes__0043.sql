use jason_db;

select al.titel, a.naam
from albums al
inner join artiesten a on al.Artiesten_Id = a.Id;
 