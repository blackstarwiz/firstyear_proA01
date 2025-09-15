use jason_db;

drop table if exists gebruikerheeftalbum;

create table gebruikerheeftalbum(
	id int,
    album varchar(100) not null,
    datumtoevoeging datetime not null
    );