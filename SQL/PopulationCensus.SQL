SELECT SUM(c.population) 
FROM city as c 
JOIN country as co 
ON c.countrycode = co.code
WHERE co.continent = 'Asia'
