use jason_db;

-- verzamel info via database om liedjesopalbum met data te vullen
-- 
select n.id as nummers_id, a.id as album_id
from nummers n
join albums a on n.album = a.titel;

-- select statement gebruiken als een insert voor liedjeopalbum 
insert into liedjeopalbum(nummer_id, album_id)
select n.id as nummers_id, a.id as album_id
from nummers n
join albums a on n.album = a.titel;


select * from liedjeopalbum;