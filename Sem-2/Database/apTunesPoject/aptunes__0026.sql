use jason_db;

drop table if exists nummers;


create table nummers(
id int auto_increment primary key,
artiest varchar(100) not null,
title varchar(100) not null,
album varchar(100) not null,
duurtijd smallint not null,
releasejaar year,
artiesten_id int,
foreign key (artiesten_id) references Artiesten(id)
);	