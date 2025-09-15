use jason_db;

select Genre, count(titel) as aantal
from nummers
group by nummers.Genre;