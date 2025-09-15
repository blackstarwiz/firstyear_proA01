use jason_db;

insert into Liedjes(Artist,Titel,AantalVerkocht,ReleaseJaar) values
("Ghost","Call Me Little Sunshine",35000,2021), 
("Led Zeppelin","Stairway to Heaven",100000,1973),
("Jack Broadbent","Woman",1000,2015),
("Larking Poe","Tom Devil",150000,2013);


insert into geboortes(Voornaam,Familienaam,TijdstipGeboorte,gewichtInKilogram) values
("Adnane","Lazaar","1973-06-13 08:11:25",4.1),
("Dilara","El Farisi","1999-10-25 06:11:13",3.7),
("Mehmet","Cetinel","1995-04-01 15:58:50",2.9),
("Thijs","Verbeeck","1990-08-15 19:23:12",2.7);


insert into huisdieren(Naam,Diersoort,Leeftijd) values
("Misty","hond",9),
("Ming","hond",11),
("Rambo","kat",16);

select * from huisdieren;