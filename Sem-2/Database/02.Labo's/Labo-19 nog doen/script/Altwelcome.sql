use aptunes;

drop procedure if exists AltWelcome;


delimiter $$

create procedure AltWelcome(
	out welcomeAltMessage varchar(1000)
)
begin
	-- variable creeren voor het stoppen van de loop als er niets meer te vinden valt
    declare done int default 0;
   
   -- de welcome text die voor te top 3 bands komt te staan
	declare WelcomeText varchar(150) default 'Welkom bij APTunes! Dit zijn de drie bekenste bands ';
    declare BandsList varchar(500) default '';
    
	-- cursor declareren door de select statement gebruikt om de eerste 3 van de bands op te halen met de meeste liedjes
   declare current_topband varchar(250) default ''; 
   declare topBandsList_cursor cursor for select b.naam from bands b inner join liedjes l on l.albums_id = b.id group by b.naam order by count(l.id) desc limit 3; 
    
    -- continue handel maken voor de done statement op 1 te zetten
    declare continue handler for not found set done = 1;
    
open topBandsList_cursor;
    
    topBandLoop: loop
		fetch topBandsList_cursor into current_topband;
		if done = 1 then
			leave topBandLoop;
		end if;
        
         if BandsList = '' then
			set BandsList = current_topband;
		else
			set BandsList = concat(BandsList, ',', current_topband);
        end if;
    end loop topBandLoop;
close topBandsList_cursor;

set welcomeAltMessage = concat(WelcomeText,' ',BandsList,'.');
end $$

delimiter ;

call AltWelcome(@result);
select @result;