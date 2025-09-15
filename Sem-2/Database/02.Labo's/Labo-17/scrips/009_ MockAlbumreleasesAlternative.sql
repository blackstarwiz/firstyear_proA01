use aptunes;


drop procedure if exists MockAlbumreleasesAlternative;

delimiter $$
create procedure MockAlbumreleasesAlternative(
	in maxReleases int
)
begin
	declare fouten int default 0;
	declare doelnummer int;
    declare teller int default 0;
    declare albumId int;
    declare bandId int;
    
    declare continue handler for sqlstate '23000' begin
		set fouten = fouten + 1;
    end;
    
    set doelnummer = floor(rand() * maxReleases) + 1;
    
    while teller < doelnummer do
    
		select id into albumId 
        from albums
        order by rand()
        limit 1;
        
        select id into bandId
        from albums
        order by rand()
        limit 1;
        
        insert into albumreleases (albums_id,bands_id)
        values(albumId,bandId);
        
        if row_count() = 1 then
			set teller = teller + 1;
		end if;
        
    end while;
    
    select teller as aantal_toegevoegd,
		doelnummer as doelAantal,
        fouten as errorTeller;
end $$
delimiter ;

call MockAlbumreleasesAlternative(150);