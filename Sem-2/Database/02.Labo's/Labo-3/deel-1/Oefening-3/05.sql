use jason_db;

select artist
from liedjes
where AantalVerkocht > 5000
order by AantalVerkocht desc;


