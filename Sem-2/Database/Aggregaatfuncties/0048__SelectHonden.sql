use jason_db;

select count(*) as aantal, leeftijd
from honden
group by leeftijd
order by leeftijd;