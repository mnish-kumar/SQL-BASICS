CREATE DATABASE Queries;

USE Queries;

CREATE TABLE User(
	id INT PRIMARY KEY,
    age INT,
    name VARCHAR(100),
    Emails VARCHAR(50),
    Followers INT,
    Following INT
);

CREATE TABLE temp(
	user_id INT,
    post INT,
    postName VARCHAR(20),
    
    FOREIGN KEY (user_id) REFERENCES User(id)
);

-- Insert the value in databse
INSERT INTO user
(id , age , name , Emails , Followers , Following)
VALUES
(1 , 21 , "adam" , "john.doe@example.com" , 2 , 1),
(2 , 32 , "bob" , "jane.smith@testmail.com" , 22, 11),
(3 , 22 , "alice" , "mike.ross@fakemail.com" , 222 , 111),
(4 , 24 , "casey" , "alice.wonder@demo.net" , 2222 , 1111);

-- Update 
UPDATE User
SET Followers = 500
WHERE age > 18;
SET SQL_SAFE_UPDATES = 0;
SELECT *FROM User;

-- TABLE Queries

-- 1. ADD column
ALTER TABLE User
-- ADD COLUMN Qualification VARCHAR(20) DEFAULT "B.Tech";
ADD COLUMN City VARCHAR(10) DEFAULT "SITAMARHI";
SELECT *FROM User;

-- 2. DROP Column 
ALTER TABLE User
DROP COLUMN City;
SELECT *FROM User;

-- 3. RENAME Table
ALTER TABLE User
RENAME TO Instagram_Details;

ALTER TABLE Instagram_Details
RENAME TO User;

-- 4. CHANGE Column name
ALTER TABLE User
CHANGE COLUMN name Name VARCHAR(50);
SELECT *FROM User;



-- kisi specific colimn ko print krane ke liye
SELECT id , age, Emails FROM User;

-- table me jitna hai sab print ke liye
SELECT *FROM User;

-- Clause (WHERE) -> kiska followers 20 se jyada hai
SELECT *FROM User
WHERE Followers >= 20;



-- Logical operator use 
SELECT id , age , Emails
FROM User
WHERE age > 18 AND Followers > 200;


-- One data ke liye
SELECT id , age , Emails
FROM User
WHERE age > 18 OR Followers > 200;

-- Range ke bich ka data print ke liye
SELECT id , age , Emails
FROM User
WHERE age BETWEEN 15 AND 290;


-- LIMIT Clause
SELECT id , age , Followers
FROM User
WHERE age > 2 
LIMIT 2;

-- ORDER BY Clause
SELECT id , age , name
FROM User
ORDER BY age DESC;

-- Aggregate functions
-- find maximum followers
SELECT max(Followers)
FROM User;

SELECT count(age)
FROM User
WHERE age >= 18;

SELECT avg(Following)
FROM User;


-- group by
SELECT COUNT(name), max(Followers)
FROM User
GROUP BY age;

