SET @MAP = 530;
SET @ZONE = 3518;
SET @X_COORD = -1538.779907;
SET @Y_COORD = 8003.291504;
SET @Z_COORD = -20.152569;
SET @ORIENTATION = 4.005726;

UPDATE playercreateinfo SET map=@MAP WHERE race BETWEEN 1 AND 11;
UPDATE playercreateinfo SET zone=@ZONE WHERE race BETWEEN 1 AND 11;
UPDATE playercreateinfo SET position_x=@X_COORD WHERE race BETWEEN 1 AND 11;
UPDATE playercreateinfo SET position_y=@Y_COORD WHERE race BETWEEN 1 AND 11;
UPDATE playercreateinfo SET position_z=@Z_COORD WHERE race BETWEEN 1 AND 11;
UPDATE playercreateinfo SET orientation=@ORIENTATION WHERE race BETWEEN 1 AND 11;