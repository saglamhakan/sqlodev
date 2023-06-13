SELECT * FROM film WHERE title LIKE 'K%' ORDER BY length DESC, replacement_cost LIMIT 4;

SELECT rating, COUNT(*) as film_count FROM film GROUP BY rating ORDER BY film_count DESC LIMIT 1;

SELECT first_name, last_name FROM customer
WHERE customer_id = (SELECT customer_id FROM payment GROUP BY customer_id ORDER BY COUNT(*) DESC LIMIT 1);

SELECT category.name AS kategori_ismi, COUNT(film_category.category_id) AS film_sayisi FROM category
JOIN film_category ON category.category_id = film_category.category_id GROUP BY category.name;

SELECT COUNT(*) as film_sayisi FROM film WHERE LOWER(title) LIKE '%e%e%e%e%';














