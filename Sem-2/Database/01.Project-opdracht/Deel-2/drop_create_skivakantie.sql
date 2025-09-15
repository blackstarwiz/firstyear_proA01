use jason_db;

/*
drop tables if exists
*/
drop table if exists pistes;
drop table if exists dagprogramma;
drop table if exists maaltijden;
drop table if exists skivakantie;
drop table if exists groepsleden;
drop table if exists huuruitrusting;
/*
create tables
*/

-- pistes table


create table pistes(
	id int auto_increment primary key,
    naam varchar(100),
    lengte int,
    moeilijkheidsgraad varchar(10),
    check(moeilijkheidsgraad in ('groen','blauw','rood','zwart'))
);


-- skivakantie table


create table skivakantie(
	id int auto_increment primary key,
    titel varchar(100),
    startdatum date,
    einddatum date
);

-- groepsleden table


create table groepsleden(
	id int auto_increment primary key,
    naam varchar(100),
    leeftijd int,
    skiervaring varchar(20),
    check (skiervaring in ('beginner','gevorderd','expert'))
);


-- dagprogramma table

create table dagprogramma(
	id int auto_increment primary key,
    skivakantie_id int,
    groepslid_id int,
    tijdstip time,
    activiteit varchar(100),
    beschrijving text,
    foreign key (skivakantie_id) references skivakantie(id),
    foreign key (groepslid_id) references groepsleden(id)
);

-- maaltijden table


create table maaltijden(
	id int auto_increment primary key,
    skivakantie_id int,
    maaltijdtype varchar(50),
    gerecht varchar(100),
    foreign key (skivakantie_id) references skivakantie(id),
    check(maaltijdtype in ('ochtend','middag','avond')) 
);


-- huuruitrusting



create table huuruitrusting(
	id int auto_increment primary key,
    groepslid_id int,
    uitrusting varchar(100),
    huurprijs decimal(10,2),
    foreign key (groepslid_id) references groepsleden(id)
);
