CREATE DATABASE if not exists jason_db;

use jason_db;

CREATE TABLE if not exists Personen(
Voornaam varchar(50),
Familinaam varchar(50),
Geboortejaar INT
);
-- alter table Boeken add column Commentaar varchar(150) char set utf8mb4Aa;

alter table Boeken modify column Voornaam varchar(150) not null;

select * from jason_db.boeken