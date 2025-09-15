use jason_db;


select l.titel, a.naam
from liedjes l
inner join artiesten a
on l.Artiesten_Id = a.id;