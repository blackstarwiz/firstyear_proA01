use jason_db;

set sql_safe_updates = 0;

alter table liedjes 
change column Royalties VergoedingArtiest int;

set sql_safe_updates = 1;


select * from liedjes;