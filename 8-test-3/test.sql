-- Retrieve all the information from the cd.facilities table
SELECT *
FROM cd.facilities

-- Print a list of all facilities and their cost to members
SELECT name, membercost
FROM cd.facilities
WHERE membercost > 0

-- List of facilities that charge a fee to memebers,
-- and that fee is less than 1/50th of the monthly maintenance cost
SELECT facid,
	   name,
	   membercost,
	   monthlymaintenance
FROM cd.facilities
WHERE membercost < (monthlymaintenance / 50.0) AND
	  membercost > 0