SET @MAP = 0;
SET @ZONE = 45;
SET @X_COORD = -1040.792847;
SET @Y_COORD = -3551.314453;
SET @Z_COORD = 56.551773;
SET @ORIENTATION = 0.009153;

UPDATE `playercreateinfo` SET `map`=@MAP WHERE `race` BETWEEN 1 AND 11;
UPDATE `playercreateinfo` SET `zone`=@ZONE WHERE `race` BETWEEN 1 AND 11;
UPDATE `playercreateinfo` SET `position_x`=@X_COORD WHERE `race` BETWEEN 1 AND 11;
UPDATE `playercreateinfo` SET `position_y`=@Y_COORD WHERE `race` BETWEEN 1 AND 11;
UPDATE `playercreateinfo` SET `position_z`=@Z_COORD WHERE `race` BETWEEN 1 AND 11;
UPDATE `playercreateinfo` SET `orientation`=@ORIENTATION WHERE `race` BETWEEN 1 AND 11;