
/*
https://www.hackerrank.com/challenges/the-report/problem
*/

SELECT
    IF(g.Grade > 7,s.Name, NULL),
    g.Grade,
    s.Marks
FROM Students s, Grades g
WHERE g.Grade IN (SELECT Grade
                  FROM Grades g
                  WHERE g.Min_Mark <= s.Marks
                  AND g.Max_Mark >= s.Marks)
ORDER BY g.Grade DESC, s.Name ASC
