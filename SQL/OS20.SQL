SELECT ROUND(AVG(LAT_N), 4) AS median_lat
FROM (
    SELECT LAT_N, 
           @rownum := @rownum + 1 AS rn, 
           @total := @rownum
    FROM STATION, (SELECT @rownum := 0) r
    ORDER BY LAT_N
) AS sorted
WHERE rn IN (FLOOR((@total + 1) / 2), CEIL((@total + 1) / 2));
