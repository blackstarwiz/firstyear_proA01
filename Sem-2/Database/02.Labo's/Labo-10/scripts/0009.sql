use jason_db;


select * 
from gebruikerheeftliedje;

select g.gebruikersnaam, l.titel
from gebruikers g
inner join gebruikerheeftliedje
on g.Id = gebruikerheeftliedje.Gebruikers_Id
inner join liedjes l 
on gebruikerheeftliedje.Nummers_Id = l.Id
where gebruikerheeftliedje.Favoriet = 1;