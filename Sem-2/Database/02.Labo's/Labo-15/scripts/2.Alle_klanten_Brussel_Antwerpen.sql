use herhaling_view_procedure;

drop view if exists alle_klanten_brussel_antwerpen;

create view Alle_Klanten_Brussel_Antwerpen as
(
	select 
		k.*
	from alle_klanten k 
    where
		k.gemeente like ('Brussel') or k.gemeente like ('Antwerpen')
    order by k.gemeente, k.naam
);

