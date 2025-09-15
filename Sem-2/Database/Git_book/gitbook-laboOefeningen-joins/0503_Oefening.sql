USE jason_db;

UPDATE Releases, Games
SET Datum = '2019-02-22'
WHERE Games.Titel = 'Anthem' AND Releases.Games_Id = Games.Id;

UPDATE Releases, Games
SET Datum = '2019-03-22'
WHERE Games.Titel = 'Sekiro: Shadows Die Twice' AND Releases.Games_Id = Games.Id;

UPDATE Releases, Games
SET Datum = '2019-03-08'
WHERE Games.Titel = 'Devil May Cry 5' AND Releases.Games_Id = Games.Id;

UPDATE Releases, Games
SET Datum = '2018-10-02'
WHERE Games.Titel = 'Mega Man 11' AND Releases.Games_Id = Games.Id;