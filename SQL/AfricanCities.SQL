SELECT c.name
FROM city as c
JOIN country as co
ON c.countrycode = co.code 
WHERE co.continent = 'Africa'
