use jason_db;

insert into partijen(naam,hoofdkantoor) 
values
('Open VLD', 'Meisenstraat 34 Brussel'),
('SP.A','Keizerlaan 13 Brussel'),
('N-VA','Koningsstraat 47 Brussel');



insert into peilingagentschap(naam) values
('De Morgen'),
('De tijd');


insert into politici(naam,geboortedatum, partijen_id) values
('Patrick Dewael', '1955-10-13',(select id from partijen where naam = 'Open VLD')),
('Freya Van den Bossche', '1975-03-26',(select id from partijen where naam = 'SP.A')),
('Bruno Tobback', '1969-08-22',(select id from partijen where naam = 'SP.A')),
('Johan Van Overtvelt', '1955-08-24',(select id from partijen where naam = 'N-VA'));


insert into peilingen(ongunstig,matig,gunstig,politici_id,peilingagentschap_id) values
(33,12,55,(select  id from politici where naam = 'Patrick Dewael'),(select id from peilingagentschap where naam = 'De Morgen')),
(19,14,67,(select  id from politici where naam = 'Freya Van den Bossche'),(select id from peilingagentschap where naam = 'De Tijd')),
(30,18,52,(select  id from politici where naam = 'Bruno Tobback'),(select id from peilingagentschap where naam = 'De Tijd')),
(34,16,50,(select  id from politici where naam = 'Johan Van Overtvelt'),(select id from peilingagentschap where naam = 'De Morgen'));

-- controle script
select Politici.Naam as 'politicus', Politici.Geboortedatum as 'geboortedatum', 
Partijen.Naam as 'partij', Partijen.Hoofdkantoor as 'adres partijkantoor', 
Peilingagentschap.Naam as 'peilingagentschap', Peilingen.Ongunstig as 'ongunstig', 
Peilingen.Matig as 'matig', Peilingen.Gunstig as 'gunstig' 
from 
Peilingen 
inner join Peilingagentschap on Peilingagentschap_Id = Peilingagentschap.Id 
inner join Politici on Politici_Id = Politici.Id 
inner join Partijen on Partijen_Id = Partijen.Id 
order by Politici.Id;

