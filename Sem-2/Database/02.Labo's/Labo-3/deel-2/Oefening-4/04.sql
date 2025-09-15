use jason_db;

select * from geboortes;

select substring(familienaam,1,1) as familienaam
from geboortes;

update geboortes
set familienaam = concat(substring(familienaam,1,1), '.');