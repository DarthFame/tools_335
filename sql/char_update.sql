-- update character
-- SET @id:= ;
SET @acc:=26;
SET @guid:=250;
-- SET @guildid:=12;
SET @owner_guid:=@guid;
SET @OWNER:=@guid;

-- UPDATE `characters_temp`.`account_data` SET `accountid`=@acc;
UPDATE `characters_temp`.`character_account_data` SET `guid`=@guid;
UPDATE `characters_temp`.`characters` SET `guid`=@guid, `ACCOUNT`=@acc;
UPDATE `characters_temp`.`character_achievement` SET `guid`=@guid;
UPDATE `characters_temp`.`character_achievement_progress` SET `guid`=@guid;
UPDATE `characters_temp`.`character_action` SET `guid`=@guid;
UPDATE `characters_temp`.`character_aura` SET `guid`=@guid, `casterGuid`=@guid;
UPDATE `characters_temp`.`character_glyphs` SET `guid`=@guid;
UPDATE `characters_temp`.`character_homebind` SET `guid`=@guid;
UPDATE `characters_temp`.`character_inventory` SET `guid`=@guid;
UPDATE `characters_temp`.`character_pet` SET `owner`=@owner;
UPDATE `characters_temp`.`character_queststatus` SET `guid`=@guid;
UPDATE `characters_temp`.`character_queststatus_rewarded` SET `guid`=@guid;
UPDATE `characters_temp`.`character_reputation` SET `guid`=@guid;
UPDATE `characters_temp`.`character_skills` SET `guid`=@guid;
UPDATE `characters_temp`.`character_spell` SET `guid`=@guid;
UPDATE `characters_temp`.`character_talent` SET `guid`=@guid;
UPDATE `characters_temp`.`item_instance` SET `owner_guid`=@owner_guid;

-- Guild
-- SET @guid:=1;
-- SET @guildid:=12;
-- UPDATE `characters_temp`.`guild` SET `guildid`=@guildid, `leaderguid`=@guid;
-- UPDATE `characters_temp`.`guild_bank_eventlog` SET `guildid`=@guildid, `PlayerGuid`=@guid;
-- UPDATE `characters_temp`.`guild_bank_item`  SET `guildid`=@guildid;
-- UPDATE `characters_temp`.`guild_bank_right` SET `guildid`=@guildid;
-- UPDATE `characters_temp`.`guild_bank_tab` SET `guildid`=@guildid;
-- UPDATE `characters_temp`.`guild_eventlog` SET `guildid`=@guildid, `PlayerGuid1`=@guid;
-- UPDATE `characters_temp`.`guild_member` SET `guildid`=@guildid, `guid`=@guid;
-- UPDATE `characters_temp`.`guild_member_withdraw` SET `guid`=@guid;
-- UPDATE `characters_temp`.`guild_rank` SET `guildid`=@guildid;
-- 