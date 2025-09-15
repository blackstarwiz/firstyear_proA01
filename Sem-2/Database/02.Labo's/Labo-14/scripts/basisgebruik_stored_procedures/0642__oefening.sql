use aptunes;
drop procedure if exists CleanupOldMemberships;

DELIMITER $$

create procedure CleanupOldMemberships(
in Einddatum_param date, 
out aantalDel tinyint
)
begin
select count(*) as aantal
from lidmaatschappen 
where Einddatum is not null 
	and Einddatum < Einddatum_param;

set aantalDel = row_count();
end$$
DELIMITER ; 


call CleanUpOldMemberships('1985-04-03',@deleted);


