use jason_db;

alter table albums
add column artiesten_id int not null;


alter table albums
add constraint fk_album_artiest
foreign key (artiesten_id) references artiesten(id);

select * from albums;