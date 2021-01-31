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