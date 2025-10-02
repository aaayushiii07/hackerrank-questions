select co.continent, floor(avg(ci.population))
from city as ci 
join country as co 
on ci.countrycode = co.code
group by 1
order by 1
