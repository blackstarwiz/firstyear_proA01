use aptunes;

drop procedure if exists MockAlbumreleaseWithSuccessLoop;


delimiter $$

CREATE PROCEDURE MockAlbumreleaseWithSuccessLoop(
    IN extraReleases INT
)
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE successFlg BOOL;

extrareleasesLoop : loop

	CALL MockAlbumReleaseWithSuccess(@successFlg);
	SET successFlg = @successFlg;
			
	IF successFlg THEN
		SET counter = counter + 1;
	END IF;
            
	if counter >= extraReleases then
            leave extrareleasesLoop;
	end if;
    
END loop extrareleasesLoop;
    
    SELECT counter AS aantal_toegevoegd;
    
END$$

delimiter ; 

call MockAlbumreleaseWithSuccessLoop(10);