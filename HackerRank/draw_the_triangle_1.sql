/*
https://www.hackerrank.com/challenges/draw-the-triangle-1/problem
*/

DELIMITER $$
CREATE PROCEDURE test()
BEGIN
   DECLARE counter INT DEFAULT 20;
   WHILE counter >= 0 DO
      SELECT REPEAT('* ', counter);
      SET counter = counter - 1;
   END WHILE;
END$$
DELIMITER ;

call test();
