use jason_db;



select 
	t.omschrijving
from
	taken t
left join
	leden l on t.Leden_Id = l.Id
where l.Id is null;