use herhaling_view_procedure;

drop procedure if exists zoek_klant_op_term;

delimiter $$

create procedure zoek_klant_op_term(
	in zoek_term varchar(50)
)
begin
	select
		k.id,
        k.naam,
        k.gemeente
	from
		klanten k
	where 
		k.naam like concat('%',zoek_term,'%')
	order by 
		k.naam;
end $$
delimiter ;

