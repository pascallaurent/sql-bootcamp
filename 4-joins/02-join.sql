-- Inner join produces only the set of records that match in both payment and customer.
SELECT DISTINCT first_name, last_name FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id

-- Full outer join produces the set of all records in payment table and customer table, with matching records from both sides where available. If there is no match, the missing side will contain null.
SELECT DISTINCT first_name, last_name FROM payment
FULL OUTER JOIN customer
ON payment.customer_id = customer.customer_id

-- Left outer join produces a complete set of records from customer, with the matching records (where available) in film. If there is no match, the right side will contain null.
SELECT DISTINCT first_name, last_name, title FROM customer
LEFT OUTER JOIN film
ON customer.customer_id = film.release_year

--