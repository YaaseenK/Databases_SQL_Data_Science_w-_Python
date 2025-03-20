-- Aggregation Functions
-- 1. Write a query that calculates the total cost of all animal rescues in the PETRESCUE table.
-- USE FUNCTOIN SUM(COLUMN_NAME). THE OUTPUT WILL BE THE TOTAL CALUE OF ALL THE ELEMENTS IN THE COLUMN.

SELECT SUM(COST) FROM PETRESCUE;

-- you can further assign a label to the query SUM_OF_COST
SELECT SUM(COST) as 'Sum_of_cost' FROM PETRESCUE;

-- 2. Write a query that displays the maximum quantity of animals rescued (of any kind). 
-- We will use the function MAX(COLUMN_NAME). OUTPUT will be the max number of elements in the column
SELECT max(QUANTITY) from PETRESCUE;

-- The Query can easily be changed to display the minimum quanity using the min function INSTEAD
SELECT min(QUANTITY) from PETRESCUE;

-- 3. Write a query that displays the average cost of animals rescued
SELECT * FROM PETRESCUE;
-- for this query, we will use AVG(col_name).
SELECT AVG(COST) FROM PETRESCUE;