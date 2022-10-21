-- SUBQUERY : 쿼리가 다른 쿼리안에 작성될 수 있다.
SELECT ProductName,MAX(Price) FROM Products;
SELECT ProductName, Price FROM Products WHERE ProductName='Chais';

SELECT * FROM Products
WHERE Price = 
(SELECT MAX(Price) FROM Products);

SELECT * FROM Products
WHERE Price = 
(SELECT MIN(Price) FROM Products);

SELECT AVG(Price) FROM Products;

SELECT * FROM Products
WHERE Price > 
(SELECT AVG(Price) FROM Products);

SELECT * FROM Products
WHERE Price < 
(SELECT AVG(Price) FROM Products);

SELECT CategoryID, AVG(Price)
FROM Products
GROUP BY CategoryID;

SELECT * 
FROM
	(SELECT CategoryID, AVG(Price) average
	FROM Products
	GROUP BY CategoryID) A
WHERE average > 30;

