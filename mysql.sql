/*distinct is used to know the unique industries available*/
select now();
Create Database ReconTest;
select * from reconc;
select * from reconc where Servicenumber=9990099480;
SELECT  * FROM movies;
select count(distinct title) from movies where release_year=2022;
select distinct title from movies where release_year=2022;
SELECT title, industry
FROM movies;
select distinct industry from movies;
select count(*) from movies where industry="Bollywood";
select count(*) from movies where industry="hollywood";
select * from movies where title like "%THOR%";
select * from movies where title like "%america%";
                    /*NULL VS EMPTY*/
select * from movies where studio is Null;
select * from movies where studio=""; /* is null is different from empty=""*/
select * from movies where studio is not Null;
select * from movies where imdb_rating is null;
select * from movies where imdb_rating is not null;
                            /*AND = BETWEEN*/
select * from movies where imdb_rating >6 and imdb_rating<9; /*same with beneath*/
select * from movies where imdb_rating between 6 and 9; /*same with above*/
                           /*OR = IN*/
select * from movies where release_year=2022 or release_year=2019; /*same with beneath*/
select * from movies where release_year in (2022, 2019); /*Same with beneath*/
select * from movies where studio in ("Marvel Studios", "Zee Studios");
                    /*ORDER BY: DEFUALT IS ASC*/
select * from movies where industry = "Hollywood" order by release_year desc;
select * from movies  order by imdb_rating desc limit 5;
select * from movies  order by imdb_rating desc limit 5 offset 1;
               /*MAX, MIN, AVG AND GROUPBY*/
select max(imdb_rating) from movies;
select man(imdb_rating) from movies where industry="hollywood";
select man(imdb_rating) from movies where industry="bollywood";
select min(imdb_rating) from movies where industry="Bollywood";
select min(imdb_rating) from movies where industry="Hollywood";
select min(imdb_rating) as min, 
max(imdb_rating) as max, 
avg(imdb_rating) as avg 
from movies 
where studio="Marvel Studios";
                                    /*GROUP BY*/
SELECT studio, min(imdb_rating) as min, 
               max(imdb_rating) as max, 
               avg(imdb_rating) as avg
FROM movies
GROUP BY studio order by avg desc; 
select * from movies;
# print all the years where morethan 2 movies were released
SELECT release_year, count(*) as cnt 
FROM movies 
GROUP BY release_year 
having cnt >2
order by cnt desc;
#current date function in SQL
SELECT year(curdate());
SELECT month(curdate());
SELECT date(curdate()); # or select curdate();
select *, year(curdate())-birth_year as age from actors order by age;
select * from financials;
select * from financials;
select *, (revenue - budget) as Profit from financials;
#converting USD to INR
# if condition: if(condition, true, false): 
#condition and things you want to do if condition is true or false 
select *, 
if(currency="USD", revenue*77, revenue) as Revenue_inr 
from financials;
SELECT *, 
	CASE
		WHEN unit="thousands" THEN revenue/1000
		WHEN unit="billions" THEN revenue*1000
		ELSE revenue
	END as revenue_mln
FROM financials;
--               join ---
select * from movies;
select * from financials;
select movies.movie_id, title,revenue, currency, unit
from movies
join financials
on movies.movie_id = financials.movie_id;
-- creating database and droping database---
show databases;
drop database world;
show tables;

