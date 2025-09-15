use project;

drop function if exists afdalingstijd_calculator;

delimiter $$

CREATE FUNCTION afdalingstijd_calculator (lengtePiste int,niveauLid varchar(100))
RETURNS varchar(50)
deterministic
NO SQL

BEGIN
declare prestatieTijd varchar(50);

declare uren int;
declare minuten int;

declare afdalingSnelheidMPerMin int;
declare tijdAfdalingPerNiveau int;

case niveauLid
	when 'beginner' then set afdalingSnelheidMPerMin = 167;
    when 'gimiddeld' then set afdalingSnelheidMPerMin = 500;
	WHEN 'expert' then set afdalingSnelheidMPerMin = 1167;
    else
		signal sqlstate '45000'
        set message_text = 'Ongeldig niveau: moet beginner, gemiddeld of expert zijn';
end case;

set tijdAfdalingPerNiveau = lengtePiste / afdalingSnelheidMPerMin;

if tijdAfdalingPerNiveau is not null
then
	set uren = tijdAfdalingPerNiveau div 60;
    set minuten = tijdAfdalingPerNiveau mod 60;
end if;

set prestatieTijd = concat(LPAD(uren, 2, '0'),':',lpad(minuten, 2, '0'),':',00);

RETURN prestatieTijd;
END$$

delimiter ;
