use jason_db;

drop table if exists uitleningen;

create table uitleningen(
	uitleendatum date not null,
    leden_id int ,
    foreign key(leden_id) references leden(id),
    boek_id int,
    foreign key(boek_id) references boeken(id),
    einddatum date
);