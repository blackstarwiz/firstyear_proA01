/*
Toon de namen van politici die een hoger gemiddeld aantal gunstige beoordelingen 
hebben dan het algemene gemiddelde over alle politici.

Tabelstructuur (vereenvoudigd)
politici (id, naam)

peilingen (ongunstig, matig, gunstig, politici_id, peilingagentschap_id)
*/

use jason_db;

select
	p.naam, pe.gunstig
from politici p
inner join peilingen pe on p.id = pe.politici_id
group by p.naam,pe.gunstig
having avg(pe.gunstig) > (select avg(gunstig) from peilingen);
