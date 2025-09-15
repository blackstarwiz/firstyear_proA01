use herhaling_view_procedure;

drop procedure if exists toplijst_best_verkochte_producten;

delimiter $$
create procedure toplijst_best_verkochte_producten(
	aantal_producten int
)
begin
select
	p.productomschrijving,
    sum(b.aantal) as aantal
from
	bestellingen b
inner join producten p 
	on p.id = b.Producten_Id
group by 
	p.productomschrijving 
order by 
	aantal desc
limit
	aantal_producten;
end $$
delimiter ;

