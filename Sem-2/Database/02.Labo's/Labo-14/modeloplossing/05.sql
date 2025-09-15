DELIMITER $$

CREATE PROCEDURE `MockAlbumrelease`()
BEGIN
	DECLARE randomAlbumId INT DEFAULT 0;
	DECLARE randomBandId INT DEFAULT 0;
    
    SELECT Id FROM Bands ORDER BY rand() LIMIT 1 INTO randomBandId;
    SELECT Id FROM Albums ORDER BY rand() LIMIT 1 INTO randomAlbumId;

	IF (randomBandId, randomAlbumId) 
		NOT IN (SELECT Bands_Id, Albums_Id FROM Albumreleases) 
	THEN
		INSERT INTO Albumreleases(Bands_Id, Albums_Id)
		VALUES(randomBandId, randomAlbumId);
	END IF;
END$$

DELIMITER ;
