use jason_db;


select * from taken;

select * from leden;



select 
	coalesce(l.voornaam, 'lid niet toegewezen') as voornaam,
    t.Omschrijving
from
	leden l
right join 
	taken t 
on
	l.Id = t.Leden_Id;