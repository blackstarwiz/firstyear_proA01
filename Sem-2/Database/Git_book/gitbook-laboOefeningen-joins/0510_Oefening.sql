use jason_db;


select distinct p.naam
from platformen p
join releases r on p.Id = r.Platformen_Id;


SELECT DISTINCT p.naam
FROM Platformen p
right join Releases r ON p.id = r.platformen_id
left join Games g ON r.games_id = g.id;