use jason_db;

drop table if exists Liedjes;

create table Liedjes (
Artist varchar(100),
Titel varchar(100),
AantalVerkocht tinyint,
ResleaseJaar date);

drop table if exists Geboortes; 

create table Geboorstes (
Voornaam varchar(100),
Familienaam varchar(100),
TijdstipGeboorte timestamp,
gewichtInKilogram tinyint
);

drop table if exists Huisdieren;

create table Huisdieren (
Naam varchar(100),
Diersoort varchar(100),
Leeftijd tinyint
)