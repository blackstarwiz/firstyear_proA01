use tennis;

drop view if exists V_spelers_per_Team;


create view V_spelers_per_Team as
select
	t.divisie,
    count(t.spelersnr) as aantal_spelers
from
	teams t
group by t.divisie;



select * from V_spelers_per_Team;