use jason_db;


/*
Schrijf een SELECT-query die de naam van de activiteit toont die als eerste gepland 
staat tijdens een bepaalde skivakantie. Indien er meerdere locaties (zoals pistes) 
zijn, houd er rekening mee dat meerdere activiteiten tegelijk kunnen starten. Kies een 
Skivakantie_Id in je query.
*/


select
	p.naam,
	d.activiteit,
    p.lengte,
    p.moeilijkheidsgraad
from
	dagprogramma d, pistes p
where p.id = 2 and d.skivakantie_id = 2;