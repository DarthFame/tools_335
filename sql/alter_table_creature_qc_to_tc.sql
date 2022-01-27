-- convert quantum to trinity

ALTER TABLE `creature`
	ADD COLUMN `zoneId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Zone Identifier' AFTER `map`,
	ADD COLUMN `areaId` SMALLINT(5) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Area Identifier' AFTER `zoneId`,
	ADD COLUMN `wander_distance` FLOAT NOT NULL DEFAULT '0' AFTER `spawntimesecs`,
	ADD COLUMN `ScriptName` CHAR(64) NULL DEFAULT '' COLLATE 'utf8_general_ci' AFTER `dynamicflags`,
	ADD COLUMN `VerifiedBuild` INT(10) NULL DEFAULT '0' AFTER `ScriptName`,
	DROP COLUMN `spawndist`;
