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
-- is not valid in SQLite because SQLite does not support the DROP COLUMN command directly.
-- 
ALTER TABLE PETSALE
DROP COLUMN PROFIT;

SELECT * FROM PETSALE;

-- 3. Modify a column
-- 



