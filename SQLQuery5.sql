﻿SELECT * FROM CUSTOMERS


--CATEGORY NAME, DESCRIPTION OF PRODUCTS BOUGHT BY AJAY(1001)

SELECT * FROM CATEGORIES
SELECT * FROM PRODUCTS
SELECT * FROM ORDERS



--CATEGORY NAME, DESCRIPTION OF PRODUCTS BOUGHT BY AJAY(1001)
SELECT  O.CUSTID,O.ORDERID  ,P.PNAME  ,CA.CNAME,CA.CDESCRIPTION
FROM CUSTOMERS C
INNER JOIN ORDERS O
ON C.CUSTID = O.CUSTID AND C.CUSTNAME='AJAY'
INNER JOIN PRODUCTS P
ON P.PID = O.PID
INNER JOIN CATEGORIES CA
ON P.CID = CA.CID



--CATEGORY NAME, DESCRIPTION OF PRODUCTS BOUGHT BY CHANDANA(1003)
SELECT  O.CUSTID,O.ORDERID  ,P.PNAME  ,CA.CNAME,CA.CDESCRIPTION
FROM CUSTOMERS C
INNER JOIN ORDERS O
ON C.CUSTID = O.CUSTID AND C.CUSTNAME='CHANDANA'
INNER JOIN PRODUCTS P
ON P.PID = O.PID
INNER JOIN CATEGORIES CA
ON P.CID = CA.CID


--NAMES OF THE CUTSOMERS WH0 BOUGHT THE PRODUCTS UNDER  CREAM->CATEGORYNAME


SELECT C.CUSTID,C.CUSTNAME,P.PID,CA.CNAME
FROM CUSTOMERS C
INNER JOIN ORDERS O
ON C.CUSTID=O.CUSTID
INNER JOIN PRODUCTS P
ON P.PID=O.PID
INNER JOIN CATEGORIES CA
ON CA.CID = P.CID AND CA.CNAME='CREAMS';





