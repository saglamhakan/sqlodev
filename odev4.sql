
select DISTINCT replacement_cost from film f ;
select count(DISTINCT replacement_cost)  from film f ;
SELECT COUNT(*) FROM film WHERE title LIKE 'T%' AND rating = 'G';
SELECT COUNT(*) FROM country WHERE LENGTH(country) = 5;
SELECT COUNT(*) FROM city WHERE city ILIKE '%r';