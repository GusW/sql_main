
/*
https://www.hackerrank.com/challenges/print-prime-numbers/problem
*/

DELIMITER $$
CREATE PROCEDURE test()
BEGIN
    DECLARE counter INT DEFAULT 3;
    SET @res = "2";
    main_loop: WHILE counter <= 1000 DO
        SET @subcounter = 2;
        WHILE @subcounter < counter DO
            IF (MOD(counter, @subcounter)=0) THEN
                SET counter = counter + 1;
                ITERATE main_loop;
            END IF;
            SET @subcounter = @subcounter + 1;
        END WHILE;
        SET @res = CONCAT_WS('&', @res, counter);
        SET counter = counter + 1;
    END WHILE;
    SELECT @res;
END $$
DELIMITER ;

CALL test();
