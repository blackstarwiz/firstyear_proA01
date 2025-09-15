use tennis;

select
	s.spelersnr,
    Vb.totaal_bedrag_boetes as bedrag,
    s.Naam
from 
	spelers s
inner join v_spelers_boetes Vb on Vb.spelersnr = s.SpelersNr
where Vb.totaal_bedrag_boetes > 80;