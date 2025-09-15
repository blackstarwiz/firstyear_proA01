use jason_db;

drop table if exists liedjeopalbum;

create table liedjeopalbum(
	id int auto_increment primary key,
    nummer_id int not null,
    album_id int not null,
    foreign key (album_id) references albums(id),
    foreign key (nummer_id) references nummers(id)
);