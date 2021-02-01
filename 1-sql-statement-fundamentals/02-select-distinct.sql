-- we want to know the type of rating
-- we have in our database
SELECT DISTINCT(rating) FROM film

-- How many unique districts are our customers from
SELECT COUNT(DISTINCT(district)),
FROM address