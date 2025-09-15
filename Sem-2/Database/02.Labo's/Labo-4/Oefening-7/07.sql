use jason_db;

select titel,DuurtijdInSeconden, album
from liedjes
where DuurtijdInSeconden = 180 and album is null;


set sql_safe_updates = 0;

delete from liedjes
where DuurtijdInSeconden = 180 and album is null;


set sql_sql_updates = 1;