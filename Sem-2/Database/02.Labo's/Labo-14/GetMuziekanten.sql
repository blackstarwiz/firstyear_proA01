CREATE PROCEDURE `GetMuzikanten` ()
BEGIN
	SELECT
		Voornaam,
		Familienaam,
        Geboortedatum
	FROM
		Muziekanten
	ORDER BY 1,2,3;
END
