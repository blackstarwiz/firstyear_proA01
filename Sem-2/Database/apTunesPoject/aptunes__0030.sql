use jason_db;


insert into albums(titel,releasejaar,artiesten_id)
select distinct n.album,n.releasejaar, a.id 
from nummers n
join artiesten a on a.naam = n.artiest;

select distinct id,titel from albums;
