use jason_db;


select *
from nummers
where nummers.Artiest = "Blues Pills";


select *
from nummers
where nummers.Artiest = "Ghostface Killah" or nummers.Artiest = "Blues Pills"
order by nummers.Artiest, nummers.Titel;