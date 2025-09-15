use autoverhuur;

/*
	VRAAG 2: normalisatie bestaande data(4pt)
*/

drop table if exists woonplaatsten;


create table woonplaatsen(
	id int auto_increment primary key,
    woonplaats varchar(50) not null
);

-- wwardes uit table klanten halen om table woonplaatsen te vullen
insert into woonplaatsen(woonplaats) select k.woonplaats from klanten k;


-- nieuwe column toevoegen aan table klanten

alter table 
	klanten 
