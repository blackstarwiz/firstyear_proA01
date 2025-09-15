
select 
	coalesce(g.titel,'geen games gekend') as titel,
    coalesce(p.naam,'geen platforn gekend') as platform
from
	games g
inner join releases r on g.id = r.Games_Id
inner join platformen p on r.Platformen_Id = p.Id;

select * from games;