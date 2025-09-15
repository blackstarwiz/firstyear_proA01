use jason_db;

DROP TEMPORARY TABLE temp_gemiddelden;

create temporary table temp_gemiddelden as
select Studenten_Id, avg(cijfer) as gemiddelde
from evaluaties
where cijfer is not null
group by studenten_id;


select s.voornaam,tg.studenten_id as id
from temp_gemiddelden tg
inner join studenten s on tg.studenten_id = s.Id
order by tg.gemiddelde asc
limit 1;