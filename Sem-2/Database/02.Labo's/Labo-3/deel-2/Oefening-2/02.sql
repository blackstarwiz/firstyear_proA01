use jason_db;

select *
from geboortes
where Voornaam = "Thijs";

set SQL_SAFE_UPDATES = 0;

update geboortes
set gewichtInKilogram = 2.8
where Voornaam = "Thijs";

set SQL_Safe_Update = 1;