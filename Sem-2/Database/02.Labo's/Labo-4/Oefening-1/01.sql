use jason_db;

create table Games(
titel varchar(100),
Releasedatum date,
Genre varchar(20),
Uitgever varchar(100)
);


insert into Games(titel, Releasedatum,Genre,Uitgever) values
(
"The Diofield Chronicle", 
"2022-09-22",
"strategy",
"Square Enox"
),
(
"Beacon Pines",
"2022-09-22", 
"adventure", 
null
),
(
"Mario vs. Tabbids: spark of hope",
 "2022-10-21", 
 "stategy",
 "Ubisoft"
 );
 
 select * from games;