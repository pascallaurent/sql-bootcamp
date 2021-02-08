-- all movies return between 2005-06-29 and 2005-06-30
SELECT film_id, title
FROM film
WHERE film_id IN
(SELECT inventory.film_id
FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-06-29' AND '2005-06-30')
ORDER BY title

-- How many payments occurred on each day of the week
-- Using sub queries
SELECT
	TO_CHAR(payment_date, 'Day') AS Weekdays,
	COUNT(*) AS total_payments
FROM payment
WHERE TO_CHAR(payment_date, 'Day') IN (
SELECT DISTINCT TO_CHAR(payment_date, 'Day') FROM payment)
GROUP BY TO_CHAR(payment_date, 'Day')

-- But i think this one is cleaner
--
SELECT
	TO_CHAR(payment_date, 'Day') AS Weekdays,
	COUNT(*) AS total_payments
FROM payment
WHERE EXTRACT(dow from payment_date) IN (0, 1, 2, 3, 4, 6, 7)
GROUP BY TO_CHAR(payment_date, 'Day')

