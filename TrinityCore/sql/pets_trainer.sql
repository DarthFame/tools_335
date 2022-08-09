--петы учителя классовых навыков для TC 

UPDATE `creature_template` SET `entry`=7385, `name`='Bombay Cat', `subname`='Druid Trainer', `gossip_menu_id`=3926, `faction`=35, `npcflag`=51 WHERE `entry`=7385;
UPDATE `creature_template` SET `entry`=7390, `name`='Cockatiel', `subname`='Warlock Trainer', `gossip_menu_id`=4609, `faction`=35, `npcflag`=51 WHERE `entry`=7390;
UPDATE `creature_template` SET `entry`=7395, `name`='Cockroach', `subname`='DK Trainer', `gossip_menu_id`=0, `faction`=35, `npcflag`=51 WHERE `entry`=7395;
UPDATE `creature_template` SET `entry`=7550, `name`='Wood Frog', `subname`='Shaman Trainer', `gossip_menu_id`=4528, `faction`=35, `npcflag`=51 WHERE `entry`=7550;
UPDATE `creature_template` SET `entry`=7555, `name`='Hawk Owl', `subname`='Priest Trainer', `gossip_menu_id`=6649, `faction`=35, `npcflag`=51 WHERE `entry`=7555;
UPDATE `creature_template` SET `entry`=7562, `name`='Brown Snake', `subname`='Rogue Trainer', `gossip_menu_id`=4659, `faction`=35, `npcflag`=51 WHERE `entry`=7562;
UPDATE `creature_template` SET `entry`=14421, `name`='Brown Prairie Dog', `subname`='Warrior Trainer', `gossip_menu_id`=4475, `faction`=35, `npcflag`=51 WHERE `entry`=14421;
UPDATE `creature_template` SET `entry`=20472, `name`='Brown Rabbit', `subname`='Hunter Trainer', `gossip_menu_id`=4675, `faction`=35, `npcflag`=51 WHERE `entry`=20472;
UPDATE `creature_template` SET `entry`=21008, `name`='Yellow Moth', `subname`='Mage Trainer', `gossip_menu_id`=4539, `faction`=35, `npcflag`=51 WHERE `entry`=21008;
UPDATE `creature_template` SET `entry`=21064, `name`='Red Dragonhawk Hatchling', `subname`='Paladin Trainer', `gossip_menu_id`=4471, `faction`=35, `npcflag`=51 WHERE `entry`=21064;

-- 

UPDATE `item_template` SET `BuyPrice`=4000, `SellPrice`=1000, `AllowableClass`=1024, `RequiredLevel`=5 WHERE `entry`=8485;
UPDATE `item_template` SET `BuyPrice`=4000, `SellPrice`=1000, `AllowableClass`=256, `RequiredLevel`=5 WHERE `entry`=8496;
UPDATE `item_template` SET `BuyPrice`=4000, `SellPrice`=1000, `AllowableClass`=16, `RequiredLevel`=5 WHERE `entry`=8501;
UPDATE `item_template` SET `BuyPrice`=4000, `SellPrice`=1000, `AllowableClass`=8, `RequiredLevel`=5 WHERE `entry`=10361;
UPDATE `item_template` SET `BuyPrice`=4000, `SellPrice`=1000, `AllowableClass`=32, `RequiredLevel`=5 WHERE `entry`=10393;
UPDATE `item_template` SET `BuyPrice`=4000, `SellPrice`=1000, `AllowableClass`=1, `RequiredLevel`=5 WHERE `entry`=10394;
UPDATE `item_template` SET `BuyPrice`=4000, `SellPrice`=1000, `AllowableClass`=64, `RequiredLevel`=5 WHERE `entry`=11027;
UPDATE `item_template` SET `BuyPrice`=4000, `SellPrice`=1000, `AllowableClass`=4, `RequiredLevel`=5 WHERE `entry`=29364;
UPDATE `item_template` SET `BuyPrice`=4000, `SellPrice`=1000, `AllowableClass`=128, `RequiredLevel`=5 WHERE `entry`=29903;
UPDATE `item_template` SET `BuyPrice`=4000, `SellPrice`=1000, `AllowableClass`=2, `RequiredLevel`=5 WHERE `entry`=29956;

-- 

UPDATE `item_template_locale` SET `Description`='Учит призывать тренера друидов.' WHERE `ID`=8485 AND `locale`='ruRU';
UPDATE `item_template_locale` SET `Description`='Учит призывать тренера Чернокнижников.' WHERE `ID`=8496 AND `locale`='ruRU';
UPDATE `item_template_locale` SET `Description`='Учит призывать тренера Жрецов.' WHERE `ID`=8501 AND `locale`='ruRU';
UPDATE `item_template_locale` SET `Description`='Учит призывать тренера Разбойков.' WHERE `ID`=10361 AND `locale`='ruRU';
UPDATE `item_template_locale` SET `Description`='Учит призывать тренера Рыцарей смерти.' WHERE `ID`=10393 AND `locale`='ruRU';
UPDATE `item_template_locale` SET `Description`='Учит призывать тренера Воинов.' WHERE `ID`=10394 AND `locale`='ruRU';
UPDATE `item_template_locale` SET `Description`='Учит призывать тренера Шаманов.' WHERE `ID`=11027 AND `locale`='ruRU';
UPDATE `item_template_locale` SET `Description`='Учит призывать тренера Охотников.' WHERE `ID`=29364 AND `locale`='ruRU';
UPDATE `item_template_locale` SET `Description`='Учит призывать тренера Магов.' WHERE `ID`=29903 AND `locale`='ruRU';
UPDATE `item_template_locale` SET `Description`='Учит призывать тренера Паладинов.' WHERE `ID`=29956 AND `locale`='ruRU';
