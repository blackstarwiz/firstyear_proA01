use jason_db;

select ReleaseJaar from liedjes;

select count(*) as aantal
from liedjes
where ReleaseJaar < 1990;