WITH RECURSIVE seq AS (
        SELECT 2 AS n
        UNION ALL
        SELECT n + 1 FROM seq WHERE n<1000
)
SELECT GROUP_CONCAT(s.n ORDER BY s.n SEPARATOR '&') AS primes
FROM seq s
WHERE NOT EXISTS (
    SELECT  1 FROM seq d
    WHERE d.n <= FLOOR(SQRT(s.n)) AND s.n % d.n = 0
)
ORDER BY s.n;
