use herhaling_view_procedure;

drop procedure if exists aantal_klanten;


delimiter $$

create procedure aantal_klanten(out aantal int)
begin
	select 
		count(*) as aantal
	from 
		klanten;
end $$
delimiter ;
