use jason_db;


select titel,Duurtijd
from nummers
where nummers.Duurtijd <= 180
order by nummers.Duurtijd desc;
