/*
- California sales tax laws have chnaged and we need to alert our
custiomers to this through email. What are the emails of the
customers who live in California.
*/

SELECT first_name, last_name, email, district FROM customer
INNER JOIN address
ON customer.address_id = address.address_id
WHERE district = 'California'

/*
- A customer is a huge fan of actor "Nick Wahlberg" and wants to
know which movies he is in. Get a list of all the movies "Nick Wahlberg"
has been in?
*/

SELECT DISTINCT f.title, s.first_name, s.last_name FROM film as f
LEFT OUTER JOIN film_actor
ON f.film_id = film_actor.film_id
LEFT OUTER JOIN actor as s
ON s.actor_id = film_actor.actor_id
WHERE s.first_name = 'Nick' and s.last_name = 'Wahlberg'