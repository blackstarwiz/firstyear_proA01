use jason_db;

update nummers
set nummers.Royalties = round(nummers.Royalties*1.2);

select * from nummers;