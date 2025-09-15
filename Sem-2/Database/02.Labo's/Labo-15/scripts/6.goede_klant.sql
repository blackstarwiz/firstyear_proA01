use herhaling_view_procedure;


drop view if exists goede_klant;


create view goede_klant as 
(
	select
		k.naam,
       count(b.id) as aantal_bestellingen
	from 
		klanten k
	left join bestellingen b on b.Klanten_Id = k.id
    group by k.naam
    having aantal_bestellingen >=3
    order by aantal_bestellingen desc
);

