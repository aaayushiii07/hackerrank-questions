SELECT id , age , coins_needed , W.power
FROM Wands as W 
JOIN Wands_Property as WP 
ON W.code = WP.code
WHERE is_evil = 0 AND W.coins_needed = (
    SELECT min(W1.coins_needed)
    FROM Wands as W1
    JOIN Wands_Property as WP1
    ON W1.code = WP1.code
    WHERE WP1.age = WP.age
    AND W1.power = W.power
)
ORDER BY 4 DESC , age DESC
