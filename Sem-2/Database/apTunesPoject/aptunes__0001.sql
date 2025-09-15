use jason_db;

drop table if exists nummers;

create table nummers(
Titel varchar(100) not null,
Artiest varchar(100) not null,
Genre varchar(20) not null,
Album varchar(100) not null,
Duurtijd smallint unsigned not null,
ReleaseDatum year
);

select * from nummers;



drop table if exists gebruikers;

create table gebruikers(
Gebruikersnaam varchar(100) not null,
HashVanWachtwoord varchar(100) not null
);