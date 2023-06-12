SELECT AVG(rental_rate) AS average_rental_rate FROM film;
SELECT COUNT(*) AS film_count FROM film WHERE title LIKE 'C%';
SELECT length FROM film WHERE rental_rate = 0.99 ORDER BY length DESC LIMIT 1;
SELECT COUNT(DISTINCT replacement_cost) AS distinct_cost_count FROM film WHERE length > 150;






