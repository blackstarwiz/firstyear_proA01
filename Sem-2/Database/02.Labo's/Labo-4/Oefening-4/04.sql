use jason_db;


alter table games add column Ontwikkelaar varchar(100) not null;

set sql_safe_updates = 0;

update games
set Ontwikkelaar = "Lancarse"
where titel= 'The Diofield Chronicle';


update games
set ontwikkelaar = "Hiding Spot"
where titel = 'Beacon Pines';


update games
set ontwikkelaar = "Ubisoft"
where titel = "Mario vs. Tabbids: spark of hope";


select * from games;

set sql_safe_updates = 1;
