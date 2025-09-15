use herhaling_view_procedure;


drop view if exists aantal_bestellingen_per_klant;

create view aantal_bestellingen_per_klant as
(
	-- selecteren de naam van klanten 
    -- en 
    -- telt hoeveel entries deze heeft in bestellingen
	select 
		k.naam,
		count(b.id) 'aantal_bestellingen'
	from
		klanten k
	-- we linken table klanten met bestelling met id's klanten --> bestellingen
	inner join 
		bestellingen b 
	on 
		b.Klanten_Id = k.Id -- als klanten id voor komt in bestellingen dan count
	-- groeperen deze per naam
    group by 
		k.naam
	-- de order van meeste bestellingen tot minste (desc)
	order by 
		count(b.id) desc
);




