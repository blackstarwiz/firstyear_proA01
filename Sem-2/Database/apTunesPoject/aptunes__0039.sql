use jason_db;

drop table if exists gebruikerheeftliedje;

create table gebruikerheeftliedje(
	id int auto_increment primary key,
    nummer_id int not null,
    album_id int not null,
    artiest_id int not null,
    favoriete int, -- 1 = favoriet, 0 = niet favoriet
    foreign key (nummer_id) references nummers(id),
	foreign key (album_id) references albums(id),
	foreign key (artiest_id) references artiesten(id)
);

