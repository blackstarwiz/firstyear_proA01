use herhaling_view_procedure;

drop view if exists klanten_zonder_bestelling;

create view klanten_zonder_bestelling as
(
-- we selecteren naam van table klanten 
-- we geven 0 mee voor bestellingen om dat de klant nog niets bestelt heeft
	select 
		k.naam,
		0 as 'aantal_bestellingen'
	from
		klanten k
        -- we joinen van klanten naar bestelingen 
        -- klanten die nog geen bestellingen hebben geplaats 
        -- staan niet in de table bestellingen
	left join bestellingen b on k.id = b.Klanten_Id
	where b.Klanten_Id is null
	group by k.naam
);