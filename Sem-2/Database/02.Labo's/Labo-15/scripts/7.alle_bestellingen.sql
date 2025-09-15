use herhaling_view_procedure;

drop view if exists alle_bestellingen;


create view alle_bestellingen as
(
select
	k.naam,
    k.gemeente,
    p.productomschrijving,
    b.aantal
from
	klanten k
inner join bestellingen b on b.klanten_Id = k.id
inner join producten p on p.id = b.producten_id
order by b.aantal desc
);

