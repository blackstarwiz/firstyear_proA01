use jason_db;


insert into gebruikerheeftliedje(nummer_id,album_id,artiest_id,favoriete)
SELECT n.id AS num_id, a.id AS art_id, al.id AS alb_id, floor(2*rand()) as favoriete
FROM nummers n
JOIN artiesten a ON n.artiesten_id = a.id
JOIN albums al ON al.titel = n.album;

select * from gebruikerheeftliedje;