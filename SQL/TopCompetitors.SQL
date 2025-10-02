SELECT S.hacker_id , H.name
FROM submissions as S 
JOIN hackers as H
ON S.hacker_id = H.hacker_id
JOIN difficulty as D 
ON S.score = D.score
JOIN challenges as C 
ON S.challenge_id = C.challenge_id AND C.difficulty_level = D.difficulty_level
GROUP BY 1,2
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC , 1;
