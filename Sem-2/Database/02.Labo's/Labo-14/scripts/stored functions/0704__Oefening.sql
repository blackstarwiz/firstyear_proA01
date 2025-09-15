use jason_db;


drop function if exists ConvertFeetToMeters;


delimiter $$
create function ConvertFeetToMeters(feet int, inches int)
returns decimal(10,2)
not deterministic
no sql
begin
	declare meters int;
    
    if(feet is null or inches is null) then
		signal sqlstate '45000'
        set message_text = 'ongeldige inputs: Feet en Inches moeten geldig zijn';
    end if;
    
    return round((feet * 0.3048) + (inches * 0.0254),2);
end $$

delimiter ;

select ConvertFeetToMeters(84,6512) as meters;