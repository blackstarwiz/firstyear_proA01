use jason_db;

select * from uitleningen;

truncate table uitleningen; -- maak de table leeg van waardes en reset de primary key als die er zou zijn

-- we gaan een insert doen hiervoor gaan we gebruik maken van union all 
insert into uitleningen(leden_id,boek_id,uitleendatum,einddatum)
select 
-- we selecteren de id's van de tables leden en boeken
	l.id as leden_id, 
    b.id as boek_id,
-- hier bij kunnen we ook eigen data in toevoegen zoals waardes
-- die niet te vinden zijn in andere table's
    '2019-02-1',
    '2019-02-15'
from 
	leden l
inner join 
	boeken b
-- we filteren specifiek op de lid voornaam en titel van de boek om de id's te vinden
on l.voornaam = 'Max' and b.Titel ="Norwegian Wood"

union all

select
	l.id as leden_id,
    b.Id as boek_id,
    '2019-02-16',
    '2019-03-02'
from
	leden l
inner join
	boeken b
on l.Voornaam = 'Bavo' and b.Titel = 'Norwegian wood'

union all

select
	l.id as leden_id,
    b.Id as boek_id,
    '2019-02-16',
    '2019-05-01'
from
	leden l
inner join
	boeken b
on l.Voornaam = 'Bavo' and b.Titel = 'Pet Sematary'

union all

select
	l.id as leden_id,
    b.id as boek_id,
    '2019-05-1',
    null -- nooit terug gebracht
from
	leden l
inner join
	boeken b
on l.Voornaam = 'Yannick' and b.Titel = 'Pet Sematary';
	
	