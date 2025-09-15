use aptunes;


drop function if exists RandUpTo;


delimiter $$
create function RandUpTo(bovengrens int)
returns int
not deterministic
no sql
begin

	declare randomNum int default 0;

	if bovengrens is null or bovengrens <= 0  then
		signal sqlstate '45000'
        set message_text = 'ingevoerde waarde is ongeldig';
        
	else
		set randomNum = rand() * bovengrens;
    end if; 
    
    return randomNum;
end $$
delimiter ;


select RandUpTo(12) as randomNumber;