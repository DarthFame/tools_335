-- save character
-- SET @id:= ;
SET @acc:=1;
SET @guid:=75;
SET @owner_guid:=@guid;
SET @OWNER:=@guid;
SET @pet_guid:=(SELECT `id` FROM `tcharacters`.`character_pet` WHERE `owner`=@guid);

CREATE DATABASE IF NOT EXISTS `characters_temp`;
-- USE `characters_temp`;
USE `tcharacters`;

insert into characters_temp.characters SELECT * FROM characters WHERE `guid`=@guid;
insert into characters_temp.character_account_data SELECT * FROM character_account_data WHERE `guid`=@guid;
insert into characters_temp.character_skills SELECT * FROM character_skills WHERE `guid`=@guid;
insert into characters_temp.character_spell SELECT * FROM character_spell WHERE `guid`=@guid;
insert into characters_temp.character_talent SELECT * FROM character_talent WHERE `guid`=@guid;
insert into characters_temp.character_inventory SELECT * FROM character_inventory WHERE `guid`=@guid;
insert into characters_temp.item_instance SELECT * FROM item_instance WHERE `owner_guid`=@owner_guid;
insert into characters_temp.character_achievement SELECT * FROM character_achievement WHERE `guid`=@guid;
insert into characters_temp.character_achievement_progress SELECT * FROM character_achievement_progress WHERE `guid`=@guid;
insert into characters_temp.character_action SELECT * FROM character_action WHERE `guid`=@guid;
insert into characters_temp.character_queststatus SELECT * FROM character_queststatus WHERE `guid`=@guid;
insert into characters_temp.character_queststatus_rewarded SELECT * FROM character_queststatus_rewarded WHERE `guid`=@guid;
insert into characters_temp.character_glyphs SELECT * FROM character_glyphs WHERE `guid`=@guid;
insert into characters_temp.character_homebind SELECT * FROM character_homebind WHERE `guid`=@guid;
insert into characters_temp.character_pet SELECT * FROM character_pet WHERE `owner`=@OWNER;
insert into characters_temp.character_reputation SELECT * FROM character_reputation WHERE `guid`=@guid;
insert into characters_temp.character_aura SELECT * FROM character_aura WHERE `guid`=@guid;
insert into characters_temp.pet_aura SELECT * FROM pet_aura WHERE `guid` IN (SELECT `id` FROM `tcharacters`.`character_pet` WHERE `owner`=@guid);
insert into characters_temp.pet_spell SELECT * FROM pet_spell WHERE `guid` IN (SELECT `id` FROM `tcharacters`.`character_pet` WHERE `owner`=@guid);
