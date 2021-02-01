-- How many actors have a first name that starts with the letter P
SELECT count(*)
FROM actor
WHERE first_name LIKE 'P%';

-- How many films have the word Truman somewhere in the title
SELECT COUNT(*)
FROM film
WHERE title LIKE '%Truman%'