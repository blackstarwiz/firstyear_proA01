use herhaling_view_procedure;

drop procedure if exists klanten_met_minimaal_x_bestellingen;

delimiter $$

create procedure klanten_met_minimaal_x_bestellingen(
in aantal int
)
begin
	select
		k.naam,
        count(b.klanten_id) as aantal_bestellingen
	from
		klanten k
	inner join bestellingen b on b.klanten_id = k.id
	group by 
		k.id,k.naam
    having 
		count(b.klanten_id) >= aantal
    order by 
		aantal_bestellingen desc;
end $$

delimiter ;

