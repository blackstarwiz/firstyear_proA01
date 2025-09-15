use jason_db;


drop function if exists ConvertCelsiusToFahrenheit;

delimiter $$

create function ConvertCelsiusToFahrenheit(celsius decimal(10,2))
returns decimal(10,2)
not deterministic
no sql
begin

	declare Fahrenheit decimal(10,2);
    
    -- Controleer of de input NULL is
	if(celsius is null)then
		signal sqlstate '45000'
        set message_text = 'Celsius waarde mag niet NULL zijn';
	end if;
	
    -- Bereken de temperatuur in Farheit en rond af op 2 decimalen
	set Fahrenheit = round((celsius *  1.8) + 32);
    
    return Fahrenheit;
end $$

delimiter ;

select ConvertCelsiusToFahrenheit(-7)as Fahrenheit;