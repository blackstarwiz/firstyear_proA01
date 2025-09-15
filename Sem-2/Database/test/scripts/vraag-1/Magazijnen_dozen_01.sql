use tussentijdsetest;

/*
	VRAAG 3: scrips
*/


-- 3.1 (2pt)
select
	*
from 
	dozen
where waarde > 175
order by waarde;

-- 3.2 (2pt)

select count(id) as aantal
from
	magazijnen
where locatie like 'A%' or locatie like 'B%';


-- 3.3 (3pt)

select 
	d.inhoud,
    m.locatie
from
	dozen d
inner join magazijnen m on d.MagazijnId = m.Id
order by m.Locatie asc;


-- 3.4 (3pt)

select 
	m.locatie,
    avg(d.waarde) as gemiddelde_waarde
from
	magazijnen m
left join dozen d on  m.Id = d.MagazijnId
group by m.Locatie;