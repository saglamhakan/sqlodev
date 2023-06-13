SELECT first_name FROM actor UNION SELECT first_name FROM customer;
SELECT first_name FROM actor INTERSECT SELECT first_name FROM customer;
SELECT first_name FROM actor WHERE first_name NOT IN (SELECT first_name FROM customer);

**Tüm verileri sıralama

SELECT first_name FROM actor UNION ALL SELECT first_name FROM customer;

**Kesişen verileri sıralama

SELECT first_name FROM actor INTERSECT SELECT first_name FROM customer;

**Yalnızca ilk tabloda bulunan verileri sıralama

SELECT first_name FROM actor WHERE first_name NOT IN (SELECT first_name FROM customer)
UNION SELECT first_name FROM customer WHERE first_name NOT IN (SELECT first_name FROM actor);




























