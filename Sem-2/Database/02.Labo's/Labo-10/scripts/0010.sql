use jason_db;



select a.naam, max(l.Royalties) as HoogsteRoyalties
from artiesten a
inner join liedjes l
on a.Id = l.Artiesten_Id
where l.Royalties is not null
group by a.Naam
order by HoogsteRoyalties asc;