use jason_db;


select genre,count(genre)
from nummers
where nummers.Duurtijd >= 300
group by genre
order by genre;