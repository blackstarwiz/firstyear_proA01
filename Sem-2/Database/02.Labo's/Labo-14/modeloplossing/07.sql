USE `aptunes`;
DROP procedure IF EXISTS `MockAlbumreleaseWithMessage`;

DELIMITER $$
USE `aptunes`$$

CREATE PROCEDURE `MockAlbumreleaseWithMessage` ()
BEGIN
	DECLARE success bool;
	CALL MockAlbumreleaseWithSuccess(success);
	IF success THEN
		SELECT 'Release toevoegen gelukt!';
	ELSE
		SELECT 'Release toevoegen niet gelukt!';
	END IF;
END$$

DELIMITER ;

