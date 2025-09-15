use herhaling_view_procedure;

-- versie zonder views

drop view if exists Aantal_Bestellingen_Per_Klant_Alle;

create view Aantal_Bestellingen_Per_Klant_Alle as
(
	select 
		k.naam,
        /* 
        voor beide waardes gaan we gebruik maken van coalesce
        om zowel het aantal als 0 te zien voor klanten met en zonder betesllingen 
        */
		coalesce(count(b.id), 0) as aantal_bestellingen
	from
		klanten k
	-- we joinen klanten op bestellingen
    -- dit staat toe om klanten die nog niets bestelt hebben een waarde 0 te geven
	left join bestellingen b on b.Klanten_Id = k.id
	group by k.naam
    order by aantal_bestellingen desc
);


-- versie met views (opgaven)
drop view if exists aantal_bestellingen_per_klant_allev2;

/*
we nemen beide views die de zelfde colommen bevatten, 
behalve aantal_bestellingen

we voegen (0 as aantal_bestellingen) toe aan SELECT van klanten_zonder_bestelling
zodat de kolommen gelijk zijn

om de andere view te koppelen gebruiken we union all

hier gebruiken we dezelfde kolommen maar ZONDER (0 as aantal_berstellingen)

voor de order by die kunnen we buiten de union all plaatsen bij de CREATE
of
we doen dit wanneer we de nieuwe view aanspreken
*/

create view aantal_bestellingen_per_klant_allev2 as
(
	select
		kz.naam,
        0 as aantal_bestellingen
	from
		klanten_zonder_bestelling kz
	
    union all
    
    select
		km.naam,
        km.aantal_bestellingen
	from
		aantal_bestellingen_per_klant km
);

select kv.* from aantal_bestellingen_per_klant_allev2 kv
order by kv.aantal_bestellingen desc, kv.naam;
