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
-- -------------------------

call NieuweConsultatieMetBetaling(1,1);