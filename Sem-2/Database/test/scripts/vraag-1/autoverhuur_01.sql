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

