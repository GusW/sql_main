
/*
https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true
*/

SELECT CONCAT(Name, '(', UPPER(LEFT(Occupation, 1)), ')')
FROM OCCUPATIONS
ORDER BY Name ASC;

SELECT CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(Occupation), 's.')
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation), Occupation ASC
