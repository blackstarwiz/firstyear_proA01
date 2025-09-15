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

select ExporteerConsultatieNaarTekst() as consultatie;
-- -------------------------

use dokterspraktijk;

-- Opgave 2
drop procedure if exists NieuweConsultatieMetBetaling;


delimiter $$
create procedure NieuweConsultatieMetBetaling(
in arts_id int, 
in patient_id int
)
begin
	declare exit handler for sqlexception
    begin 
		rollback;
        select 'Geen geldige id voor arts en/of patient' as messages;
    end ;
    start transaction; 
		if arts_id is null or patient_id is null then
			signal sqlstate '45000';
            select 'geen geldige id mee gegeven';
		end if;
		insert into consultaties(Arts_id,Patient_id,Datum) values 
        (
			arts_id,
            patient_id,
            now()
        );
        insert into betalingen(consultatie_id,bedrag,Opmerking) values(
			last_insert_id(),25,'betaling geregistreed na consultatie'
        );
    commit;
end $$

delimiter ;

call NieuweConsultatieMetBetaling(1,1);
-- -------------------------

-- Opgave 3
/*

vraag 3.1:
b

vraag 3.2:
c

vraag 3.3:
d

vraag 3.4:
c
*/


