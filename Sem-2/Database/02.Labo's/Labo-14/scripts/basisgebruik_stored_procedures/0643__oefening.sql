use aptunes;


drop procedure if exists CreateAndReleaseAlbum;


delimiter $$
create procedure CreateAndReleaseAlbum(
	in titel_param varchar(100), 
    in bands_id_param int
)
begin
	DECLARE nieuwAlbumId INT;
    
    INSERT INTO Albums (Titel)
    VALUES (titel_param);

   
    SET nieuwAlbumId = LAST_INSERT_ID();

   
    INSERT INTO AlbumReleases (Albums_id, Bands_id)
    VALUES (nieuwAlbumId, bands_Id_param);

end$$
DELIMITER ;

select * from bands
order by id desc;


CALL CreateAndReleaseAlbum('Lil-Nas X'
,1002);