use jason_db;


select 
	g.Titel,
    coalesce(p.naam,"platform niet meer ondersteund") as naam
from
	platformen p
inner join releases r on p.id = r.Platformen_Id
right join games g on r.Games_Id = g.Id;