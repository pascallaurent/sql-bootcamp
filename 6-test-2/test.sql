/*
During which months did payments occur?
Format your answer to return back the full month name.
*/
SELECT DISTINCT TO_CHAR(payment_date, 'Month')
FROM payment


-- How many payments occurred on a monday
--
SELECT DISTINCT
	EXTRACT(dow from payment_date),
	TO_CHAR(payment_date, 'Day')
FROM payment

-- One way
SELECT COUNT(*)
FROM payment
WHERE TO_CHAR(payment_date, 'Day') LIKE 'M%'

-- Another way
SELECT COUNT(*)
FROM payment
WHERE EXTRACT(dow from payment_date) = 1
