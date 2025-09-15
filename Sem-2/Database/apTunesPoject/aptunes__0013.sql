use jason_db;
select * from nummers;
-- eerst gaan we de kolom toevoegen Royalties met alter table

alter table nummers
add column Royalties tinyint unsigned;

-- twee gaan we update gebruiken om de tinyint af te ronden bij dichts bijzijnde getal
-- we kunnen dit niet doen met alter

-- klassiek
update nummers
set royalties = round(duurtijd/60)
where nummers.Genre like "%siek";

-- Rock
Update nummers
set nummers.Royalties = round(duurtijd/20)
where nummers.Genre like "%ock";

-- Blues
Update nummers
set nummers.Royalties = round(duurtijd/30)
where nummers.Genre like "%lues";

-- Rap
update nummers
set nummers.Royalties = round(duurtijd/15)
where nummers.Genre like "%ap";

-- Led Zeppelin royalties extra

update nummers
set nummers.Royalties = round(duurtijd/10)
where nummers.Artiest like "%ed%eppelin";

select * from nummers
where nummers.Artiest like "%ed%eppelin";