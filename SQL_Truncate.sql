--ASSIGNMENT - 3
--CREATE TWO TABLES EMP & EMP_SAL AS PER THE BELOW STRUCTURE:

--Field EID     Constraints
--EMPID         Primary Key
--NAME          NOT NULL
--ADDR          No employee from UTTAM NAGAR
--CITY          DEL, GGN, FBD, NOIDA
--PHNO          UNIQUE
--EMAIL         Should be on Gmail / Yahoo Domain
--DOB           <= '1-Jan-1990'

SELECT * FROM EMP_SAL

DROP TABLE EMP;       -- Drop a table
DROP TABLE EMP_SAL;

CREATE TABLE EMP
(EMPID CHAR(5) PRIMARY KEY,
NAME VARCHAR(50) NOT NULL,
ADDR VARCHAR(50) CHECK (ADDR NOT LIKE '%UTTAM NAGAR%') NOT NULL,
CITY VARCHAR(20) DEFAULT 'DEL' CHECK (CITY IN('DEL', 'GGN', 'FBD', 'NOIDA')) NOT NULL, -- Default city is 'DEL'
PHONE VARCHAR(15) UNIQUE,
EMAIL VARCHAR(40) CHECK (EMAIL LIKE '%GAMIL%' OR EMAIL LIKE '%YAHOO%') NOT NULL,
DOB DATE CHECK (DOB <='01-JAN-1990') NOT NULL);

------------------------------------------------------------------------------------------------------------------------------------------------------

--EMP SAL Table
--Field EID   Constraints
--EMPID       Foreign Key
--DEPT        HR, MIS, OPS , IT ADMIN, TEMP
--DESI        ASSO, MGR, VP, DIR
--BASIC       >=20000
--DOJ         -
    --By default DEPT should be TEMP

CREATE TABLE EMP_SAL
(EMPID CHAR(5) FOREIGN KEY REFERENCES EMP(EMPID),
DEPT VARCHAR(10) DEFAULT 'TEMP' CHECK(DEPT IN ('HR','MIS','IT','ADMIN','TEMP')),
DESI VARCHAR(20) CHECK(DESI IN ('ASSO','MGR','VP','DIR')) NOT NULL,
BASIC FLOAT CHECK( BASIC >=20000) NOT NULL,
DOJ DATE NOT NULL);

SELECT * FROM EMP_SAL;

------------------------------------------------------------------------------------------------------------------------------------------------------

-- ASSIGNMENT -4

--In the EMP table display :
--CITY WISE COUNT OF EMPLOYEES ARRANGED IN DESCENDING ORDFER
--DETAILS OF THE EMPLOYEES WHO DOES NOT HAVE AN ACCOUNT ON YAHOO DOMAIN

--From the Emp_SaI table display:
--DESIGNATION WISE TOTAL COST AND NUMBER OF MEMBERS ARRANGED IN DESCENDING ORDER OF THE TOTAL COST









