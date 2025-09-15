use aptunes;

drop procedure if exists MockAlbumRelease;


delimiter $$
create procedure MockAlbumRelease()
begin
-- declare variablen
	declare numberOfAlbums int default 0;
    declare numberOfBands int default 0;
    declare randomAlbumId int default 0;
    declare randomBandId int default 0;
    
-- het aantal vinden zowel in table albums en bands
-- deze plaatsen in de gemaakte variablen: numberOfAlbums en numberOfBands
    select count(id) into numberOfAlbums from albums;
	
    select count(id) into numberOfBands from bands;
    
-- random variable getal laten generen
	set randomAlbumId = floor(rand() * numberOfAlbums) + 1;
    set randomBandId = floor(rand() * numberOfBands) + 1;
    
-- if statement om te zien of random getallen voor komen in table albumreleases
-- 
    if not exists(
		select 1 from albumreleases
        where Albums_Id = randomAlbumId and Bands_Id = randomBandId
    ) then
		insert into albumreleases (albums_id,bands_id)
        values (randomAlbumId,randomBandId);
	end if;
end$$
delimiter ;

call MockAlbumRelease();