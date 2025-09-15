/*
Toon een lijst van alle politici, inclusief de naam van hun partij. 
Als een politicus geen partij heeft, toon dan "onafhankelijk" in plaats van NULL.

Tabelstructuur (vereenvoudigd)
politici (id, naam, geboortedatum, partij_id)
partijen (id, naam)
*/

use jason_db;

insert into politici(naam,geboortedatum,partijen_id) values
('Jason Meulemans','1997-10-27',null),
(null,'1988-11-02',2);


select 
	coalesce(p.naam,'onafhankelijke politicus') as naam,
    coalesce(pr.naam, 'onafhankelijk') as partij
from 
	politici p
left join
	partijen  pr
on
	pr.id = p.partijen_id;
