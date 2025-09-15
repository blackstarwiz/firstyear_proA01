use aptunes;

drop procedure if exists MockAlbumRelease;

delimiter $$
create procedure MockAlbumRelease()
begin
    declare randomAlbumId int default 0;
    declare randomBandId int default 0;
    
    -- selecteer id van albums en bands en de order is random en gefilterd op 1 output
    select id into randomAlbumId from albums order by rand() limit 1;
    select id into randomBandId from bands order by rand() limit 1;
	-- als de random numbers niet in de database zitten gaan we ze toevoegen
    if(randomAlbumId,randomBandId)
		not in(	
			select bands_id, albums_id from albumreleases
        )then
        -- we voegen de nieuwe album_id en bands_id toe aan de database
	insert into albumreleases(albums_id, bands_id)
        values(randomAlbumId,randomBandId);
        
        select albums_id,bands_id from albumreleases 
        order by bands_id asc limit 5;
	end if;
end$$
delimiter ;

call mockalbumrelease();