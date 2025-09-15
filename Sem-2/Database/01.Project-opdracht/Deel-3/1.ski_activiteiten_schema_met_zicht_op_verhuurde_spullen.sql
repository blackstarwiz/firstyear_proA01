use project;

drop view if exists skiVehuurSchema;


/*
We gaan al de activiteiten van elke groepslid oproepen op 
basis van de tijd dat ze skivehuur spullen.
We gaan tussen huurdatum en terugbrengdatum kijken wat de activiteiten zijn
van de groepleden
*/
create view skiVehuurSchema as
	select
		g.naam as lid,
        g.leeftijd,
		d.dag,
        d.activiteit,
        s.uitrusting_type,
        s.huurdatum,
        s.terugbrengdatum
	from
		skiverhuur s
	inner join groepsleden g on g.id = s.groepslid_id
    inner join  dagprogramma d on d.id = g.id
    /*
    hier gaan we kijken welke dagen een activiteiten hebben
    in de verhuur periode tussen het huren en terug brengen ervan
    */
       AND d.dag BETWEEN s.huurdatum AND s.terugbrengdatum
ORDER BY
/*we sorteren op naam een dag*/
    g.naam,
    d.dag;