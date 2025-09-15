use project;

/*opgave 1: schrijf create-scripts die de tabbelen aanmaken met
voor elke kolom de bijpassende dataType*/

-- table groepsleden

-- om table groepsleden te kunnen droppen moet je de foreign ket eerst droppen
ALTER TABLE skiverhuur
DROP FOREIGN KEY skiverhuur_ibfk_1;

-- drop tabel groepsleden
DROP TABLE IF EXISTS groepsleden;

CREATE TABLE groepsleden(
	id int auto_increment primary key,
	naam varchar(100) not null,
	leeftijd int not null,
	ski_ervaring varchar(50) check (ski_ervaring in ('beginner','gemiddeld', 'expert')),
	aantalvakanties int not null
);

-- table pistes
DROP TABLE IF EXISTS pistes;

CREATE TABLE pistes(
	id int auto_increment primary key,
	naam varchar(100),
    lengte int,
    moeilijkheidsgraad varchar(50) check (moeilijkheidsgraad in ('groen', 'blauw', 'rood', 'zwart'))
);

-- table dagprogramma
DROP TABLE IF EXISTS dagprogramma;

CREATE TABLE dagprogramma(
	id int auto_increment primary key,
	dag date not null,
	tijdstip time not null,
    activiteit varchar(100) not null,
    beschrijving text
);



