use jason_db;


select g.Gebruikersnaam, count(gr.albums_id) as aantalAlbums
from gebruikers g
inner join gebruikerheeftalbum gr 
on g.Id = gr.Gebruikers_Id
group by g.Gebruikersnaam;