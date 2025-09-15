use jason_db;

select avg(leeftijd) as avarageAge, geslacht
from honden
group by geslacht;

select count(*) aantal, geslacht
from honden
group by geslacht;

select leeftijd 
from honden
group by geslacht;