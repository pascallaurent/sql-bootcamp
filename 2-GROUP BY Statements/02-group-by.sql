/*
- We have two staff memebrs, with staff IDs 1 and 2. We want to give a bonus to the
staff member that handled the most payments. How many payments did each staff member
handle and who gets the bonus?
*/
SELECT staff_id, COUNT(*)
FROM payment
GROUP BY staff_id
ORDER BY COUNT(*) DESC


/*
- Corporate HQ is conducting a study on the relationship between replacement cost
and a movie MPAA rating (e.g. G, PG, R, etc..). What is the average replacement cost per
MPAA rating?
*/
SELECT rating, ROUND(AVG(replacement_cost), 2)
FROM film
GROUP BY rating

/*
- We are running a promotion to reward our top 5 customers with coupons. What are the
customer ids of the top 5 customers by total spend?
*/
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5

