use jason_db;


/*
Schrijf een zinvolle SELECT-query op één van je zelfgekozen tabellen, 
waarbij je gebruik maakt van een subquery. 
*/


select
	s.titel as vakantie,
	g.naam,
    d.activiteit,
    s.startdatum
from
	dagprogramma d
inner join groepsleden g on g.id = d.groepslid_id
inner join skivakantie s on s.id = d.skivakantie_id
where s.startdatum between (select min(startdatum) from skivakantie) and (select max(startdatum) from skivakantie);



    
select
	d.activiteit,
    d.beschrijving
from	
	dagprogramma d
where tijdstip > (select avg(tijdstip) from dagprogramma);


