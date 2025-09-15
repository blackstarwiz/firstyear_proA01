use tennis;

drop procedure if exists SP_Toon_SpelerInfo;

delimiter $$
create procedure SP_Toon_SpelerInfo(
	in spelerNum int
)
begin
	if not exists (select SpelersNr from spelers where spelers.SpelersNr = spelerNum) then
		signal sqlstate '45000'
        set message_text = 'fout opgetreden: spelersNummer komt niet voor in database';
   end if;
    
    select 
		*
	from 
		spelers
	where 
		spelers.SpelersNr = spelerNum;
end $$

delimiter ;


call SP_Toon_SpelerInfo(2);