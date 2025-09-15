use jason_db;

set sql_safe_updates =0;
delete
from nummers
where nummers.ReleaseDatum is null;

set sql_safe_updates = 1;

select *
from nummers;