use jason_db;

select * from auteursboeken;

set sql_safe_updates = 0;

update auteursboeken
set titel = "Pet Cemetery"
where titel in ("Pet Sematary");


update auteursboeken
set auteurs = "Steven King"
where auteurs in ("Stephen King");

/*
het is niet mogelijk wegens dat we voornaam en familienaam apart aansperken
als we de view (auteursboeken) gebruiken, deze view concat de twee waardes samen
*/
