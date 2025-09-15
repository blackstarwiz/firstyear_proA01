use jason_db;


/*
Schrijf een zinvolle SELECT-query op je twee zelfgekozen tabellen, gebruikmakend 
van een JOIN. 
Leg in commentaar uit wat je precies wenst weer te geven met de resultatentabel die 
deze query produceert. 
*/



/*
Toon een overzicht van groepsleden en welke uitrusting zij huren.
*/
select	
	g.naam,
    g.skiervaring,
    h.uitrusting
from
	groepsleden g
inner join huuruitrusting h on h.groepslid_id = g.id;


/*
full-summary van alles data compact in one query with inner joins
kan oook gedaan worden met left or right joins om leden te tonen
die nog geen data hebben
*/
select
	s.startdatum as 'begin',
    d.tijdstip,
    s.titel as vakantie,
    g.naam,
    g.leeftijd,
    g.skiervaring,
    d.activiteit,
    d.beschrijving,
    s.einddatum as 'end'
from
	dagprogramma d
inner join skivakantie s on s.id = d.skivakantie_id
/*right join op groeps leden toon de leden die nog geen data hebben in andere tables*/
right join groepsleden g on g.id = d.groepslid_id;
    