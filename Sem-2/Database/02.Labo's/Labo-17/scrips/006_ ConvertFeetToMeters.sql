use aptunes;

drop procedure if exists ConvertFeetToMeter;

delimiter $$
create procedure ConvertFeetToMeter(
	in feet int,
    in inches int,
    out meter decimal(10,2)
)
begin

	if feet is null or inches is null then
		signal sqlstate '45000'
        set message_text = 'fout opgetreden: Inputs mogen niet NULL zijn';
	end if;
    
    set meter = round((feet * 0.3048) + (inches * 0.0254), 2);
		
end $$

delimiter ;

set @result = 0;
call ConvertFeetToMeter(5,15,@result);
select @result as meters;