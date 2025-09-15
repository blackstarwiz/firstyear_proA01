use jason_db;

create table Gebruikers (
  Gebruikersnaam varchar(100) NOT NULL,
  HashVanWachtwoord varchar(100) NOT NULL,
  Id int NOT NULL AUTO_INCREMENT,
  primary key(Id)
);