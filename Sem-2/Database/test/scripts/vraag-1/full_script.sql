create database autoverhuur;

use autoverhuur;

/*
VRAAG 1: Her-structureren van data (6 punten)
*/
drop table if exists autos;

create table autos(
	id int auto_increment primary key,
    merk varchar(50) not null,
    model varchar(50) not null
);


drop table if exists klanten;

create table klanten(
	id int auto_increment primary key,
    achternaam varchar(50),
    voornaam varchar(50),
    woonplaats varchar(50)
);


drop table if exists huurcontracten;


create table huurcontracten(
	id int auto_increment primary key,
    klant_id int,
    auto_id int,
    startdatum date not null,
    einddatum date not null,
    foreign key (klant_id) references klanten(id),
    foreign key (auto_id) references autos(id)
);

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

/*
	VRAAG 3: scrips
*/


-- 3.1 (2pt)
select
	*
from 
	dozen
where waarde > 175
order by waarde;

-- 3.2 (2pt)

select count(id) as aantal
from
	magazijnen
where locatie like 'A%' or locatie like 'B%';


-- 3.3 (3pt)

select 
	d.inhoud,
    m.locatie
from
	dozen d
inner join magazijnen m on d.MagazijnId = m.Id
order by m.Locatie asc;


-- 3.4 (3pt)

select 
	m.locatie,
    avg(d.waarde) as gemiddelde_waarde
from
	magazijnen m
left join dozen d on  m.Id = d.MagazijnId
group by m.Locatie;