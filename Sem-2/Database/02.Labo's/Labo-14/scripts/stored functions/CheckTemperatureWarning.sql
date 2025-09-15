use jason_db;


drop function if exists CheckTemperatureWarning;


delimiter $$
create function CheckTemperatureWarning(StatusFahrenheit decimal(10,2))
returns varchar(100)
not deterministic
no sql
begin
	declare TextStatus varchar(100);

	if(StatusFahrenheit is null)then
		signal sqlstate '45000'
        set message_text = 'ongeldige input: waarde moet geldig zijn';
	else
		 if(StatusFahrenheit < 0)then
			set TextStatus =  'Koud! Kans op vorst';
		elseif(StatusFahrenheit >= 0 and StatusFahrenheit < 30)then
			set TextStatus = 'Normale temperatuur';
		else
			set TextStatus = 'Warm! Hydrateer goed';
		end if;
	end if;
    
	return TextStatus;
end $$

delimiter ; 


select CheckTemperatureWarning(-5) as 'status';