use aptunes;

drop procedure if exists GetLiedjes;


DELIMITER $$

create procedure GetLiedjes(
in woord varchar(50)
)
begin
	declare start_woord VARCHAR(55) DEFAULT concat(woord,'%');
	declare midden_woord VARCHAR(55) DEFAULT concat('%',woord,'%');
	declare end_woord VARCHAR(55) DEFAULT concat('%',woord);
Select 
	*
from Liedjes
	where Titel like start_woord
    or Titel like midden_woord
    or Titel like end_woord;
end$$

DELIMITER ;


call GetLiedjes('sys');
/*je kan elk woord mee geven om 
te checken of het ergens voor komt in de titel 
voor,midden,achter*/

