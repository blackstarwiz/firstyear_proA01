use jason_db;


/*
Schrijf een SELECT-query die de titel van de meest recente skivakantie toont (de 
skivakantie met de hoogste startdatum). 
*/

select 
	s.titel
from
	skivakantie s 
order by s.startdatum desc
limit 1;