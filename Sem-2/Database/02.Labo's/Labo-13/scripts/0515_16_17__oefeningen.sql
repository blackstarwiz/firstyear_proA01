use jason_db;

/*
 stap 1 voeg id van boeken doe aan view met alter view
*/
alter view auteursboeken 
as
select
	concat(a.voornaam," ",a.familienaam) as auteurs,
    b.titel as titel,
    b.id as boeken_id
from 
	auteurs a
inner join boekennaarauteurs ba on ba.Auteurs_Id = a.Id
inner join boeken b on b.id = ba.Boeken_Id;

/*test*/
select * from auteursboeken;


/*
stap 2 create view gemiddelderatings op basis van reviews
*/

drop view if exists gemiddelderatings;

create view gemiddelderatings as
select 
	b.id,
	b.titel,
    r.rating
from
	boeken b
inner join reviews r on r.Boeken_Id = b.Id;

select * from gemiddelderatings;



/*
stap 3: create view auteursboekenratings met de twee verschillende views
*/


create view auteursboekenratings as
select 
	ab.auteurs,
    ab.titel,
    gr.rating
from
	auteursboeken ab
inner join gemiddelderatings gr on gr.id = ab.boeken_id;


select * from auteursboekenratings;