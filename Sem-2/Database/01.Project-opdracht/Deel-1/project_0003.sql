use project;

/*
Opgave 2: verzin nog twee extra tabllen zoals: skivehuur en maaltijden
*/


-- table skiverhuur
DROP TABLE IF EXISTS skiverhuur;


CREATE TABLE skiverhuur(
	id int auto_increment primary key,
    groepslid_id int not null,
    uitrusting_type varchar(50) check (uitrusting_type in ('ski','snowboard','stokken','helm','bril')),
	huurdatum date not null,
	terugbrengdatum date not null,
	huurprijs decimal(10,2),
    foreign key (groepslid_id) references groepsleden(id)
);


-- table maaltijden

DROP TABLE IF EXISTS maaltijden;

CREATE TABLE maaltijden(
	id int auto_increment primary key,
	dag date not null,
	tijdstip time not null,
	maaltijd_type varchar(50) check (maaltijd_type in ('ontbijt','lunch','avondeten','snack')),
	beschrijving text,
	kosten decimal(10,2)
);