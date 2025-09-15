use jason_db;

select voornaam, familienaam
from geboortes
where gewichtInKilogram >= 3
order by gewichtInKilogram asc;