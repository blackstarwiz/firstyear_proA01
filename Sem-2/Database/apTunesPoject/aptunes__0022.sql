use jason_db;

select
	truncate(nummers.releasejaar,-1) as decennium, 
	count(*) as aantal
from nummers
group by decennium
having count(titel) > 450
order by decennium;
