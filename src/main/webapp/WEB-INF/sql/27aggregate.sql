-- aggregate function : 집합 함수, 그룹 함수
SELECT * FROM Products;
SELECT * FROM Products ORDER BY CategoryID, Price;

SELECT CategoryID, MAX(Price)
FROM Products
GROUP BY CategoryID;

SELECT CategoryID, MIN(Price)
FROM Products
GROUP BY CategoryID;

SELECT CategoryID, AVG(Price)
FROM Products
GROUP BY CategoryID;

SELECT CategoryID, SUM(Price)
FROM Products
GROUP BY CategoryID;

SELECT Country, COUNT(*)
FROM Customers
GROUP BY Country;

SELECT City, COUNT(*)
FROM Suppliers
GROUP BY City;

SELECT Country, City, COUNT(*)
FROM Customers
GROUP BY Country, City;

-- HAVING : 집합 함수 결과에 조건을 추가
SELECT Country, COUNT(*)
FROM Customers
GROUP BY Country
HAVING COUNT(*) > 5;

SELECT * FROM Products;

SELECT CategoryID, AVG(Price) average
FROM Products
Group By CategoryID
HAVING AVG(Price) > 30.00;

