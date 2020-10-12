/*
https://www.hackerrank.com/challenges/challenges
*/

SELECT id, name, counter
FROM (SELECT c.hacker_id as id, h.name as name, count(c.hacker_id) as counter
      FROM Hackers h
      JOIN Challenges c
      ON c.hacker_id = h.hacker_id
      GROUP BY c.hacker_id, h.name) AS data
WHERE counter = (SELECT MAX(subcounter)
                 FROM (SELECT COUNT(hacker_id) as subcounter
                       FROM Challenges
                       GROUP BY hacker_id) as subdata)
OR counter in (SELECT subcounter2
               FROM (SELECT COUNT(hacker_id) as subcounter2
                     FROM Challenges
                     GROUP BY hacker_id) as subdata2
               GROUP BY subcounter2
               HAVING COUNT(subcounter2) = 1)
ORDER BY counter desc, id
