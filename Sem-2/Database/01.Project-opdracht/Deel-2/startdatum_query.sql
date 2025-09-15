use jason_db;


/*
Schrijf een query die voor een bepaalde vakantie het programmaoverzicht toont door 
de datum en tijd van de activiteit te tonen, samen met de naam van de activiteit en 
de betrokken groepsleden. Sorteer op datum en tijd van de activiteit. Kies zelf een 
Skivakantie_Id in je query. 
*/

select 
	s.startdatum,
    d.tijdstip,
    s.titel,
    d.activiteit
from
	dagprogramma d 
inner join skivakantie s on s.id = d.skivakantie_id
where s.startdatum like '2025-02-07';

