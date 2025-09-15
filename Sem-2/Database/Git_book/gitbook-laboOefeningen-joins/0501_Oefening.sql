use jason_db;

-- zoeken naar de boeken die bij de auteurs passen
select 
	a.voornaam, a.familienaam,b.titel
from
	auteurs a
inner join
	boeken b
where a.Id = b.Id;

truncate table boekennaarauteurs;

set sql_safe_updates = 0;

delete from boekennaarauteurs;

set sql_safe_updates = 1;
-- hele moeilijke insert voor beginnend te zijn in join
-- het is dieper dan verwacht voor de eerste oefening
-- is er zelf een makkelijker manier
INSERT INTO BoekenNaarAuteurs (Boeken_id, Auteurs_id)
SELECT 
    b.Id AS Boeken_id, 
    a.Id AS Auteurs_id
FROM auteurs a
JOIN boeken b 
ON (b.Titel IN ('Norwegian Wood', 'Kafka on the Shore') AND a.Voornaam = 'Haruki')
OR (b.Titel IN ('American Gods', 'The Ocean at the End of the Lane', 'Good Omens') AND a.Voornaam = 'Neil')
OR (b.Titel = 'Good Omens' AND a.Voornaam = 'Terry');