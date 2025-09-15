/*ga naar de juiste database*/
use project;

/*verijder de oude definitie*/
DROP PROCEDURE IF EXISTS MealFinder;


/*definieer de procedure*/
delimiter //
create procedure MealFinder(
	in lidnaam varchar(100)
)
begin
	select
		g.naam,
		m.*
	from
		maaltijden m
	inner join groepsleden g
		on g.id = m.id
	where g.naam = lidnaam;
end //
delimiter ;


call MealFinder('naam lid');
