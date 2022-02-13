-- save character
-- SET @id:= ;
SET @acc:=87;
SET @guid:=364;
SET @owner_guid:=@guid;
SET @OWNER:=@guid;
SET @pet_guid:=(SELECT `id` FROM `characters`.`character_pet` WHERE `owner`=@guid);

-- CREATE DATABASE IF NOT EXISTS `characters_temp`;
-- USE `characters_temp`;
USE `characters`;

insert into characters_temp.characters SELECT * FROM characters WHERE `guid`=@guid;
insert into characters_temp.character_account_data SELECT * FROM character_account_data WHERE `guid`=@guid;
-- insert into characters_temp.account_data SELECT * FROM account_data WHERE `accountid`=@acc;
insert into characters_temp.character_skills SELECT * FROM character_skills WHERE `guid`=@guid;
insert into characters_temp.character_spell (`guid`, `spell`) SELECT `guid`, `spell` FROM character_spell WHERE `guid`=@guid;
insert into characters_temp.character_talent (`guid`,`spell`,`specMask`) SELECT `guid`,`spell`,`talentGroup` AS specMask FROM character_talent WHERE `guid`=@guid;
insert into characters_temp.character_inventory SELECT * FROM character_inventory WHERE `guid`=@guid;
insert into characters_temp.item_instance (`guid`, `itemEntry`, `owner_guid`, `creatorGuid`, `giftCreatorGuid`, `count`, `duration`, `charges`, `flags`, `enchantments`, `randomPropertyId`, `durability`, `playedTime`, `text`) SELECT `guid`, `itemEntry`, `owner_guid`, `creatorGuid`, `giftCreatorGuid`, `count`, `duration`, `charges`, `flags`, `enchantments`, `randomPropertyId`, `durability`, `playedTime`, `text` FROM item_instance WHERE `owner_guid`=@owner_guid;
insert into characters_temp.character_achievement SELECT * FROM character_achievement WHERE `guid`=@guid;
insert into characters_temp.character_achievement_progress SELECT * FROM character_achievement_progress WHERE `guid`=@guid;
insert into characters_temp.character_action SELECT * FROM character_action WHERE `guid`=@guid;
insert into characters_temp.character_queststatus SELECT * FROM character_queststatus WHERE `guid`=@guid;
insert into characters_temp.character_queststatus_rewarded SELECT * FROM character_queststatus_rewarded WHERE `guid`=@guid;
insert into characters_temp.character_glyphs SELECT * FROM character_glyphs WHERE `guid`=@guid;
insert into characters_temp.character_homebind SELECT * FROM character_homebind WHERE `guid`=@guid;
insert into characters_temp.character_pet SELECT * FROM character_pet WHERE `owner`=@OWNER;
insert into characters_temp.character_reputation SELECT * FROM character_reputation WHERE `guid`=@guid;
insert into characters_temp.character_aura (`guid`, `casterGuid`, `itemGuid`, `spell`, `effectMask`, `recalculateMask`, `stackCount`, `amount0`, `amount1`, `amount2`, `base_amount0`, `base_amount1`, `base_amount2`, `maxDuration`, `remainTime`, `remainCharges`) SELECT `guid`, `casterGuid`, `itemGuid`, `spell`, `effectMask`, `recalculateMask`, `stackCount`, `amount0`, `amount1`, `amount2`, `base_amount0`, `base_amount1`, `base_amount2`, `maxDuration`,`remainTime`, `remainCharges` FROM character_aura WHERE `guid`=@guid;
insert into characters_temp.pet_aura SELECT * FROM pet_aura WHERE `guid` IN (SELECT `id` FROM `characters`.`character_pet` WHERE `owner`=@guid);
insert into characters_temp.pet_spell SELECT * FROM pet_spell WHERE `guid` IN (SELECT `id` FROM `characters`.`character_pet` WHERE `owner`=@guid);
