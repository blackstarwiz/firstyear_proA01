use project;

drop procedure if exists Maaltijd_lid;

delimiter //

create procedure Maaltijd_lid(
	in lidnaam varchar(100)
    ,in beschrijving_lid varchar(250)
)
begin
	declare randomNumber int;
	declare exit handler for sqlexception
    begin
		rollback;
		
        select 'Fout opgetreden. lid en maaltijd is niet toegevoegd' as messages;
        
    end;
 
	start transaction;

    set randomNumber = floor(random()*61);
    
    if lidnaam = '' then
		signal sqlstate '45000'
		set message_text = 'Input fout opgetreden. Voer geldige waarde in';
    end if;
    
    insert into groepsleden(naam,leeftijd,ski_ervaring,aantalvakanties,landvanherkomst)
    values(
		lidnaam,randomNumber,'beginner',5,'DE'
	);
    
	set groepslid_id = last_insert_id();
    
    if beschrijving_lid = '' then
		signal sqlstate '45000'
        set message_text = 'Input fout opgetreden. Beschrijving maaltijd is null';
    end if;
    
    insert into maaltijden(dag,tijdstip,maaltijd_type,beschrijving,kosten)
    values(
		curdate(),current_time(),'avondeten',beschrijving_lid,randomNumber
    );
    commit;
end //

delimiter ;