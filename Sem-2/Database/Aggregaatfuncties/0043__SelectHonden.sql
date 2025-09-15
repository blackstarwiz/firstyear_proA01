use jason_db;

select sum(Leeftijd) as leeftijd
from honden;

select sum(leeftijd + 1) as leeftijd from honden;