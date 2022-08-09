-- transmog_335 ruRU for AC
SET @TEXT_ID := 601083;
SET @STRING_ENTRY := 11100;

-- creature_template_locale

INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES 
(190010, 'ruRU', 'Трансмогрификатор', 'Мастер над переменами', 0);

-- creature

INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(190010, 0, 0, 0, 1, 1, 0, 0, -8885.66, 586.789, 93.239, 5.58138, 300, 0, 0, 12600, 0, 0, 0, 0, 0, '', 0);

-- npc_text

DELETE FROM `npc_text` WHERE `ID` IN  (@TEXT_ID,@TEXT_ID+1);
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES
(@TEXT_ID, 'Transmogrification allows you to change how your items look like without changing the stats of the items.\r\nItems used in transmogrification are no longer refundable, tradeable and are bound to you.\r\nUpdating a menu updates the view and prices.\r\n\r\nNot everything can be transmogrified with eachother.\r\nRestrictions include but are not limited to:\r\nOnly armor and weapons can be transmogrified\r\nGuns, bows and crossbows can be transmogrified with eachother\r\nFishing poles can not be transmogrified\r\nYou must be able to equip both items used in the process.\r\n\r\nTransmogrifications stay on your items as long as you own them.\r\nIf you try to put the item in guild bank or mail it to someone else, the transmogrification is stripped.\r\n\r\nYou can also remove transmogrifications for free at the transmogrifier.'),
(@TEXT_ID+1, 'You can save your own transmogrification sets.\r\n\r\nTo save, first you must transmogrify your equipped items.\r\nThen when you go to the set management menu and go to save set menu,\r\nall items you have transmogrified are displayed so you see what you are saving.\r\nIf you think the set is fine, you can click to save the set and name it as you wish.\r\n\r\nTo use a set you can click the saved set in the set management menu and then select use set.\r\nIf the set has a transmogrification for an item that is already transmogrified, the old transmogrification is lost.\r\nNote that same transmogrification restrictions apply when trying to use a set as in normal transmogrification.\r\n\r\nTo delete a set you can go to the set\'s menu and select delete set.');
 
-- npc_text_locale

INSERT INTO `npc_text_locale` (`ID`, `Locale`, `Text0_0`) VALUES
(@TEXT_ID, 'ruRU', 'Трансмогрификация позволяет вам изменить внешний вид ваших предметов, не меняя их характеристики.\r\nПредметы, использованные при трансмогрификации, больше не подлежат возврату, обмену и привязаны к вам.\r\nПри обновлении меню обновляются вид и цены.\r\n\r\nНе все можно трансмогрифицировать друг с другом.\r\nОграничения включают, но не ограничиваются:\r\nТрансмогрифицировать можно только доспехи и оружие.\r\nРужья, луки и арбалеты можно трансмогрифицировать друг с другом.\r\nУдочки нельзя трансмогрифицировать\r\nВы должны иметь возможность экипировать оба предмета, используемые в процессе.\r\n\r\nТрансмогрификации остаются на ваших предметах, пока они у вас есть.\r\nЕсли вы попытаетесь положить предмет в банк гильдии или отправить его по почте кому-нибудь другому, трансмогрификация будет отключена.\r\n\r\nВы также можете бесплатно удалить трансмогрификации в трансмогрификаторе.'),
(@TEXT_ID+1, 'ruRU', 'Вы можете сохранить свои собственные наборы для трансмогрификации.\r\n\r\nЧтобы сохранить набор, сначала вы должны трансмогрифицировать ваши экипированные предметы.\r\nЗатем, когда вы перейдете в меню управления набором и перейдете в меню сохранения набора,\r\nвсе предметы, которые вы трансмогрифицировали, отображаются, так что вы видите, что вы сохраняете.\r\nЕсли вы считаете, что набор в порядке, вы можете щелкнуть, чтобы сохранить набор и присвоить ему любое имя.\r\n\r\nЧтобы использовать набор, вы можете щелкнуть сохраненный набор в меню управления набором, а затем выбрать использование набора.\r\nЕсли в наборе есть трансмогрификация для уже трансмогрифицированного предмета, старая трансмогрификация теряется.\r\nОбратите внимание, что при попытке использовать набор действуют те же ограничения трансмогрификации, что и при обычной трансмогрификации.\r\n\r\nЧтобы удалить набор, перейдите в меню набора и выберите «Удалить набор».');

-- acore_string

DELETE FROM `acore_string` WHERE `entry` IN  (@STRING_ENTRY+0,@STRING_ENTRY+1,@STRING_ENTRY+2,@STRING_ENTRY+3,@STRING_ENTRY+4,@STRING_ENTRY+5,@STRING_ENTRY+6,@STRING_ENTRY+7,@STRING_ENTRY+8,@STRING_ENTRY+9,@STRING_ENTRY+10, @STRING_ENTRY+11, @STRING_ENTRY+12);
INSERT INTO `acore_string` (`entry`, `content_default`, `locale_ruRU`) VALUES
(@STRING_ENTRY+0, 'Item successfully transmogrified.', 'Предмет успешно трансмогрифицирован'),
(@STRING_ENTRY+1, 'Equipment slot is empty.' , 'Слот экипировки пуст'),
(@STRING_ENTRY+2, 'Invalid source item selected.' , 'Неверно выбран исходный предмет'),
(@STRING_ENTRY+3, 'Source item does not exist.' , 'Исходный предмет не существует'),
(@STRING_ENTRY+4, 'Destination item does not exist.' , 'Предмет назначения не существует'),
(@STRING_ENTRY+5, 'Selected items are invalid.' , 'Предмет выбран неверный'),
(@STRING_ENTRY+6, 'You don''t have  enough money.' , 'Не достаточно золота...'),
(@STRING_ENTRY+7, 'You don''t have enough tokens.' , 'Нет нужного количества токенов'),
(@STRING_ENTRY+8, 'All your transmogrifications were removed.' , 'Трансмогрификация удалена'),
(@STRING_ENTRY+9, 'No transmogrification found.' , 'Трансмогрификация не найдена'),
(@STRING_ENTRY+10, 'Invalid name inserted.' , 'Вы ввели неверное имя'),
(@STRING_ENTRY+11, 'Showing transmogrifieded items, relog to update the current area.' , 'Отображение трансмогрифицированных предметов. Перезайдите, чтобы обновить текущую область.'),
(@STRING_ENTRY+12, 'Hiding transmogrifieded items, relog to update the current area.' , 'Скрытие трансмогрифицированных предметов. Перезайдите, чтобы обновить текущую область.');

DELETE FROM `command` WHERE `name` IN ('transmog');
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('transmog', 0, 'Syntax: .transmog <on/off>\nAllows seeing transmogrified items and the transmogrifier NPC.'); 
