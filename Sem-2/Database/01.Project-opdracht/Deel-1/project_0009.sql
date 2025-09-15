use project;

select * from groepsleden;

/*
Opgave 8:
Schrijf een query die de naam en leeftijd van groepsleden toont, maar enkel voor 
groepsleden die nog nooit eerder op skivakantie zijn geweest, en waarvan de 
naam meer dan 15 teksttekens bevat. 
*/

select naam,leeftijd
from groepsleden
where aantalvakanties = 0 and length(naam) >= 7;