use project;

/*
Opgave 5:
Schrijf een query die op zoek gaat naar pistes waarvan de naam een bepaald 
stukje tekst bevat. 
*/



-- haal al de namen op van de pistes tabel

select naam
from pistes;

-- select statements met filters op woorden

-- spaces
select naam,lengte, moeilijkheidsgraad
from pistes
where naam like '% %';

-- eindigt met %room
select *
from pistes
where naam like '%room';

-- eindigt met panter
select *
from pistes
where naam like '%Panter';

-- start met IJs
select *
from pistes
where naam like 'IJs%';