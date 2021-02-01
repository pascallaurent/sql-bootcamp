SELECT customer_id
FROM payment
ORDER BY payment_date ASC
LIMIT 10

SELECT title, length
FROM film
ORDER BY length ASC
LIMIT 5

SELECT COUNT(length)
FROM film
WHERE length <= 50