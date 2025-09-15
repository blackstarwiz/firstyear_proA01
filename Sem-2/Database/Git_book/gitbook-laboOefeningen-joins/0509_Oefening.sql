use jason_db;

select * from taken;

-- deze output geef ook een rij dat niet bestaat 
-- maar wel getoont wordt met waardes null
select *
from
	taken
where taken.Leden_Id is null;

-- dit zal de leerkracht bedoelen om het proper uit de database tekrijgen
select coalesce(l.voornaam,'taak niet toegewezen') as voornaam, t.omschrijving
from leden l
	right join taken t on l.id = t.Leden_Id 
where t.Leden_Id is null