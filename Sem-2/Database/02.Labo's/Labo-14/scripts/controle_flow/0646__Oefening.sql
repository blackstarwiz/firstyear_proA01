use aptunes;

drop procedure if exists MockAlbumReleases;


delimiter $$
create procedure MockAlbumReleases(
	in extraReleases int
)
begin
	declare counter int default 0;
    declare success bool;
    
    repeat
		call MockAlbumReleaseWithSuccess(@success);
        if @success then
			set counter = counter + 1;
		end if;
	until counter >= extraReleases
    end repeat;
    
end$$
delimiter ;

call MockAlbumReleases(20);
