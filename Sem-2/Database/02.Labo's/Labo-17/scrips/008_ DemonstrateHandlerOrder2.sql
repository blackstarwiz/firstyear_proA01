use aptunes;

drop procedure if exists DemonstrateHandlerOrder2;


delimiter $$

create procedure DemonstrateHandlerOrder2()
begin

	-- 1) Eerst alle variabelen declareren
	declare randnum int default 0;
     
	-- 2) Daarna alle handlers
	declare exit handler for sqlstate '45002'
	begin
        resignal set message_text = 'State 45002 opgevangen. Geen probleem.';
	end;
    
    declare exit handler for sqlexception
    begin
        resignal set message_text = 'Een algemene fout opgevangen.';
	end;
    
	-- 3) Pas dan je logica
    set randnum = floor(rand() * 4);
    
    case randnum
		when 1 then signal sqlstate '45001';
		when 2 then signal sqlstate '45002';
		else signal sqlstate '45003';
	end case;
   
end$$

delimiter ;

call DemonstrateHandlerOrder2();