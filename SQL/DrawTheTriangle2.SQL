DELIMITER $$
CREATE PROCEDURE while_proc()
BEGIN
    DECLARE i INT DEFAULT 1;
    WHILE i < 21 DO
        SELECT REPEAT('* ' , i);
        SET i = i+1;
      END WHILE;
END$$
DELIMITER ;
CALL while_proc();
         

