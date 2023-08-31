SELECT *
FROM actor;

SELECT first_name, last_name
FROM actor;
--WHERE clause -- setting a condition for a query --
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

SELECT actor_id, first_name, last_name
FROM actor
WHERE actor_id = 2;

-- Query for actor names that are like nick
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';

--% wild card
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'L%';

--underscores place holder for potential match
SELECT first_name, last_name
FROM actor 
WHERE first_name LIKE 'L___';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'T_m';

SELECT first_name, last_name -- grabbing the columns
FROM actor --grabbing the tables
WHERE first_name LIKE 'L%e'; --clause for data retrieval

--Comparison Operatiors
--Greater Than, Less than, equal to, less than or equal to, greater than or equal to
-- not equal <>

--Query to explore data from the payment table
SELECT *
FROM payment;

--Query for customers who paid an amount greater than $3
SELECT DISTINCT (customer_id), amount 
FROM payment 
WHERE amount > 3.00;

SELECT customer_id, amount 
FROM payment 
WHERE amount > 3.00;

--Query for customers who paid under 7.99
SELECT DISTINCT (customer_id), amount
FROM payment
WHERE amount <7.99;

--Query for customers who paid at least 5.99 for a rental
SELECT DISTINCT customer_id, rental_id
FROM payment
WHERE amount >= 5.99;

-- customers who paid at most 2.99
SELECT customer_id, rental_id, amount
FROM payment
WHERE amount <= 2.99;

SELECT customer_id, rental_id, amount
FROM payment
WHERE amount <>= 2.99;


SELECT *
FROM payment
ORDER BY amount ASC; -- defaults to ascending

SELECT *
FROM payment
ORDER BY amount DESC;


SELECT *
FROM payment
ORDER BY amount DESC;
LIMIT 25; --limit to the first 25 rows of data

SELECT *
FROM payment
ORDER BY amount DESC;
LIMIT 25 OFFSET 100; --skips 100 rows of data and then gives the first 25 rows after that

--BETWEEN
--Query for customers that paid an amount between 2.99 and 7.99
--using WHERE, BETWEEN, AND
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 2.99 AND 7.99;

--SQL Aggregations -- SUM(), AVG(), COUNT(), MIN(), MAX(),
--SUM of amounts paid over 5.99
SELECT SUM(amount)
FROM payment
WHERE amount > 5.99;

SELECT SUM(amount)
FROM payment;

SELECT AVG(amount)
FROM payment;

SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

--Query for number of amounts paid
SELECT COUNT(DISTINCT amount)
FROM payment;

SELECT COUNT(amount)
FROM payment
WHERE amount > 5.99;

--Query for the smallest amount paid over 7.99
SELECT MIN(amount) AS min_payments
FROM payment 
WHERE amount > 7.99;

SELECT amount
FROM payment
WHERE amount > 7.99
ORDER BY amount --defaults to ASC
LIMIT 1;

SELECT amount AS dolladollabillsyall
FROM payment;

SELECT MAX(amount) AS largest_payment
FROM payment;

SELECT amount
FROM payment
ORDER BY amount DESC
LIMIT 1;

SELECT amount, COUNT(amount)
FROM payment
GROUP BY amount
ORDER BY amount;

--Query to show which customers paid the most for rentals
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 1;