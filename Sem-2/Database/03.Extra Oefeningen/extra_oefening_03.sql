/*
Toon het peilingagentschap met de hoogste gemiddelde gunstige beoordeling.

Tabelstructuur
peilingagentschap (id, naam)

peilingen (ongunstig, matig, gunstig, peilingagentschap_id)
*/

use jason_db;

select
	pe.naam,
    round(avg(p.gunstig)) as gemiddelde_gunstig
from peilingagentschap pe
inner join peilingen p on pe.id = p.peilingagentschap_id
group by pe.id,pe.naam
order by gemiddelde_gunstig desc;