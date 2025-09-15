USE `aptunes`;
DROP procedure IF EXISTS `NumberOfGenres`;

DELIMITER $$

USE `aptunes`$$

CREATE PROCEDURE `NumberOfGenres` (out result tinyint)
BEGIN
	SELECT COUNT(*)
	FROM Genres
	INTO result;
END$$

DELIMITER ;

