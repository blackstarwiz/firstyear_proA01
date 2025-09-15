use jason_db;


alter table nummers
modify column artiesten_id int not null;


alter table nummers_db
drop column artiest;