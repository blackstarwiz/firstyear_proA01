USE `aptunes`;
DROP procedure IF EXISTS `CleanupOldMemberships`;

DELIMITER $$

USE `aptunes`$$

CREATE PROCEDURE `CleanupOldMemberships` (IN endDate date, OUT numberCleaned int)
BEGIN
	SELECT COUNT(*)
	FROM Lidmaatschappen
	WHERE Einddatum < endDate
	INTO numberCleaned;

	DELETE FROM Lidmaatschappen
	WHERE Einddatum < endDate;

-- sommige studenten gebruikten de eerste select niet
-- je mag ook doen: set numberCleaned = row_count()
-- dat moet dan *na* de DELETE doen (en behoort niet tot de leerstof)
END$$

DELIMITER ;

