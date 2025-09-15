select jason_db;

drop table if exists voedsel;

create table voedsel(
	id int auto_increment primary key,
    naam varchar(100),
    wetenschappelijke_naam varchar(100)
);


drop table if exists categorieen;


create table categorieen(
	id int auto_increment primary key,
    naam varchar(100)
);


drop table if exists subcategorieen;

create table subcategorieen(
	id int auto_increment primary key,
    naam varchar(100)
);