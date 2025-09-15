use jason_db;

drop function if exists PrecentageOf;

delimiter $$

create function PrecentageOf(precentage int, getal double)
returns double
deterministic
no sql
begin
	if(precentage is null or getal is null)
	then
		signal sqlstate '45000'
		set MESSAGE_TEXT = 'inputs moeten waarde hebben';
	else
		return round(getal * precentage / 100,1) ;
	end if;
end$$

delimiter ;


select PrecentageOf(5,52.1) as precentage;