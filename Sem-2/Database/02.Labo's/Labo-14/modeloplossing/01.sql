USE `aptunes`;
DROP procedure IF EXISTS `GetLiedjes`;

DELIMITER $$

USE `aptunes`$$

CREATE PROCEDURE `GetLiedjes` (IN word VARCHAR(50))
BEGIN
	SELECT Titel
	FROM Liedjes
	WHERE Titel LIKE CONCAT('%', word, '%');
END$$

DELIMITER ;

