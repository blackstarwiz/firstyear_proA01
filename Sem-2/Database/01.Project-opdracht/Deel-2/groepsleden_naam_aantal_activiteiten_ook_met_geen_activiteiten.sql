use jason_db;


/*
Toon van alle groepsleden hoe vaak ze hebben deelgenomen aan activiteiten in het 
Dagprogramma, zorg ervoor dat met dezelfde query ook de groepsleden getoond 3 
worden die nog nooit aan een activiteit hebben deelgenomen. Voor hen noteer je in 
plaats van het aantal keer gewoon het cijfer nul. Maak geen gebruik van UNION. 
*/

select
	g.naam,
    count(d.activiteit) as aantal
from
	dagprogramma d
/*
right join wordt gebruikt op de table groepsleden
om ook de leden te tonen die geen activeiten hebben
*/
right join groepsleden g on g.id = d.groepslid_id
group by g.id,g.naam;