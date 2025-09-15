use jason_db;


set @gemiddelde = (select round(avg(cijfer)) from evaluaties);

select @gemiddelde;


select e.studenten_id
from evaluaties e
group by e.studenten_id
having avg(e.cijfer) > @gemiddelde;