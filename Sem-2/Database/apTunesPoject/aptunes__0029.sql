use jason_db;

drop table if exists albums;

create table albums(
	id int auto_increment primary key,
    titel varchar(100) not null,
    releasejaar year,
    artiesten_id int not null,
	foreign key (artiesten_id) references Artiesten(id)
);

select * from albums;