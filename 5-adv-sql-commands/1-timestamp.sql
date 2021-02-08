/*
Timestamps and Extract
TIME - Contains Time only
DATE - Contains Date only
TIMESTAMP - Contains Date and Time
TIMESTAMPTZ - Contains date, time, and timezone
*/
SHOW ALL
SHOW TIMEZONE
SELECT NOW()
SELECT TIMEOFDAY()
SELECT CURRENT_TIME
SELECT CURRENT_DATE



-- AGE()
SELECT AGE(payment_date) AS year
FROM payment

-- TO_CHAR()
SELECT TO_CHAR(payment_date, 'MM/dd/YYYY')
FROM payment