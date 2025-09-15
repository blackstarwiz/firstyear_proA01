select jason_db;

select count(l.titel) as aantal
from liedjes l
inner join artiesten a
on l.Artiesten_Id = a.Id
where a.Naam like 'L% Z%';

-- checken of enkel de juiste artiest wordt getoont
select l.Titel, a.Naam
from liedjes l
inner join artiesten a
on l.Artiesten_Id = a.Id
where a.Naam like 'L% Z%';