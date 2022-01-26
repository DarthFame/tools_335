-- 

SET @name:=username
SET @id:= (SELECT `id` FROM `auth`.`account` WHERE `username`=@name);
DELETE FROM `auth`.`account` WHERE `id`=@id;