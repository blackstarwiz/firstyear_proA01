use jason_db;



SELECT Artiest, DuurtijdInSeconden
FROM liedjes
where genre = "klassiek" and DuurtijdInSeconden > 480
group by artiest
having artiest != " "
order by artiest;