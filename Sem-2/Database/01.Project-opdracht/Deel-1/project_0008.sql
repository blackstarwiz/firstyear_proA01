use project;


select * from groepsleden;


/*
Opgaven 7:
Schrijf een query die ervoor zorgt dat bij alle groepsleden waarvan de herkomst 
nog niet ingevuld werd (= NULL) de waarde 'BE' wordt ingevuld. 
*/
set sql_safe_updates = 0;

UPDATE groepsleden
set landvanherkomst = 'BE'
where landvanherkomst is null;

set sql_safe_updates = 1;