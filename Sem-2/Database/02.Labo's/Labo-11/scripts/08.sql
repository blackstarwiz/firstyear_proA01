use jason_db;


select s.voornaam, s.familienaam
from studenten s
where s.Id in (select studenten_id from verenigingrollen)
order by s.Voornaam, s.Familienaam;