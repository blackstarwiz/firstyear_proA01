/*
Opgave 3: maak de nodige scripts om ervoor te zorgen dat elke
tabel minsten 5 en max 10 bruikbare records bevat
*/


-- data groepsleden

insert into groepsleden(naam,leeftijd,ski_ervaring,aantalvakanties) values
('jason',27,'gemiddeld',3),
('daisy',28,'expert',15),
('juliette',45,'beginner',0),
('liesje',36,'beginner',2),
('pieter', 33, 'gemiddeld', 5),
('sofie', 24, 'expert', 10),
('lucas', 29, 'beginner', 1),
('emma', 31, 'gemiddeld', 4),
('bram', 40, 'expert', 12),
('marie', 22, 'beginner', 0),
('thomas', 37, 'gemiddeld', 7),
('eline', 26, 'expert', 8),
('ruben', 50, 'beginner', 2);


-- data pistes

INSERT INTO pistes(naam,lengte,moeilijkheidsgraad) values
('Alpenweg', 1200, 'groen'),
('Blauwe Droom', 1800, 'blauw'),
('Rode Horizon', 2500, 'rood'),
('Zwarte Panter', 3200, 'zwart'),
('Sneeuwflits', 1500, 'groen'),
('IJsberg', 2200, 'rood'),
('Bergstroom', 2000, 'blauw'),
('Donkere Wolk', 2800, 'zwart'),
('Winterwonder', 1600, 'groen');

-- data dagprogramma

INSERT INTO dagprogramma(dag,tijdstip,activiteit,beschrijving) values
('2025-03-10', '09:00:00', 'Skiën', 'Verkenning van de groene pistes.'),
('2025-03-10', '12:30:00', 'Lunch', 'Gezamenlijke maaltijd in het berghutrestaurant.'),
('2025-03-10', '15:00:00', 'Snowboardles', 'Privéles voor beginners.'),
('2025-03-10', '18:00:00', 'Après-ski', 'Drankjes en muziek in de gezellige skihut.'),
('2025-03-11', '08:30:00', 'Ontbijt', 'Buffet in het hotel.'),
('2025-03-11', '10:00:00', 'Sneeuwschoenwandeling', 'Begeleid avontuur door het besneeuwde landschap.'),
('2025-03-11', '13:00:00', 'Lunch', 'Picknick op de top van de piste.'),
('2025-03-11', '16:30:00', 'Vrije tijd', 'Ontspanning in de spa of een wandeling door het dorp.'),
('2025-03-11', '19:30:00', 'Diner', 'Driegangendiner in het resortrestaurant.');


-- data skiverhuur

INSERT INTO skiverhuur(groepslid_id,uitrusting_type,huurdatum,terugbrengdatum,huurprijs) values
(1, 'ski', '2025-03-10', '2025-03-15', 120.50),
(2, 'snowboard', '2025-03-11', '2025-03-16', 95.00),
(3, 'helm', '2025-03-10', '2025-03-12', 25.00),
(4, 'stokken', '2025-03-12', '2025-03-15', 15.00),
(5, 'ski', '2025-03-14', '2025-03-16', 60.00),
(6, 'snowboard', '2025-03-11', '2025-03-13', 80.00),
(7, 'helm', '2025-03-10', '2025-03-15', 30.00),
(8, 'stokken', '2025-03-10', '2025-03-16', 20.00),
(9, 'ski', '2025-03-12', '2025-03-14', 100.00);


-- data maaltijden

INSERT INTO maaltijden(dag,tijdstip,maaltijd_type,beschrijving,kosten) values
('2025-03-10', '08:30:00', 'ontbijt', 'Buffet met verse broodjes, yoghurt en fruit.', 12.50),
('2025-03-10', '12:30:00', 'lunch', 'Pasta met kaas en salade in een berghut.', 18.00),
('2025-03-10', '19:00:00', 'avondeten', 'Driegangendiner met soep, schnitzel en dessert.', 30.00),
('2025-03-11', '08:30:00', 'ontbijt', 'Continentaal ontbijt met koffie en croissants.', 10.50),
('2025-03-11', '12:30:00', 'lunch', 'Warme stoofpot met brood.', 16.00),
('2025-03-11', '19:00:00', 'avondeten', 'Grillavond met gegrilde groenten en vlees.', 28.00),
('2025-03-12', '08:30:00', 'ontbijt', 'Engels ontbijt met spek, eieren en bonen.', 14.00),
('2025-03-12', '12:30:00', 'lunch', 'Heerlijke soep en sandwiches.', 15.00),
('2025-03-12', '19:00:00', 'avondeten', 'Fondue-avond met kaas en stokbrood.',32.00); 