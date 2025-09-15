set @averageNaam = (select avg(length(voornaam)) from leden);

SELECT @averageNaam;

select voornaam
from leden 
where length(voornaam) <= round(@averageNaam);