use jason_db;

select * from liedjes;


select AantalVerkocht 
from liedjes
where AantalVerkocht < 2000;

SET SQL_SAFE_UPDATES = 0;

delete
from liedjes
where AantalVerkocht < 2000;

SET SQL_SAFE_UPDATES = 1;