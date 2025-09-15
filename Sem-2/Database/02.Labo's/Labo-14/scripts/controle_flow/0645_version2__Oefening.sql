use aptunes;


drop procedure if exists MockAlbumReleaseWithSuccess;

delimiter $$
create procedure MockAlbumReleasewithsuccess(
	out success bool
)
begin
    declare randomAlbumId int default 0;
    declare randomBandId int default 0;
    
    
    select id into randomAlbumId from albums order by rand() limit 1;
    select id into randomBandId from bands order by rand() limit 1;
    
    if(randomAlbumId, randomBandId)
    not in(
		select bands_id, albums_id from albumreleases
    )then
		insert into albumreleases (albums_id, bands_id)
        values(randomAlbumId,randomBandId);

        set success = 1;
	else
		set success = false;
	end if;
end$$
delimiter ;

call mockalbumreleaseWithSuccess(@result);
select @result as added_succes;