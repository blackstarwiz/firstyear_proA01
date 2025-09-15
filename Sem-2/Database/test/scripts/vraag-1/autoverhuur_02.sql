use autoverhuur;

/*
VRAAG 1: Her-structureren van data (6 punten)
Voeg huur contracten toe (1pt)
gebruiker Sara (1pt)
*/

insert into klanten(achternaam,voornaam,woonplaats) values
('Janssens','Tom','Antwerpen'),
('Peeters','Sara','Gent'),
('Sioen','Donovan','Zaventem');

insert into autos(merk,model) values
('Volkswagen','Golf'),
('Toyota','Corolla'),
('BMW','3 Serie');


insert into huurcontracten(klant_id,auto_id,startdatum,einddatum) values
((select id from klanten where voornaam like 'Sara'), (select id from autos where merk like 'Volkswagen'),'2025-03-01','2025-03-07'),
(3,2,'2025-02-14','2025-02-25'),
(1,3,'2025-04-30','2025-05-05');