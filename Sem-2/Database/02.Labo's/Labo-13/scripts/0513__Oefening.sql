use jason_db;

set sql_safe_updates = 0;

drop view if exists auteursboeken;

create view auteursboeken as
SELECT 
	concat(a.voornaam," ",a.familienaam) as auteurs,
    b.titel as titel
FROM auteurs a
inner join boekennaarauteurs ba on ba.auteurs_id = a.id
inner join boeken b on ba.boeken_id = b.id;



select * from auteursboeken;