drop database if exists project;

create database project;

use project;

/*opgave 1: schrijf create-scripts die de tabbelen aanmaken met
voor elke kolom de bijpassende dataType*/

-- table groepsleden


-- drop tabel groepsleden
DROP TABLE IF EXISTS groepsleden;

CREATE TABLE groepsleden(
	id int auto_increment primary key,
	naam varchar(100) not null,
	leeftijd int not null,
	ski_ervaring varchar(50) check (ski_ervaring in ('beginner','gemiddeld', 'expert')),
	aantalvakanties int not null
);

-- table pistes
DROP TABLE IF EXISTS pistes;

CREATE TABLE pistes(
	id int auto_increment primary key,
	naam varchar(100),
    lengte int,
    moeilijkheidsgraad varchar(50) check (moeilijkheidsgraad in ('groen', 'blauw', 'rood', 'zwart'))
);

-- table dagprogramma
DROP TABLE IF EXISTS dagprogramma;

CREATE TABLE dagprogramma(
	id int auto_increment primary key,
    groepslid_id int not null,
    piste_id int not null,
	dag date not null,
	tijdstip time not null,
    activiteit varchar(100) not null,
    beschrijving text,
	foreign key(groepslid_id) references groepsleden(id),
    foreign key(piste_id) references pistes(id)
);



/*
Opgave 2: verzin nog twee extra tabllen zoals: skivehuur en maaltijden
*/


-- table skiverhuur
DROP TABLE IF EXISTS skiverhuur;


CREATE TABLE skiverhuur(
	id int auto_increment primary key,
    groepslid_id int not null,
    uitrusting_type varchar(50) check (uitrusting_type in ('ski','snowboard','stokken','helm','bril')),
	huurdatum date not null,
	terugbrengdatum date not null,
	huurprijs decimal(10,2),
    foreign key (groepslid_id) references groepsleden(id)
);


-- table maaltijden

DROP TABLE IF EXISTS maaltijden;

CREATE TABLE maaltijden(
	id int auto_increment primary key,
	dag date not null,
	tijdstip time not null,
	maaltijd_type varchar(50) check (maaltijd_type in ('ontbijt','lunch','avondeten','snack')),
	beschrijving text,
	kosten decimal(10,2)
);


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


/*
Opgave 4:
Schrijf 2 select queries waar minstens een WHERE- en een ORDER BY-clausule in 
staat. Bijvoorbeeld: toon welke groepsleden deelnemen aan een activiteit die 
plaatsvindt tussen twee bepaalde tijdstippen, en sorteer op tijdstip. 
*/


-- groepsleden die deelnemen aan activiteiten tussen twee verschillende tijdstippen

SELECT g.naam,g.leeftijd, d.activiteit, d.tijdstip
FROM groepsleden g
JOIN dagprogramma d on  g.id = d.id
where d.tijdstip between '10:00:00' and '15:00:00'
order by d.tijdstip;

-- filteren op lengte georderd op moeilijkheidsgraad

select naam, lengte,moeilijkheidsgraad
from pistes
where lengte >= 2500
order by moeilijkheidsgraad desc;

/*
Opgave 5:
Schrijf een query die op zoek gaat naar pistes waarvan de naam een bepaald 
stukje tekst bevat. 
*/



-- haal al de namen op van de pistes tabel

select naam
from pistes;

-- select statements met filters op woorden

-- spaces
select naam,lengte, moeilijkheidsgraad
from pistes
where naam like '% %';

-- eindigt met %room
select *
from pistes
where naam like '%room';

-- eindigt met panter
select *
from pistes
where naam like '%Panter';

-- start met IJs
select *
from pistes
where naam like 'IJs%';

/*
Opgave 6
Schrijf een query die aan de reeds bestaande tabel met Groepsleden een kolom 
toevoegt om het land van herkomst vast te leggen met twee tekst-tekens (bv. BE 
voor België, NL voor Nederland, etc.). Bij het invoeren van nieuwe records moet 
de standaardwaarde voor deze kolom ‘BE’ bevatten indien de herkomst niet 
wordt gespecifieerd. 
*/
ALTER TABLE groepsleden
add column landvanherkomst varchar(2) default 'BE';


/*
Opgaven 7:
Schrijf een query die ervoor zorgt dat bij alle groepsleden waarvan de herkomst 
nog niet ingevuld werd (= NULL) de waarde 'BE' wordt ingevuld. 
*/
set sql_safe_updates = 0;

UPDATE groepsleden
set landvanherkomst = 'BE'
where landvanherkomst is null;

set sql_safe_updates = 1;


/*
Opgave 8:
Schrijf een query die de naam en leeftijd van groepsleden toont, maar enkel voor 
groepsleden die nog nooit eerder op skivakantie zijn geweest, en waarvan de 
naam meer dan 15 teksttekens bevat. 
*/

select naam,leeftijd
from groepsleden
where aantalvakanties = 0 and length(naam) >= 7;


/*
Opgave 9:
 Schrijf een query die per groepslid toont hoe lang de gemiddelde activiteit duurt 
(bijvoorbeeld lessen of andere georganiseerde activiteiten). Toon enkel 
groepsleden die al eens een skivakantie hebben meegemaakt, en waarvan de 
gemiddelde activiteit langer dan 2 uur duurt. Voeg een passende sortering toe. 
*/
select ski_ervaring, count(*) as aantal_groepsleden
from groepsleden
group by ski_ervaring
order by aantal_groepsleden desc;


/*
Opgave 10:
Schrijf een query die per groepslid toont hoe lang de gemiddelde activiteit duurt 
(bijvoorbeeld lessen of andere georganiseerde activiteiten). Toon enkel 
groepsleden die al eens een skivakantie hebben meegemaakt, en waarvan de 
gemiddelde activiteit langer dan 2 uur duurt. Voeg een passende sortering toe. 
*/

select g.id, g.naam, avg(d.tijdstip) as gemiddeld
from dagprogramma d
join groepsleden g on d.id = g.id
where g.ski_ervaring > 0
group by g.id, g.naam
having avg(d.tijdstip) > 2
order by gemiddeld desc;