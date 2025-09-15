use tennis;

drop function if exists bestaatspeler;

delimiter $$
create function bestaatspeler(spelerNum int)
returns boolean
deterministic
reads sql data
begin 
	declare bestaat boolean;
    
	select exists(
		select 
			1
		from 
			spelers
        where
			spelers.SpelersNr = spelerNum
	) into bestaat;

return bestaat;
end $$

delimiter ;

select bestaatspeler(2) as bestaat;