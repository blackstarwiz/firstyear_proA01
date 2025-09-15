use project;

/*
Opgave 6
Schrijf een query die aan de reeds bestaande tabel met Groepsleden een kolom 
toevoegt om het land van herkomst vast te leggen met twee tekst-tekens (bv. BE 
voor België, NL voor Nederland, etc.). Bij het invoeren van nieuwe records moet 
de standaardwaarde voor deze kolom ‘BE’ bevatten indien de herkomst niet 
wordt gespecifieerd. 
*/
ALTER TABLE groepsleden
add column landvanherkomst varchar(2) default 'BE';