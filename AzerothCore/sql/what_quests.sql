SET @PGUID = 162;

SELECT `id`, `title` FROM `acore_world`.`quest_template_locale` WHERE id IN ((SELECT `quest` FROM `acore_characters`.`character_queststatus` WHERE guid = @PGUID)) AND `locale`='ruru';
