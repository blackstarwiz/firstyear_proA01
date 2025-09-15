use jason_db;


/*
Schrijf een SELECT-query die per skivakantie de titel van de vakantie toont, het 
aantal activiteiten dat in die vakantie gepland is, en het aantal unieke groepsleden 
dat deelneemt aan de activiteiten. Voeg een passende sortering toe. 
*/



select 
	s.titel,
    count(distinct d.activiteit) as aantal,
    count(distinct g.id)as aantal_Personen
from
	dagprogramma d
inner join skivakantie s on s.id = d.skivakantie_id
inner join groepsleden g on g.id = d.groepslid_id
group by s.titel;