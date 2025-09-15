select group_concat(naam) as namen, group_concat(leeftijd) as leeftijden, geslacht
from honden
group by honden.Geslacht;