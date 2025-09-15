use herhaling_view_procedure;

drop view if exists alle_grote_bestellingen;


create view alle_grote_bestellingen as
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
where
	b.aantal > (
		select avg(totaal_orders)
        from (
			select sum(b2.aantal) as totaal_orders
            from
				bestellingen b2
			group by b2.id
    ) as per_order)
order by b.aantal desc
);
