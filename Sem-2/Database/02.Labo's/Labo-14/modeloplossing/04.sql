USE `aptunes`;
DROP procedure IF EXISTS `CreateAndReleaseAlbum`;

DELIMITER $$

USE `aptunes`$$

CREATE PROCEDURE `CreateAndReleaseAlbum` (IN titel varchar(100), IN bands_Id int)
BEGIN
	INSERT INTO Albums(Titel)
	VALUES(titel);

	INSERT INTO Albumreleases(Bands_Id, Albums_Id)
	VALUES(bands_Id, last_insert_id());
END$$

DELIMITER ;

