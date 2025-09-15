use jason_db;

select count(*) as aantal, geslacht, leeftijd
from honden
group by geslacht, leeftijd
order by leeftijd, geslacht;