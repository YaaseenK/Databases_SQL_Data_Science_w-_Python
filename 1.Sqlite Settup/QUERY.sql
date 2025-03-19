-- SQLite
-- CREATE statement
CREATE TABLE PETSALE (
        ID INTEGER NOT NULL,
        PET CHAR(20),
        SALEPRICE DECIMAL(6,2),
        PROFIT DECIMAL(6,2),
        SALEDATE DATE
        );

CREATE TABLE PET (
        ID INTEGER NOT NULL,
        ANIMAL VARCHAR(20),
        QUANTITY INTEGER
        );


-- INSERT statement

INSERT INTO PETSALE VALUES
        (1,'Cat',450.09,100.47,'2018-05-29'),
        (2,'Dog',666.66,150.76,'2018-06-01'),
        (3,'Parrot',50.00,8.9,'2018-06-04'),
        (4,'Hamster',60.60,12,'2018-06-11'),
        (5,'Goldfish',48.48,3.5,'2018-06-14');
        
INSERT INTO PET VALUES
        (1,'Cat',3),
        (2,'Dog',4),
        (3,'Hamster',2);

SELECT * FROM PETSALE;
SELECT * FROM PET;

-- ALTER statement [ADD, DELETE, OR MODIFY COLUMNS]

-- 1. Adding a column

-- Add a new column named QUANTITY to the PETSALE table and display the altered table.
ALTER TABLE PETSALE 
ADD COLUMN QUANTITY INTEGER;

SELECT * FROM PETSALE;


-- UPDATE THE NEWLY ADDED COLUMN OF PETSALE TABLE 
-- 

UPDATE PETSALE SET QUANTITY = 9 WHERE ID = 1;
UPDATE PETSALE SET QUANTITY = 3 WHERE ID = 2;
UPDATE PETSALE SET QUANTITY = 2 WHERE ID = 3;
UPDATE PETSALE SET QUANTITY = 6 WHERE ID = 4;
UPDATE PETSALE SET QUANTITY = 24 WHERE ID = 5;

SELECT * FROM PETSALE;

-- 2. Deleting a column
--  Delete the PROFIT from the PETSALE table
-- DROP is not valid in SQLite because SQLite does not support the DROP COLUMN command directly.
-- 
ALTER TABLE PETSALE
DROP COLUMN PROFIT;

SELECT * FROM PETSALE;

-- To remove the PROFIT column from PETSALE, follow these steps:
-- Step 1: Create a new table with the updated data type
CREATE TABLE PETSALE_NEW (
    OrderID INTEGER PRIMARY KEY,
    PET VARCHAR(20),
    SALE_DATE DATE,
    SALE_AMOUNT REAL
);

-- Step 2: Copy data from the old table to the new table
INSERT INTO PETSALE_NEW (OrderID, PET, SALE_DATE, SALE_AMOUNT)
SELECT OrderID, PET, SALE_DATE, SALE_AMOUNT FROM PETSALE;

-- Step 3: Drop the old table
DROP TABLE PETSALE;

-- Step 4: Rename the new table to match the old table's name
ALTER TABLE PETSALE_NEW RENAME TO PETSALE;

-- 3. Modify a column
-- CHANGE DATA TYPE VARCHAR(20) in PET COL 
--  MODIFY is not valid in SQLite because SQLite does not support the MODIFY COLUMN command directly.

ALTER TABLE PETSALE
MODIFY PET VARCHAR(20);
SELECT * FROM PETSALE;

-- If you want to modify the PET column's data type to VARCHAR(20), follow this approach:

-- Step 1: Create a new table with the updated data type
CREATE TABLE PETSALE_NEW (
    OrderID INTEGER PRIMARY KEY,
    PET VARCHAR(20),
    SALE_DATE DATE,
    SALE_AMOUNT REAL
);

-- Step 2: Copy data from the old table to the new table
INSERT INTO PETSALE_NEW (OrderID, PET, SALE_DATE, SALE_AMOUNT)
SELECT OrderID, PET, SALE_DATE, SALE_AMOUNT FROM PETSALE;

-- Step 3: Drop the old table
DROP TABLE PETSALE;

-- Step 4: Rename the new table to match the old table's name
ALTER TABLE PETSALE_NEW RENAME TO PETSALE;
