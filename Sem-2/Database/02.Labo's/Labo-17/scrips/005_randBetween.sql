use aptunes;

drop function if exists RandBetween;

delimiter $$

create function RandBetween(getal1 int, getal2 int)
returns int
not deterministic
no sql
begin
	declare verschil int default 0;
    declare result int default 0;
    
	if getal1 > getal2 or getal1 is null or getal2 is null then
		signal sqlstate '45000'
        set message_text = 'fout opgetreden: eerste getal is groter of getallen zijn null';
    else
		set verschil = getal2 - getal1;
        
        set result = randUpTo(verschil);
    end if;
	return result;
end $$
delimiter ;

select RandBetween(120,2) as result;