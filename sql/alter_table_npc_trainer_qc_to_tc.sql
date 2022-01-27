ALTER TABLE `npc_trainer`
	CHANGE COLUMN `entry` `TrainerId` INT(10) UNSIGNED NOT NULL DEFAULT 0 FIRST,
	CHANGE COLUMN `spell` `SpellId` INT(10) NOT NULL DEFAULT 0 AFTER `TrainerId`,
	CHANGE COLUMN `spellcost` `MoneyCost` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `SpellId`,
	CHANGE COLUMN `reqskill` `ReqSkillLine` INT(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `MoneyCost`,
	CHANGE COLUMN `reqskillvalue` `ReqSkillRank` INT(10) UNSIGNED NOT NULL DEFAULT 0 AFTER `ReqSkillLine`,
	ADD COLUMN `ReqAbility1` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `ReqSkillRank`,
	ADD COLUMN `ReqAbility2` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `ReqAbility1`,
	ADD COLUMN `ReqAbility3` INT(10) UNSIGNED NOT NULL DEFAULT '0' AFTER `ReqAbility2`
	ADD COLUMN `VerifiedBuild` SMALLINT(5) NULL DEFAULT '0' AFTER `ReqLevel`,
	CHANGE COLUMN `reqlevel` `ReqLevel` TINYINT(3) UNSIGNED NOT NULL DEFAULT '0' AFTER `ReqAbility3`,
	DROP PRIMARY KEY;