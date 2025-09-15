use jason_db;



select a.titel as Albumtitel, max(l.duurtijd) as "Langste Duurtijd"
from albums a
inner join liedjes l
on a.Artiesten_Id = l.Artiesten_Id
group by a.Titel;