use jason_db;

drop table if exists partijen;

create table partijen(
	id int auto_increment primary key,
    naam varchar(45),
    hoofdkantoor varchar(45)
);

drop table if exists peilingagentschap;

create table peilingagentschap(
	id int auto_increment primary key,
    naam varchar(45)
);

drop table if exists politici;

create table politici(
	id int auto_increment primary key,
    naam varchar(100),
    geboortedatum date,
    partijen_id int,
    foreign key (partijen_id) references partijen(id)
);


drop table if exists peilingen;

create table peilingen(
	id int auto_increment primary key,
    ongunstig tinyint,
    matig tinyint,
    gunstig tinyint,
    politici_id int,
    peilingagentschap_id int,
    foreign key (politici_id) references politici(id),
    foreign key (peilingagentschap_id) references peilingagentschap(id)

);








