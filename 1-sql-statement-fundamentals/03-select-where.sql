-- A Customer name Nancy forgot her walet at our store.
-- We need the customer email address to inform her of the situation
SELECT email
FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas'

-- Give a customer the description of the movie
-- Outlaw Hanky
SELECT description
FROM film
WHERE title = 'Outlaw Hanky'

-- Get the phone number for the customer who lives
-- at 259 Ipoh Drive
SELECT phone
FROM address
WHERE address = '259 Ipoh Drive'

-- How many payment transactions were greater than $5.00
SELECT count(amount)
FROM payment
WHERE amount > 5.00;