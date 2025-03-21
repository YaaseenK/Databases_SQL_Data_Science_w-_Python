-- Practice Problems

-- 1. Write a query that displays the average cost of rescuing a single dog.
-- Note that the cost per dog would not be the same in different instances.
SELECT * from Petrescue
Select AVG(COST/QUANTITY) as "AVG_DOG_COST"
from PETRESCUE 
where ANIMAL = "Dog";

-- 2. Write a query that displays the animal name in each rescue in uppercase without duplications.
SELECT upper(ANIMAL) from PETRESCUE;

-- 3. Write a query that displays all the columns from the PETRESCUE table where the animal(s) rescued are cats.
-- Use 'cat' in lowercase in the query.

-- 4. Write a query that displays the number of rescues in the 5th month.

-- 5. The rescue shelter is supposed to find good homes for all animals within 1 year of their rescue.
-- Write a query that displays the ID and the target date.
