use aptunes;

drop procedure if exists welcome;

delimiter $$

create procedure welcome(
	out welcomMessages varchar(1000)
)
begin
	declare genreList varchar(500) default '';
    declare welcome varchar(150) default 'Welkom bij APTunes! Wij hebben';

	declare done int default 0;
    declare currentGenre varchar(50);
	DECLARE genreCursor CURSOR FOR SELECT naam FROM genres;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;
    
open genreCursor;
    
    getgenre: loop
		fetch genreCursor into currentGenre;
        if done = 1
        then
			leave getgenre;
		end if;
        if genreList = '' then
			set genreList = currentGenre;
		else
			set genreList = concat(genreList, ',', currentGenre);
        end if;
	end loop getgenre;
    
close genreCursor;   

set welcomMessages = concat(welcome,' ',genreList, '.');
    
end $$

delimiter ;

call welcome(@result);
select @result;


-- --------------------------------

-- versie zonder cursor


drop procedure welcomeV2;

delimiter $$
create procedure welcomeV2(
	out welcomeMessage varchar(1000)
)
begin
	declare welcomeText varchar(150) default 'Welkom bij APTunes! Wij hebben ';
    declare listGenres varchar(500) default '';
    
    select group_concat(naam separator ', ') from genres into listGenres;

	set welcomeMessage = concat(welcomeText,listGenres,'.');
end $$

delimiter ;

call welcomeV2(@result2);
select @result2;