use jason_db;

create table Artiesten(
	id int auto_increment primary key,
    naam varchar(100) not null,
    genre enum('Klassiek','Pop','Jazz','Metal','Rap','Electro','Folk','Wereldmuziek','Blues','Rock')
);