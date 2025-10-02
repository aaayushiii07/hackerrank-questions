WITH CTE_1 AS (
SELECT h.hacker_id, h.name, COUNT(c. challenge_id) AS challenges_created
FROM Hackers as h
INNER JOIN Challenges AS C
ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id , h.name
 ), CTE_2 AS (
SELECT challenges_created, COUNT(challenges_created) AS DUP_CHAL
FROM CTE_1
GROUP BY challenges_created )
SELECT C1.hacker_id, C1.name, C1.challenges_created
FROM CTE_1 AS C1
INNER JOIN CTE_2 AS C2 ON C1.challenges_created = C2.challenges_created
WHERE C2.DUP_CHAL = 1
OR C1.challenges_created = (SELECT MAX(challenges_created) FROM CTE_1 )
ORDER BY C1.challenges_created DESC, C1.hacker_id
