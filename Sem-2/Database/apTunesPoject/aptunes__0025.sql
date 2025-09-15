use jason_db;

insert into artiesten(naam, genre)
select distinct artiest,genre from nummers_db;