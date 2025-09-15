use jason_db;

set sql_safe_updates =0;

update games
set Uitgever = null
where uitgever = "Square Enox";

set sql_safe_updates = 1;

select * from games;