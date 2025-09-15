use jason_db;



SELECT 
    COALESCE(g.titel, 'geen games gekend') AS game_titel, 
    'geen platform gekend' AS platform_naam
FROM Games g
LEFT JOIN Releases r ON g.id = r.games_id
WHERE r.platformen_id IS NULL

UNION ALL

-- Platformen zonder games
SELECT 
    'geen games gekend' AS game_titel, 
    COALESCE(p.naam, 'geen platform gekend') AS platform_naam
FROM Platformen p
LEFT JOIN Releases r ON p.id = r.platformen_id
WHERE r.games_id IS NULL;