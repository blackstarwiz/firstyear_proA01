use project;

/*
Opgave 4:
Schrijf 2 select queries waar minstens een WHERE- en een ORDER BY-clausule in 
staat. Bijvoorbeeld: toon welke groepsleden deelnemen aan een activiteit die 
plaatsvindt tussen twee bepaalde tijdstippen, en sorteer op tijdstip. 
*/


-- groepsleden die deelnemen aan activiteiten tussen twee verschillende tijdstippen

SELECT g.naam,g.leeftijd, d.activiteit, d.tijdstip
FROM groepsleden g
JOIN dagprogramma d on  g.id = d.id
where d.tijdstip between '10:00:00' and '15:00:00'
order by d.tijdstip;

-- filteren op lengte georderd op moeilijkheidsgraad

select naam, lengte,moeilijkheidsgraad
from pistes
where lengte >= 2500
order by moeilijkheidsgraad desc;