/*
https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true
DELIMITER //
CREATE FUNCTION triangle_type(sideA INT, sideB INT, sideC INT)
RETURNS VARCHAR(14)
READS SQL DATA
BEGIN
    SET @max_side = GREATEST(sideA, sideB, sideC);
    SET @min_side = LEAST(sideA, sideB, sideC);
    SET @med_side = @min_side;

    SET @res = "";
    IF (sideA = sideB) and (sideA = C) THEN
        SET @res = "Equilateral";
    ELSEIF (@min_side + @med_side < @max_side) THEN
        SET @res = "Not A Triangle";
    ELSEIF (@min_side = @med_side) THEN
        SET @res = "Isosceles";
    ELSE
        SET @res = "Scalene";
    END IF;

    RETURN @res;
END; //

SELECT triangle_type(A, B, C)
FROM TRIANGLES;
*/

SELECT
    CASE
        WHEN ( A = B AND B = C) THEN "Equilateral"
        WHEN (A + B <= C) OR (A + C <= B) OR (B + C <= A) THEN "Not A Triangle"
        WHEN (A = B AND B != C) OR (A = C AND C != B) OR (B = C AND C != A) THEN "Isosceles"
        ELSE "Scalene"
    END
FROM TRIANGLES
