use project;


select * from dagprogramma;

/*
Opgave 10:
Schrijf een query die per groepslid toont hoe lang de gemiddelde activiteit duurt 
(bijvoorbeeld lessen of andere georganiseerde activiteiten). Toon enkel 
groepsleden die al eens een skivakantie hebben meegemaakt, en waarvan de 
gemiddelde activiteit langer dan 2 uur duurt. Voeg een passende sortering toe. 
*/

select g.id, g.naam, avg(d.tijdstip) as gemiddeld
from dagprogramma d
join groepsleden g on d.id = g.id
where g.ski_ervaring > 0
group by g.id, g.naam
having avg(d.tijdstip) > 2
order by gemiddeld desc;