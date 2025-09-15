use jason_db;

select count(n.titel) as nummers
from nummers n
inner join artiesten on n.Artiesten_Id = artiesten.Id
where artiesten.Naam like 'L%Z%';