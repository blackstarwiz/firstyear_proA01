use jason_db;

-- waarom kan ik niet in 1 keer doen ?
select g.titel, coalesce(p.naam,'platform niet ondersteund') as platform
from 
	releases r
right join
	platformen p
on 
	r.Platformen_Id = p.Id
right join games g
on
	r.Games_Id = g.id