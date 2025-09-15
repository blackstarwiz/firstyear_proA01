use jason_db;


drop function if exists RandUpTo;


delimiter $$

create function RandUpTo(getal int)
returns int
not deterministic
no sql
begin
	if(getal is null or getal < 1)then
		signal sqlstate '45000'
		set message_text = 'getal moet positieve waarde hebben';
	else
		return floor(rand() * getal) + 1;
	end if;
    
end$$
delimiter ;

select RandUpTo(812) as bedrag;