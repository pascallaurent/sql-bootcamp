SELECT DISTINCT first_name, last_name
FROM customer AS c
WHERE EXISTS
(SELECT * FROM payment as p
 WHERE p.customer_id = c.customer_id
 AND p.amount > 10)