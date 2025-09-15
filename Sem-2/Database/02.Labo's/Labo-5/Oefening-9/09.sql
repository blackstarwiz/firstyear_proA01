use jason_db;

-- TRUNCATE(1973, 0): Dit zou geen decimalen hebben en geeft 1973.
-- TRUNCATE(1973, -1): Dit rondt af naar het dichtstbijzijnde tiental en geeft 1970.
-- TRUNCATE(1973, -2): Dit rondt af naar het dichtstbijzijnde honderdtal en geeft 1900.
-- TRUNCATE(1973, 1): Dit zou decimalen hebben (bijv. 197.3).

SELECT 
  TRUNCATE(ReleaseJaar, -1) AS `Decennium`, 
  COUNT(titel) AS `Aantal nummers`
FROM 
  liedjes
GROUP BY 
  TRUNCATE(ReleaseJaar, -1)
  HAVING 
  COUNT(titel) >= 450
  ORDER BY 
  TRUNCATE(ReleaseJaar, -1) ASC;

