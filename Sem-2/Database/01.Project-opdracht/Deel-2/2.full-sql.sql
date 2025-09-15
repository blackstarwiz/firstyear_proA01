use jason_db;

/*
drop tables if exists
*/
drop table if exists pistes;
drop table if exists dagprogramma;
drop table if exists maaltijden;
drop table if exists skivakantie;
drop table if exists groepsleden;
drop table if exists huuruitrusting;
/*
create tables
*/

-- pistes table


create table pistes(
	id int auto_increment primary key,
    naam varchar(100),
    lengte int,
    moeilijkheidsgraad varchar(10),
    check(moeilijkheidsgraad in ('groen','blauw','rood','zwart'))
);


-- skivakantie table


create table skivakantie(
	id int auto_increment primary key,
    titel varchar(100),
    startdatum date,
    einddatum date
);

-- groepsleden table


create table groepsleden(
	id int auto_increment primary key,
    naam varchar(100),
    leeftijd int,
    skiervaring varchar(20),
    check (skiervaring in ('beginner','gevorderd','expert'))
);


-- dagprogramma table

create table dagprogramma(
	id int auto_increment primary key,
    skivakantie_id int,
    groepslid_id int,
    tijdstip time,
    activiteit varchar(100),
    beschrijving text,
    foreign key (skivakantie_id) references skivakantie(id),
    foreign key (groepslid_id) references groepsleden(id)
);

-- maaltijden table


create table maaltijden(
	id int auto_increment primary key,
    skivakantie_id int,
    maaltijdtype varchar(50),
    gerecht varchar(100),
    foreign key (skivakantie_id) references skivakantie(id),
    check(maaltijdtype in ('ochtend','middag','avond')) 
);


-- huuruitrusting



create table huuruitrusting(
	id int auto_increment primary key,
    groepslid_id int,
    uitrusting varchar(100),
    huurprijs decimal(10,2),
    foreign key (groepslid_id) references groepsleden(id)
);


/*********************************/

/*Insert pistes*/

insert into pistes(Naam,lengte,moeilijkheidsgraad) 
values
	("La Verte des Houches", 3,"rood"),
	("Sarenne",16,"zwart"),
	("Bellecote",2,"zwart"),
	("La Foret",4,"blauw"),
	("Cascades",14,"Blauw");


/*Insert Skivakantie*/

insert into skivakantie(titel,startdatum,einddatum)
values
  ('Skiweek La Verte des Houches', '2025-01-05', '2025-01-12'),
  ('Zwarte piste-avontuur: Sarenne', '2025-01-15', '2025-01-22'),
  ('Weekend Bellecote Boost', '2025-02-07', '2025-02-09'),
  ('Familietrip La Foret', '2025-02-14', '2025-02-21'),
  ('Blauwe uitdaging: Cascades', '2025-03-01', '2025-03-08');
  
/*Insert Groepsleden*/

insert into groepsleden(naam,leeftijd,skiervaring)
values
	("Jason",27,"gevorderd"),
    ("Daisy",28,"expert"),
    ("Oliver",27,"beginner"),
    ("Werner",49,"Expert"),
    ("Tibo",16,"Gevorderd"),
    ("Liesje",36,"beginner");
    
/*Insert Huuruitrusting*/

insert into huuruitrusting(groepslid_id,uitrusting,huurprijs)
values
	(1,"Snowboard",125.99),
    (2,"Ski's",95.25),
    (4,"Sneeuw Bril",25.32),
    (3,"Snowboard",125.99),
    (3,"Sneeuw Pak",49.84),
    (5,"Snowboard Schoenen",25.45);
    
/*Insert dagprogramma*/

insert into dagprogramma(skivakantie_id,groepslid_id,tijdstip,activiteit,beschrijving)
values 
	(3,2,'09:30:00',"Skieen","het trainen op balans en uithouding"),
    (3,1,'09:30:00',"Snowboarden","Plezier hebben met vallen en opstaan"),
    (2,3,'12:00:00',"Pintelieren","Genieten van het weer en de drank"),
    (5,4,'14:15:12',"Skieen","Leren op te skieen"),
    (4,5,'19:45:21',"sterren kijken","op date met een meiske"),
    (3,2,'07:00:00',null,"niksen thuis");
    
/*Insert Maaltijden*/

insert into maaltijden(skivakantie_id,maaltijdtype,gerecht)
values
	(3,'ochtend',"eieren en spek"),
    (3,'middag',"Burrito met gehakt en groenten"),
    (1,'avond',"mosselen met frieten"),
    (4,'ochtend',"proteienen shake "),
    (2,'middag',"koffeikoeken en koffie");
    
/*************************************************/


/*
Schrijf een zinvolle SELECT-query op je twee zelfgekozen tabellen, gebruikmakend 
van een JOIN. 
Leg in commentaar uit wat je precies wenst weer te geven met de resultatentabel die 
deze query produceert. 
*/



/*
Toon een overzicht van groepsleden en welke uitrusting zij huren.
*/
select	
	g.naam,
    g.skiervaring,
    h.uitrusting
from
	groepsleden g
inner join huuruitrusting h on h.groepslid_id = g.id;


/*
full-summary van alles data compact in one query with inner joins
kan oook gedaan worden met left or right joins om leden te tonen
die nog geen data hebben
*/
select
	s.startdatum as 'begin',
    d.tijdstip,
    s.titel as vakantie,
    g.naam,
    g.leeftijd,
    g.skiervaring,
    d.activiteit,
    d.beschrijving,
    s.einddatum as 'end'
from
	dagprogramma d
inner join skivakantie s on s.id = d.skivakantie_id
/*right join op groeps leden toon de leden die nog geen data hebben in andere tables*/
right join groepsleden g on g.id = d.groepslid_id;


/***********************************************************/

/*
Schrijf een zinvolle SELECT-query op één van je zelfgekozen tabellen, 
waarbij je gebruik maakt van een subquery. 
*/


select
	s.titel as vakantie,
	g.naam,
    d.activiteit,
    s.startdatum
from
	dagprogramma d
inner join groepsleden g on g.id = d.groepslid_id
inner join skivakantie s on s.id = d.skivakantie_id
where s.startdatum between (select min(startdatum) from skivakantie) and (select max(startdatum) from skivakantie);



    
select
	d.activiteit,
    d.beschrijving
from	
	dagprogramma d
where tijdstip > (select avg(tijdstip) from dagprogramma);

/***********************************************************************/


/*
Maak een overzicht van groepsleden waarvoor nog geen activiteiten zijn 
geregistreerd in het Dagprogramma. 
*/

select
	count(*) as aantal
from
	dagprogramma
where activiteit is null;

/*******************************/


/*
Schrijf een query die voor een bepaalde vakantie het programmaoverzicht toont door 
de datum en tijd van de activiteit te tonen, samen met de naam van de activiteit en 
de betrokken groepsleden. Sorteer op datum en tijd van de activiteit. Kies zelf een 
Skivakantie_Id in je query. 
*/

select 
	s.startdatum,
    d.tijdstip,
    s.titel,
    d.activiteit
from
	dagprogramma d 
inner join skivakantie s on s.id = d.skivakantie_id
where s.startdatum like '2025-02-07';

/************************************************/

/*
Schrijf een SELECT-query die de titel van de meest recente skivakantie toont (de 
skivakantie met de hoogste startdatum). 
*/

select 
	s.titel
from
	skivakantie s 
order by s.startdatum desc
limit 1;

/*********************************************************/


/*
Schrijf een SELECT-query die de naam van de activiteit toont die als eerste gepland 
staat tijdens een bepaalde skivakantie. Indien er meerdere locaties (zoals pistes) 
zijn, houd er rekening mee dat meerdere activiteiten tegelijk kunnen starten. Kies een 
Skivakantie_Id in je query.
*/


select
	p.naam,
	d.activiteit,
    p.lengte,
    p.moeilijkheidsgraad
from
	dagprogramma d, pistes p
where p.id = 2 and d.skivakantie_id = 2;


/**********************************************************/


/*
Schrijf een SELECT-query die per skivakantie de titel van de vakantie toont, het 
aantal activiteiten dat in die vakantie gepland is, en het aantal unieke groepsleden 
dat deelneemt aan de activiteiten. Voeg een passende sortering toe. 
*/



select 
	s.titel,
    count(distinct d.activiteit) as aantal,
    count(distinct g.id)as aantal_Personen
from
	dagprogramma d
inner join skivakantie s on s.id = d.skivakantie_id
inner join groepsleden g on g.id = d.groepslid_id
group by s.titel;



/*************************************************************/


/*
Toon van alle groepsleden hoe vaak ze hebben deelgenomen aan activiteiten in het 
Dagprogramma, zorg ervoor dat met dezelfde query ook de groepsleden getoond 3 
worden die nog nooit aan een activiteit hebben deelgenomen. Voor hen noteer je in 
plaats van het aantal keer gewoon het cijfer nul. Maak geen gebruik van UNION. 
*/

select
	g.naam,
    count(d.activiteit) as aantal
from
	dagprogramma d
/*
right join wordt gebruikt op de table groepsleden
om ook de leden te tonen die geen activeiten hebben
*/
right join groepsleden g on g.id = d.groepslid_id
group by g.id,g.naam;