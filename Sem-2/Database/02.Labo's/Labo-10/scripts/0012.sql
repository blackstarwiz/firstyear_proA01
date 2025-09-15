use jason_db;


select g.gebruikersnaam, a.naam as artiest, count(al.id) as aantalAlbums
from 
	gebruikers g
inner join gebruikerheeftalbum gr
on g.Id = gr.Gebruikers_Id
inner join albums al
on gr.Albums_Id = al.id
inner join artiesten a
on al.Artiesten_Id = a.Id
group by g.Gebruikersnaam, a.Naam
order by  aantalAlbums desc;