SELECT customer_id, SUM(amount) AS amount_spent
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) >= 110

SELECT COUNT(*) as films_start_with_letter_J
FROM film
WHERE title LIKE 'J%'