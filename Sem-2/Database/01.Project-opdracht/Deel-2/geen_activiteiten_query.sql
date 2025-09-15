use jason_db;


/*
Maak een overzicht van groepsleden waarvoor nog geen activiteiten zijn 
geregistreerd in het Dagprogramma. 
*/

select
	count(*) as aantal
from
	dagprogramma
where activiteit is null;