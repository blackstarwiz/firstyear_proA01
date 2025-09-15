use jason_db;


select
	v.naam as 'naam voedsel',
    v.wetenschappelijke_naam as 'Wetenschappelijke naam',
    c.naam as groep,
    sc.naam as subgrooep
from
	voedsel v
inner join categorieen c on c.id = v.id
inner join subcategorieen sc on sc.id = v.id;