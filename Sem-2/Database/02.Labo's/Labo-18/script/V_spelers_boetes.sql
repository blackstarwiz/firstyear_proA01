use tennis;


drop view if exists V_spelers_boetes;


create view V_spelers_boetes as
select
	s.spelersnr,
    s.Naam,
    coalesce(sum(b.bedrag), 0) as totaal_bedrag_boetes
from
	boetes b
right join spelers s on s.SpelersNr = b.SpelersNr
group by s.SpelersNr
order by totaal_bedrag_boetes desc;
    
    
select * from v_spelers_boetes;