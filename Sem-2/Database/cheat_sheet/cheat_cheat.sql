/*
check of view is updatable 

SYNTAX:
-----------
SELECT 
  table_name,
  is_updatable
FROM information_schema.views
WHERE table_name = 'auteursboeken';

*/

/*
Update safety aan en uitzetten


set sql_safe_updates = 0;

set sql_safe_updates = 1;
*/