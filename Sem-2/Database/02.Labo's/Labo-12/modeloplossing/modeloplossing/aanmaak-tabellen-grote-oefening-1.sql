create table Partijen (
Id int auto_increment primary key,
Naam varchar(45) not null,
Hoofdkantoor varchar(45) not null
);









































create table Peilingagentschappen (
Id int auto_increment primary key,
Naam varchar(45) not null
);



























create table Politici (
Id int auto_increment primary key,
Naam varchar(100) not null,
Geboortedatum date not null,
Partijen_Id int not null,
constraint fk_Politici_Partijen
foreign key (Partijen_Id)
references Partijen(Id));






















create table Peilingen (
Id int auto_increment primary key,
Ongunstig tinyint unsigned not null,
Matig tinyint unsigned not null,
Gunstig tinyint unsigned not null,
Politici_Id int not null,
Peilingagentschappen_Id int not null,
constraint fk_Peilingen_Politici
foreign key (Politici_Id)
references Politici(Id),
constraint fk_Peilingen_Peilingagentschappen
foreign key (Peilingagentschappen_Id)
references Peilingagentschappen(Id));
