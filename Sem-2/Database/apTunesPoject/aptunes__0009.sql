use jason_db;

set sql_safe_updates=0;

select * from nummers;

select Genre, GenreEnum
from nummers
where Genre Like '%_rock';

update nummers
set nummers.GenreEnum = "Rock" where Genre like '%_rock';

select Genre, GenreEnum
from nummers
where Genre Like '%siek';

update nummers
set nummers.GenreEnum = "Klassiek"  where Genre like '%siek';

select Genre, GenreEnum
from nummers
where Genre Like '%hop';

update nummers
set nummers.GenreEnum="Rap" where Genre Like '%hop';

select Genre,GenreEnum
from nummers
where Genre like "%lues";

update nummers
set nummers.GenreEnum = "Blues" where Genre like "%lues";

set sql_safe_updates=1;