SELECT COUNT(*) FROM film WHERE length > (SELECT AVG(length) FROM film );

SELECT COUNT(*) FROM film WHERE rental_rate = (SELECT MAX(rental_rate) FROM film);

SELECT * FROM film WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) AND replacement_cost = 
(SELECT MIN(replacement_cost)  FROM film );

SELECT c.customer_id, COUNT(*) as num_payments
FROM payment p
INNER JOIN customers c ON p.customer_id = c.customer_id
GROUP BY c.customer_id
ORDER BY num_payments DESC;









  










