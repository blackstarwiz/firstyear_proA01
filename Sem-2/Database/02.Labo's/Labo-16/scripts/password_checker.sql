use password_checker;

drop function if exists password_checker_lab16;

delimiter $$

create function password_checker_lab16 (password_input char(150))
returns int
deterministic
no sql
begin
	declare result int default 0;
	declare i int default 1;
    
    declare len int default char_length(password_input);
    
    declare has_lowercase int default 0;
    declare has_uppercase int default 0;
	declare has_digit int default 0;

	declare ch char(1);
    
if len >=8 then	
    repeat
    
	set ch = substring(password_input,i,1);
    
    if ascii(ch) between 97 and 122 then
		set has_lowercase = has_lowercase + 1;
    end if;
    
    if ascii(ch) between 65 and 90 then
		set has_uppercase = has_uppercase + 1;
	end if;
    
    if ascii(ch) between 48 and 57 then
		set has_digit = has_digit + 1;
	end if;
    
	set i = i + 1;
until i >= len end repeat;
else
	signal sqlstate '45000'
    set message_text = 'lengte van password is kleiner dan 8';
end if;

if has_lowercase >= 1 and has_uppercase >= 1 and has_digit >= 1 then
	set result = 1;
else
	set result = 0;
end if; 

return result;
end $$

delimiter ;

select password_checker_lab16('jasonM47') as aantal;