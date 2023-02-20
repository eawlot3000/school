use world;
/*
  Student Name: Peng Wang
  Student Number: 041094691
  Course Section: section_300
*/

/* Task A */
select * from city where id='31';
select * from city where countrycode='NLD';
select * from city where Population>20000 order by Population DESC;

/* Task B */
select name, region, IndepYear, Population from country where 1975<=IndepYear<1991 and Population<22000000;
select name, IndepYear from country where 1960<IndepYear<1980 order by IndepYear;
select name, population, GNP from country where Continent='Africa' and 1960<IndepYear<1980 order by GNP DESC;
select name, continent from country where Continent='Europe' OR Continent='North America' order by continent, name;
select name, continent from country where Continent NOT IN ('Europe', 'North America') order by continent, name;
select name, continent from country where Continent LIKE '%America%' order by continent, name;
select name, continent from country where name LIKE '_____' order by continent, name;
select name, continent from country where name LIKE '__y__' order by continent, name;
select name, continent, SurfaceArea, IndepYear from country where IndepYear is NULL order by SurfaceArea DESC, name;
select name, continent, IndepYear from country where IndepYear is not NULL order by continent, name;
select name, continent, IndepYear from country where IndepYear is not NULL order by continent, name LIMIT 5;
