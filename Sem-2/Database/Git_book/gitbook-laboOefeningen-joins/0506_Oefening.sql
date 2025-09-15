use jason_db;


select games.id, platformen.id, releases.datum
from releases
	inner join platformen on releases.Platformen_Id = platformen.Id
    inner join games on releases.Games_Id = games.Id;
    
select l.voornaam as persoon, b.titel as boek, u.uitleendatum as startdatum, coalesce(u.einddatum, 'Nog niet terug gebracht') as Einddatum
from uitleningen u
	inner join leden l on u.leden_id = l.id
    inner join boeken b on u.boek_id = b.id;