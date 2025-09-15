use jason_db;

select *
from nummers;

alter table nummers
drop column genre;

alter table nummers
rename column GenreEnum to Genre;