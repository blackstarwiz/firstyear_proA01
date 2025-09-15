use jason_db;


select naam
from platformen
where id in (select platformen_id from releases);
