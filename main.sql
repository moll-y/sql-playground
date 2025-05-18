--
-- Exercise 5-2
--
-- Write a query that returns the title of every film in which an actor with
-- the first name JOHN appeared.
--
SELECT title
FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE actor.first_name = 'JOHN';

--
-- Exercise 5-3
--
-- Construct a query that returns all addresses that are in the same city. You
-- will need to join the address table to itself, and each row should include
-- two different addresses.
--
SELECT title
FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON actor.actor_id = film_actor.actor_id
WHERE actor.first_name = 'JOHN';

--
-- Exercise 5-3
--
-- Construct a query that returns all addresses that are in the same city. You
-- will need to join the address table to itself, and each row should include
-- two different addresses.
--
SELECT a1.address addr1, a2.address addr2, a1.city_id
FROM address AS a1
INNER JOIN address AS a2 ON a1.city_id = a2.city_id AND a1.address < a2.address;

--
-- Exercise 7-1
--
-- Write a query that returns the 17th through 25th characters of the string
-- 'Please find the substring in this string'.
--
SELECT SUBSTRING('Please find the substring in this string', 17, 9);

--
-- Exercise 7-2
--
-- Write a query that returns the absolute value and sign (-1, 0, 1) of the
-- number -25.768233. Also return the number rounded to the nearest hundredth.
--
SELECT ABS(-25.768233), SIGN(-25.768233), ROUND(-25.768233, 2);

--
-- Exercise 7-3
--
-- Write a query to return just the month portion of the current date. 
--
SELECT EXTRACT(MONTH FROM CURRENT_DATE());

--
-- Exercise 8-1
--
-- Construct a query that counts the number of rows in the payment table.
--
SELECT COUNT(*) FROM payment;

--
-- Exercise 8-2
--
-- Modify your query from Exercise 8-1 to count the number of payments made by
-- each customer. Show the customer ID and the total amount paid for each
-- customer.
--
SELECT customer_id, COUNT(*), SUM(amount)
FROM payment
GROUP BY customer_id;

--
-- Exercise 8-3
--
-- Modify your query from Exercise 8-2 to include only those customers who have
-- made at least 40 payments.
--
SELECT customer_id, COUNT(*), SUM(amount)
FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= 40;
