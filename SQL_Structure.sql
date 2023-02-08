--Table creation
--Inserting data
--Verifying the data

--ASSIGNMENT - 1

--Create a database DEMO

CREATE DATABASE DEMO;   -- Creating a database

USE DEMO;               -- Selecting a database to use

--Create table EMP with the following fields:
--EID NAME ADDR CITY DOB PHONE EMAIL id should be like 'EOOOI'
--Insert 10 appropriate records in the Emp table
--Use SELECT command to view the contents of emp table

CREATE TABLE EMP
(EID CHAR(5),
NAME VARCHAR(30),
ADDR VARCHAR(50),
CITY VARCHAR(20),
DOB DATE,
PHONE VARCHAR(15),
EMAIL VARCHAR(40));       --Creating a table in database

SELECT * FROM EMP;        -- To view all in a table

INSERT INTO EMP (EID, NAME, ADDR, CITY, DOB, PHONE, EMAIL)
VALUES('E0001', 'Aravind', 'Church street', 'Chennai', '10-21-1998', 9845515112,'aravind@gmail.com')    -- Insering a data to the table method 1

INSERT INTO EMP
VALUES('E0002', 'ARUN', 'HIGHWAY ROAD street', 'Chennai', '12-28-1997', 98455112512,'arun@gmail.com')
INSERT INTO EMP
VALUES('E0003', 'Senthil', 'Messi street', 'Madurai', '01-28-1997', 9845511289,'arun@gmail.com')
INSERT INTO EMP
VALUES('E0004', 'Guna', 'Garaga nagar', 'Theni', '01-25-1995', 984000289,'guna@hotmail.com'),
('E0005', 'Rajan', 'Thruveli manson', 'Karaikudi', '10-20-1998', 999890289,'rajan@hotmail.com')         -- Insering a data to the table method 2

INSERT INTO EMP VALUES
('E0006', 'Velu', 'Rajapal theru', 'Trichy', '11-10-1998', 999989889,'Velan@gmail.com'),
('E0007', 'Devan', 'Srivelli Nagar', 'Chennai', '09-10-1992', 898889889,'Devan@gmail.com'),
('E0008', 'Baskar', 'Bamboo Nagar', 'Chennai', '11-18-1992', 877885889,'Baskar@gmail.com'),
('E0009', 'Mamakutty', 'Higway street', 'Pondichery', '12-12-1995', 788785889,'mamakutty@gmail.com'),
('E0010', 'Revi', 'Alagu street', 'Chennai', '09-11-1996', 788787878,'Revi@gmail.com');                 -- Insering a data to the table method 3

Delete from emp
where eid in('e0006','e0007','e0008','e0009','e0010')                 -- Deleting a data

--Table creation
--Inserting data
--Verifying the data

--ASSIGNMENT - 2

--In the DEMO database create table EMP _ SAL with the following fields:
-- EID DEPT DESI DOJ SALARY
-- Insert 7 appropriate records in the EMP SAL table
-- Use SELECT command to view the contents of EMP SAL table
-- From the EMP table list all the employees with last name as Sharma.
-- Increase the salary of all Managers by 10%

CREATE TABLE EMP_SAL
(EID CHAR(5),
DEPT VARCHAR(15),
DESI VARCHAR(15),
DOJ DATE,
SALARY FLOAT)

SELECT * FROM EMP_SAL

INSERT INTO EMP_SAL VALUES
('E0001','IT','CEO','1-1-2020',1000000)

ALTER TABLE EMP_SAL
ALTER COLUMN DESI VARCHAR(30)         -- Altering the column with diffternt datatype

INSERT INTO EMP_SAL (EID, DEPT, DESI, DOJ, SALARY) VALUES 
('E0002','IT','HR MANAGER','2-2-2020',50000),
('E0003','IT','MANAGER','2-2-2020',50000),
('E0004','IT','SENIOR DEVELOPER','2-2-2020',40000),
('E0005','IT','SENIOR HR','5-2-2020',30000),
('E0006','IT','JUNIOR DEVELOPER','8-2-2020',20000),
('E0007','IT','TRAINEE','12-2-2020',15000)

SELECT * FROM EMP			-- SELECT EMP WHOS'S LAST LETTER ENDS WITH N
WHERE NAME LIKE '%N';       -- For Sharma '%Sharma'

UPDATE EMP_SAL SET SALARY = SALARY + (SALARY * 0.10) --INCREASE 10% SAL
WHERE DESI LIKE '%MANAGER%'; 




