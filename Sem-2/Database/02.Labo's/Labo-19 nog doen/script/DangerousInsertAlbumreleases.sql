use aptunes;

DROP procedure IF EXISTS `MockAlbumReleaseAlt`;

DELIMITER $$
CREATE PROCEDURE `MockAlbumReleaseAlt` ()
SQL SECURITY INVOKER
BEGIN
declare Albums_Id int;
declare Bands_Id int;
select Id from Albums order by rand() limit 1 into Albums_Id;
select Id from Bands order by rand() limit 1 into Bands_Id;
insert into Albumreleases (Bands_Id, Albums_Id)
values
(Bands_Id, Albums_Id);
END$$

DELIMITER ;
call MockAlbumReleaseAlt;

drop procedure if exists DangerousInsertAlbumreleases;

delimiter $$
create procedure DangerousInsertAlbumreleases()
begin
	declare counter int default 0;
	declare exit handler for sqlexception
    begin
		rollback;
        signal sqlstate '45000'
        set message_text = 'Nieuwe releases konden niet worden toegevoegd.';
    end;
	start transaction;
		
        repeat 
			set counter = counter + 1 ;
			call MockAlbumReleaseAlt();
		until counter = 2 end repeat;
        
        if counter = 2 then
			signal sqlstate '45000'
            set message_text = 'Foutopgetreden: ingevoerde getallen zijn niet geldig';
		end if;
	commit;
end $$
delimiter ;

call DangerousInsertAlbumreleases();