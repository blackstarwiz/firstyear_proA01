use dokterspraktijk;

-- Opgave 1
drop function if exists ExporteerConsultatieNaarTekst;

delimiter $$

create function ExporteerConsultatieNaarTekst()
returns text
not deterministic
reads sql data
begin 
	declare consultantieList text;
	declare done int default 0;
    declare cDatum varchar(50) default '';
    declare cArts varchar(50) default '';
    declare cPatient varchar(50) default '';
    declare consutantieCursor cursor for
    select 
		c.datum,
        a.naam,
        coalesce(p.naam,'onbekend')
	from
		consultaties c
	right join artsen a on a.id = c.Arts_Id
    right join patienten p on p.id = c.Patient_Id;
	declare continue handler for not found set done = 1;
set consultantieList = '';
open consutantieCursor;
	getConsulData: loop
		fetch consutantieCursor into cDatum,cArts,cPatient;
        if done = 1 then
			leave getConsulData;
		end if;
        set consultantieList = concat('Consultatie: ',cDatum,'- Arts: ',cArts,'- Patient: ',cPatient,'\n');
	end loop getConsulData;
close consutantieCursor;
return consultantieList;
end $$

delimiter ;
-- -------------------------

select ExporteerConsultatieNaarTekst() as consultatie;