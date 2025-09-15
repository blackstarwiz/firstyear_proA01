use aptunes;


drop function if exists percenttageOf;


delimiter $$
create function percenttageOf(getal1 int, getal2 double)
returns varchar(100)
deterministic
no sql
begin
	declare procent varchar(100) default '';
    
    if getal1 is null or getal2 is null then
		signal sqlstate '45000'
        set message_text = 'input waardes zijn ongeldig';
    else
		set procent = concat(floor((getal1/getal2) * 100), '%');
	end if;
    
    return procent;
end $$
delimiter ;


select percenttageOf() as percantage;