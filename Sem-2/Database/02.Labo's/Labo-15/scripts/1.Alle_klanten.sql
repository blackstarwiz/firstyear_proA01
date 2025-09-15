use herhaling_view_procedure;

drop view if exists Alle_Klante;


create view Alle_Klanten as
(
	select 
		k.naam,
        k.gemeente
	from klanten k
    order by k.gemeente, k.naam
		
);

select * from alle_klanten;