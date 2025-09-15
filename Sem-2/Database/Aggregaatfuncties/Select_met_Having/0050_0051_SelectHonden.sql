use jason_db;
-- 0050
select avg(leeftijd)
from honden
group by Geslacht
having geslacht = "mannelijk";

-- 0051

select geslacht
from honden
group by geslacht
having avg(leeftijd) > 4;
