use jason_db;


select genre, count(*) as aantal
from liedjes
group by genre
order by aantal asc;
