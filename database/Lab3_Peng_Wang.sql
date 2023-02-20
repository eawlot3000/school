use world;
/* A */
/* 1 */
select countrycode, count(*) as "NumberofCities" from city where countrycode IN ('ARG', 'ARM', 'ASM', 'ATG') group by countrycode;
/* 2 */
select countrycode, count(*) as "NumberofCities" from city where countrycode IN ('ARG', 'ARM', 'ASM', 'ATG') group by countrycode HAVING COUNT(*) >= 200;
/* 3 */
select 
  countrycode, 
  COUNT(*) as NumberofCities, 
  SUM(population) as total_population, 
  AVG(population) as average_population
FROM city GROUP BY countrycode;

/* 4 */
select
  continent, 
  SUM(GNP) as total_GNP, 
  AVG(population) as avg_population, 
  MIN(population) as min_population, 
  MAX(population) as max_population
FROM country GROUP BY continent ORDER BY total_GNP DESC;

/* 5 */
SELECT District, CountryCode, COUNT(CountryCode)
FROM city
GROUP BY District, CountryCode

/* 6 */
select count(Name), sum(Population), avg(Population), min(Population), max(Population) from city;

/* 7 */
select continent, count(Name), avg(Population) as avg_population
from country
group by continent
order by avg_population DESC

/* 8 */
select continent, Region, count(Name), sum(GNP), sum(Population), avg(Population) as avg_population
from country
where HeadOfState like 'Elisabeth II'
group by continent, Region

/* 9 */
select CountryCode, count(language) as official_language
from countrylanguage
where isOfficial = 'T'
group by CountryCode
having official_language < 2

/* 10 */
select District, CountryCode, count(Name), sum(population), avg(population)
from city
where District Like 'a%'
group by District, CountryCode
having count(Name) > 10


/* B */
/* 1 */
select last_name, first_name, as numberofactors from actor
group by last_name
order by numberofactors DESC
limit 5

/* 2 */
select rating, count(title) as numberoffilms, max(length), avg(length), avg(rental_duration), avg(rental_rate)
from film
group by rating

/* 3 */
SELECT movie_id, count(inventory_count) as total_copies
FROM inventory
GROUP BY movie_id
HAVING total_copies > 5
ORDER BY total_copies DESC

/* 4 */
SELECT customer_id, COUNT(rental_id) as rentals, AVG(return_date - rental_date) as average_days
FROM rentals
GROUP BY customer_id
ORDER BY rentals DESC, average_days ASC