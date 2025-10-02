SELECT DISTINCT city
FROM station
WHERE SUBSTR(city , 1 ,1) = 'a' 
OR SUBSTR(city , 1 ,1) = 'e'
OR SUBSTR(city , 1 ,1) = 'i' 
OR SUBSTR(city , 1 ,1) = 'o' 
OR SUBSTR(city , 1 ,1) = 'u' 
