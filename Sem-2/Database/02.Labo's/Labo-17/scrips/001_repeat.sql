use aptunes;

drop procedure if exists MockAlbumreleaseWithSuccessRepeat;


delimiter $$

CREATE PROCEDURE MockAlbumreleaseWithSuccessRepeat(
    IN extraReleases INT
)
BEGIN
    DECLARE counter INT DEFAULT 0;
    DECLARE successFlg BOOL;

    REPEAT
        CALL MockAlbumReleaseWithSuccess(@successFlg);
        SET successFlg = @successFlg;
        
        IF successFlg THEN
            SET counter = counter + 1;
        END IF;
        
    UNTIL counter >= extraReleases
    
    END REPEAT;
    
    SELECT counter AS aantal_toegevoegd;
END$$

delimiter ; 

call MockAlbumreleaseWithSuccessRepeat(10);