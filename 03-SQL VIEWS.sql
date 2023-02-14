--ASSIGNMENT -5
--IN THE EMP TABLE DISPLAY :
--1 ) EID NAME CITY DOJ DEPT DESI SALARY OF THE DELHI EMPLOYEES
--2 ) DETAILS OF ALL THE EMPLOYEES WHOSE SALARY DETAILS ARE NOT AVAILABLE.

SELECT EMP.EID, NAME, CITY, DOJ, DEPT, DESI, SALARY as 'BASIC'    
FROM EMP
INNER JOIN EMP_SAL
ON EMP.EID = EMP_SAL.EID and CITY= 'DELHI';

                  --OR--

SELECT EMP.EID, NAME, CITY, DOJ, DEPT, DESI, SALARY as 'BASIC'      -- By WHERE condition 
FROM EMP
INNER JOIN EMP_SAL
ON EMP.EID = EMP_SAL.EID 
WHERE CITY= 'DELHI';


SELECT * from emp
LEFT JOIN EMP_SAL
ON EMP.EID = EMP_SAL.EID
WHERE EMP_SAL.SALARY IS NULL ;


--IN THE INVENTORY STRUCTURE DISPLAY :
--1) PID, PDESC, CATEGORY, SNAME, SCITY
--2 ) DISPLAY OID , ODATE , CNAME, CADDRESS, CPHONE, PDESC, PRICE,OQTY, AMT

SELECT PID, PDESC, CATEGORY, SNAME, SCITY
FROM PRODUCT
LEFT JOIN SUPPLIER
ON PRODUCT.SID = SUPPLIER.SID;



--ASSIGNMENT - 6
--1 ) CREATE A VIEW EMP SAL DETAILS TO GET EID NAME DOJ DEPT DESI SALARY
--AS BASIC. ALSO CALCULATE HRA (15% OF BASIC), PF (9% OF BASIC),
--NET(BASIC+HRA+PF), GROSS(NET-PF).

CREATE VIEW EMP_SAL_DET
AS
SELECT NAME, DOJ, DEPT, DESI, SALARY AS 'BASIC', SALARY*0.15 AS 'HRA', SALARY*0.9 AS 'PF',
(SALARY + (SALARY*0.15) + (SALARY*0.9)) AS 'NET' , ((SALARY + (SALARY*0.15) + (SALARY*0.9))-(SALARY*0.9)) AS 'GROSS'
FROM EMP
JOIN EMP_SAL
ON EMP.EID = EMP_SAL.EID;

SELECT * FROM EMP_SAL_DET;


--2) CREATE A VIEW TO DISPLAY EID,NAME, DOJ, DESI, DEPT OF ALL THE
--MANAGERS JOINED IN 2019.

CREATE VIEW MAN_19
AS
SELECT EMP.EID, NAME, DOJ, DESI, DEPT
FROM EMP
JOIN EMP_SAL
ON EMP.EID = EMP_SAL.EID
WHERE DESI LIKE '%MANAGER%' AND YEAR(DOJ)= '2019';


--3) IN THE INVENTORY STRUCTURE GENERATE A VIEW BILL. IT SHOULD DISPLAY
--OID, ODATE, CNAME, ADDRESS, PHONE, PRICE, OQTY, AMOUNT

CREATE VIEW VIEW_BILL
AS
SELECT OID, ODATE, CNAME, CADDRESS, PHONE, PDESC, PRICE, OQTY, PRICE * OQTY AS 'AMT' 
FROM ORDERS
JOIN CUST
ON ORDERS.CID = CUST.CID
JOIN PRODUCT
ON PRODUCT.PID = ORDERS.PID;


SELECT OID, ODATE, CNAME, CADDRESS, PHONE, PDESC, PRICE, OQTY, PRICE * OQTY AS 'AMT' 
FROM ORDERS
JOIN CUST
ON ORDERS.CID = CUST.CID
JOIN PRODUCT
ON PRODUCT.PID = ORDERS.PID;
