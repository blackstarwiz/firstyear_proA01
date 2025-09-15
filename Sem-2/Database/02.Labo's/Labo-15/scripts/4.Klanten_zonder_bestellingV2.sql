use herhaling_view_procedure;

drop view if exists klanten_zonder_bestellingV2 ;

-- we gaan de view aantal_bestellingen_per_klant_alle
-- hier uit gaan we filteren waar aantal bestelling 0 zijn
-- het vergemakelijkt de manier hoe we klanten zoeken die nog geen bestellingen hebbe gelaatst

create view klanten_zonder_bestellingV2 as
(
select
	k.naam,
    k.aantal_bestellingen
from
	aantal_bestellingen_per_klant_alle k
where
	k.aantal_bestellingen = 0
group by k.naam
);