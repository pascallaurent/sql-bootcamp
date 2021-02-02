-- Aggregate function
SELECT MIN(amount)
FROM payment
WHERE amount > 0.00

SELECT MAX(amount)
FROM payment
WHERE amount > 0.00

SELECT ROUND(AVG(amount), 2)
FROM payment

SELECT COUNT(*)
FROM payment