use jason_db;


-- we selecteren de gebruikersnaam van tabel gebruikers en de titel van de tabel albums
select g.Gebruikersnaam, a.titel as album
from gebruikers g
-- gebruikersheeftalbum wordt gebruikt al koppel tabel tussen gebruikers en albums
inner join gebruikerheeftalbum gr 
-- we gaan eerst gerbuikers id vergelijken met de gebruikers id van de tabel gebruikerheeftalbum
on g.Id = gr.Gebruikers_Id
inner join albums a
-- vervolgens gaan we gebruikerheeftalbum id vergelijken met de id in de album tabel
on gr.Albums_Id = a.Id;