use jason_db;

/*Insert pistes*/

insert into pistes(Naam,lengte,moeilijkheidsgraad) 
values
	("La Verte des Houches", 3,"rood"),
	("Sarenne",16,"zwart"),
	("Bellecote",2,"zwart"),
	("La Foret",4,"blauw"),
	("Cascades",14,"Blauw");


/*Insert Skivakantie*/

insert into skivakantie(titel,startdatum,einddatum)
values
  ('Skiweek La Verte des Houches', '2025-01-05', '2025-01-12'),
  ('Zwarte piste-avontuur: Sarenne', '2025-01-15', '2025-01-22'),
  ('Weekend Bellecote Boost', '2025-02-07', '2025-02-09'),
  ('Familietrip La Foret', '2025-02-14', '2025-02-21'),
  ('Blauwe uitdaging: Cascades', '2025-03-01', '2025-03-08');
  
/*Insert Groepsleden*/

insert into groepsleden(naam,leeftijd,skiervaring)
values
	("Jason",27,"gevorderd"),
    ("Daisy",28,"expert"),
    ("Oliver",27,"beginner"),
    ("Werner",49,"Expert"),
    ("Tibo",16,"Gevorderd"),
    ("Liesje",36,"beginner");
    
/*Insert Huuruitrusting*/

insert into huuruitrusting(groepslid_id,uitrusting,huurprijs)
values
	(1,"Snowboard",125.99),
    (2,"Ski's",95.25),
    (4,"Sneeuw Bril",25.32),
    (3,"Snowboard",125.99),
    (3,"Sneeuw Pak",49.84),
    (5,"Snowboard Schoenen",25.45);
    
/*Insert dagprogramma*/

insert into dagprogramma(skivakantie_id,groepslid_id,tijdstip,activiteit,beschrijving)
values 
	(3,2,'09:30:00',"Skieen","het trainen op balans en uithouding"),
    (3,1,'09:30:00',"Snowboarden","Plezier hebben met vallen en opstaan"),
    (2,3,'12:00:00',"Pintelieren","Genieten van het weer en de drank"),
    (5,4,'14:15:12',"Skieen","Leren op te skieen"),
    (4,5,'19:45:21',"sterren kijken","op date met een meiske"),
    (3,2,'07:00:00',null,"niksen thuis");
    
/*Insert Maaltijden*/

insert into maaltijden(skivakantie_id,maaltijdtype,gerecht)
values
	(3,'ochtend',"eieren en spek"),
    (3,'middag',"Burrito met gehakt en groenten"),
    (1,'avond',"mosselen met frieten"),
    (4,'ochtend',"proteienen shake "),
    (2,'middag',"koffeikoeken en koffie");