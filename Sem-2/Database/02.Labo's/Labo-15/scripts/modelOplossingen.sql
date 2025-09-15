-- 1. VIEW 'Alle_Klanten'
CREATE VIEW Alle_Klanten
AS
SELECT Gemeente, Naam
FROM Klanten
ORDER BY Gemeente, Naam;

-- 2. VIEW 'Alle_Klanten_Brussel_Antwerpen'
CREATE VIEW Alle_Klanten_Brussel_Antwerpen
AS
SELECT *
FROM Alle_Klanten
WHERE Gemeente IN ('Brussel', 'Antwerpen');

-- 3. VIEW 'Aantal_Bestellingen_Per_Klant'
CREATE VIEW Aantal_Bestellingen_Per_Klant
AS
SELECT Naam AS Klant, COUNT(*) AS 'Aantal bestellingen'
FROM Klanten
INNER JOIN Bestellingen
ON Klanten.Id = Klanten_Id
GROUP BY 1
ORDER BY 1;

-- 4. VIEW 'Klanten_Zonder_Bestellingen'
CREATE VIEW Klanten_Zonder_Bestellingen
AS
SELECT Naam AS 'Klant', 0 AS 'Aantal bestellingen'
FROM Klanten
WHERE Id NOT IN (SELECT DISTINCT Klanten_Id FROM Bestellingen);

-- 5. VIEW 'Aantal_Bestellingen_Per_Klant_Alle'
CREATE VIEW Aantal_Bestellingen_Per_Klant_Alle
AS
SELECT Klant, `Aantal bestellingen`
FROM Aantal_Bestellingen_Per_Klant
UNION ALL
SELECT Klant, `Aantal bestellingen`
FROM Klanten_Zonder_Bestellingen
ORDER BY `Aantal bestellingen` DESC, Klant;

-- 6. VIEW 'Goede_Klanten'
CREATE VIEW Goede_Klanten
AS
SELECT Klant, `Aantal bestellingen`
FROM aantal_bestellingen_per_klant
WHERE `Aantal bestellingen` >= 3;

-- 7. VIEW 'Alle_Bestellingen'
CREATE VIEW Alle_Bestellingen
AS
SELECT Naam, Gemeente, ProductOmschrijving, Aantal
FROM Klanten INNER JOIN Bestellingen
ON Klanten.Id = Klanten_Id
INNER JOIN Producten
ON Producten_Id = Producten.Id
ORDER BY 1, 3;

-- 8. VIEW 'Alle_Grote_Bestellingen'
CREATE VIEW Alle_Grote_Bestellingen
AS
SELECT *
FROM Alle_Bestellingen
WHERE Aantal > (SELECT AVG(Aantal) FROM bestellingen);

-- 9. SP 'zoek_klanten_op_naam'
DROP procedure IF EXISTS `zoek_klanten_op_naam`;

DELIMITER $$
USE `labo16`$$
CREATE PROCEDURE `zoek_klanten_op_naam` (IN zoek_term VARCHAR(50))
BEGIN
	SELECT *
    FROM klanten
    WHERE Naam LIKE CONCAT('%', zoek_term, '%');
END$$

DELIMITER ;

CALL PROCEDURE zoek_klanten_op_naam('na')

-- 10. SP 'aantal_klanten'
DROP procedure IF EXISTS `aantal_klanten`;

DELIMITER $$
USE `labo16`$$
CREATE PROCEDURE `aantal_klanten` (OUT aantal int)
BEGIN
	SET aantal = (SELECT COUNT(*)
			FROM klanten);
-- dit kon ook opgelost worden met: INTO aantal
END$$

DELIMITER ;

-- oproep SP voor opgave 2
CALL aantal_klanten(@aantal);
SELECT @aantal;

-- 11. 'SP klanten_met_minimaal_X_bestellingen'
DROP procedure IF EXISTS `klanten_met_minimaal_X_bestellingen`;

DELIMITER $$
USE `labo16`$$
CREATE PROCEDURE `klanten_met_minimaal_X_bestellingen` (IN aantal int)
BEGIN
	SELECT Naam AS Klant, COUNT(*) AS `Aantal bestellingen`
	FROM Klanten
	INNER JOIN Bestellingen
	ON Klanten.Id = Klanten_Id
	GROUP BY Naam
	HAVING `Aantal bestellingen` >= aantal
	ORDER BY 1;
END$$

DELIMITER ;

-- oproepen SP
CALL klanten_met_minimaal_X_bestellingen(4);

-- 12. SP 'toplijst_best_verkochte_producten'
DROP procedure IF EXISTS `toplijst_best_verkochte_producten`;

DELIMITER $$
USE `labo16`$$
CREATE PROCEDURE `toplijst_best_verkochte_producten` (IN aantal_in_top int)
BEGIN
	SELECT ProductOmschrijving AS Product, SUM(Aantal) AS Aantal
	FROM Bestellingen INNER JOIN Producten
	ON Producten_Id = Producten.Id
	GROUP BY ProductOmschrijving
	ORDER BY 2 DESC, 1
	LIMIT aantal_in_top;
END$$

DELIMITER ;

-- oproepen SP:
CALL toplijst_best_verkochte_producten(3)