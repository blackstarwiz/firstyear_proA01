use project;

-- dropping tables
-- maaltijdItems
drop table if exists maaltijdItems;
-- maaltijd
drop table if exists maaltijdLid;
-- verhuurmateriaalleden
drop table if exists VerhuurMateriaalLid;
-- groepsLeden
drop table if exists groepsLeden;
-- leden
drop table if exists leden;
-- dagprogramma
drop table if exists dagprogramma;
-- Resort
drop table if exists resort;
-- pistes
drop table if exists pistes;
-- locatie
drop table if exists locatie;
-- land
drop table if exists land; 
-- materiaal
drop table if exists materiaal;
-- voedsel
drop table if exists voedsel;
-- snack
drop table if exists snack;
-- drank
drop table if exists drank;
-- activiteiten
drop table if exists activiteiten;
-- groepen
drop table if exists groepen;
-- -------------------------------

-- create table
create table land(
	id int primary key auto_increment,
    naam varchar(100)
);
-- create table
create table locatie(
	id int primary key auto_increment,
    naam varchar(100),
    land_id int,
    foreign key (land_id) references land(id)
);

-- create table
create table resort(
	id int primary key auto_increment,
    naam varchar(150),
    land_id int,
    locatie_id int,
    foreign key (land_id) references land(id),
    foreign key (locatie_id) references locatie(id)
);

-- create table
create table activiteiten(
	id int primary key auto_increment,
    nodige_ervaring enum('beginner','gemiddeld','expert'),
    beschrijving varchar(250),
    prijs decimal(10,2)
);

-- create table
create table dagprogramma(
	id int primary key auto_increment,
    dag date,
    start_tijd time,
    stop_tijd time,
    activiteit_id int,
    resort_id int,
    foreign key (activiteit_id) references activiteiten(id),
    foreign key (resort_id) references resort(id)
);


-- create table
create table leden(
	id int primary key auto_increment,
    voornaam varchar(100),
    achternaam varchar(100),
    geslacht enum('man','vrouw','geen') default 'geen',
    leeftijd int,
    resort_id int,
    land_id int,
    ervaring enum('beginner','gemiddeld','expert'),
    foreign key (resort_id) references resort(id),
    foreign key (land_id) references land(id)
);

-- create table
create table groepen(
	id int primary key auto_increment,
    naam varchar(150)
);


-- create table
create table groepsLeden(
	id int primary key auto_increment,
    lid_id int,
    groep_id int,
    foreign key (lid_id) references leden(id),
    foreign key (groep_id) references groepen(id)
);

-- create table
create table materiaal(
	id int primary key auto_increment,
    beschrijving varchar(100)
);


-- create table
create table VerhuurMateriaalLid(
	id int primary key auto_increment,
    groepsLid_id int,
    materiaal_id int,
    vanaf date,
    tot date,
    prijs decimal(10,2),
    foreign key (groepsLid_id) references leden(id),
    foreign key (materiaal_id) references materiaal(id)
);


-- create table
create table voedsel(
	id int primary key auto_increment,
    beschrijving varchar(100),
    stuk_prijs decimal(10,2)
);


-- create table
create table snack(
	id int primary key auto_increment,
    beschrijving varchar(100),
    stuk_prijs decimal(10,2)
);


-- create table
create table drank(
	id int primary key auto_increment,
    beschrijving varchar(100),
    stuk_prijs decimal(10,2)
);

-- create table
create table maaltijdLid(
	id int primary key auto_increment,
    lid_id int,
    tijdstip timestamp,
    type_maaltijd enum('ontbijt','brunch','middag','avond','snack'), -- procedure of function om waarde te bepalen van type maaltijd
    totaal_prijs decimal(10,2), -- berekend door voedsel en drank op te tellen
    foreign key (lid_id) references leden(id)
);


-- create table
create table maaltijdItems(
	id int primary key auto_increment,
    maaltijd_id int,
    itemType enum('voedsel','snack','drank'),
    item_id int,
    foreign key (maaltijd_id) references maaltijdlid(id)
);

-- create table
create table pistes(
	id int primary key auto_increment,
    naam varchar(100),
    lengte int,
    niveau varchar(100),
    land_id int,
    locatie_id int,
    foreign key (land_id) references land(id),
    foreign key (locatie_id) references locatie(id)
);




