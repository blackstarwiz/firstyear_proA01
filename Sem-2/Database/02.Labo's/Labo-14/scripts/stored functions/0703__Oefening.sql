use jason_db;


drop function if exists RandBetween;


delimiter $$
create function RandBetween(eersteGetal int, tweedeGetal int)
returns int
not deterministic
no sql
begin
	declare verschil int;
    
    if(eersteGetal is null or tweedeGetal is null or eersteGetal > tweedeGetal)then
		signal sqlstate '45000'
        set message_text = 'Ongeldige input: minWaarde en maxWaarde moeten geldig zijn en min <= max';
	end if;
    
    set verschil = tweedeGetal - eersteGetal;
    
    return eersteGetal + RandUpTo(verschil + 1) - 1;
end $$

delimiter ;


select RandBetween(1, 10) as 'random getal';