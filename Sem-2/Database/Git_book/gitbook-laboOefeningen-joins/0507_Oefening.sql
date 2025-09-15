use jason_db;

-- je kunt dit beide kanten doen zowel left als right
select coalesce(l.voornaam,'taak niet toegewezen') as voornaam, t.omschrijving
from leden l
	right join taken t on l.id = t.Leden_Id 