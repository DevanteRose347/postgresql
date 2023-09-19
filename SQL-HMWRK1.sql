--#1
SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';
--#2
SELECT *
FROM payment
WHERE amount BETWEEN 3.99 and 5.99;
--#3
SELECT COUNT(film_id)
FROM inventory;
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;
--#4
SELECT 	first_name, last_name
FROM customer
WHERE last_name = 'william';
--#5
SELECT COUNT(staff_id), staff_id
FROM rental
GROUP BY staff_id 

SELECT staff_id, COUNT(staff_id)
FROM payment
GROUP BY staff_id

--#6
SELECT COUNT(DISTINCT district)
FROM address
--#7
SELECT COUNT(film_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT (film_id) DESC;

--#8
SELECT *
FROM customer 
WHERE last_name LIKE '%es' AND strore_id = 1

--#9
SELECT COUNT(amount),amount
FROM payment
WHERE customer_id Between 380 AND 430
GROUP BY amount
Having Count (amount) > 250;

--#10
SELECT COUNT(rating), rating
FROM film
GROUP BY rating
