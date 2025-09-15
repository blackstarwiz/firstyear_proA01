use aptunes;


drop procedure if exists NumberOfGenres;

/*het creeeren van een procedure om de aantal genres te vinden en deze in de variable aantal steken*/
DELIMITER $$

CREATE PROCEDURE NumberOfGenres(
out aantalGenres tinyint
)
begin
	select 
		count(*)
	from genres into aantalGenres;
end$$
DELIMITER ;

/*het oproepen van procedure moet gedaan worden door 
een variable mee tegeven deze mag elke naam bevatten beinvoeld
de logica binnen de procedure niet aan*/
call NumberOfGenres(@ziggy);


/*na het oproepen van de procedure kunnen we de select statement gebruiken
om de aangemaakte variable die we mee gegeven hebben te bekijken en de waarde
te weergeven.*/
select @ziggy as aantalGenres;