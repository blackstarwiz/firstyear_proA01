use project;

/*
Opgave 9:
 Schrijf een query die per groepslid toont hoe lang de gemiddelde activiteit duurt 
(bijvoorbeeld lessen of andere georganiseerde activiteiten). Toon enkel 
groepsleden die al eens een skivakantie hebben meegemaakt, en waarvan de 
gemiddelde activiteit langer dan 2 uur duurt. Voeg een passende sortering toe. 
*/
select ski_ervaring, count(*) as aantal_groepsleden
from groepsleden
group by ski_ervaring
order by aantal_groepsleden desc;